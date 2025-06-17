// ***************************************************************************/
//Microsemi Corporation Proprietary and Confidential
//Copyright 2016 Microsemi Corporation. All rights reserved.
//
//ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
//ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
//IN ADVANCE IN WRITING.
//
//Description:  CoreFFT
//              Streaming FFT modules
//
//Revision Information:
//Date         Description
//12Jan2010    Initial Release
//
//SVN Revision Information:
//SVN $Revision: $
//SVN $Data: $
//
//Resolved SARs
//SAR     Date    Who         Description
//
//Notes:
//
//10/12/2011  uRAM option added   //uram

`timescale 1 ns/100 ps


//   ____    __    ____  ____  _  _    ___     ____  ____  __   _  _
//  (  _ \  /__\  (  _ \(_  _)( \/ )  (__ \   (  _ \( ___)(  ) ( \/ )
//   )   / /(__)\  )(_) )_)(_  )  ( == / _/    ) _ < )__)  )(__ \  /
//  (_)\_)(__)(__)(____/(____)(_/\_)  (____)  (____/(__)  (____)(__)

module COREFFT_C0_COREFFT_C0_0_radix2(clkEn, clk, nGrst, rst,
    inp_im, inp_re, outp_im, outp_re, neg_outp_im, neg_outp_re,
    start, start_next, pre_start_next, ov, ov_next, ov_flag);
  parameter BITS_S    = 16;   // Bit width in scaled mode
  parameter BITS_U    = 16;   // Bit width in unscaled mode
  parameter SCALE_ON  = 0;
  parameter PTS       = 256;  // FFT size
  parameter LOG2PTS   = 8;
  parameter STAGE     = 1;
  parameter RADIX2_1  = 0;    // First or second radix2 bfly on a stage
  parameter DBUS_BITS = 19;
  // The last stage of a non-power-of-4 FFT runs only a single Radix2 bfly.
  // It must cut out 1 bit in SCALE_SCH mode. Note, for this stage the SCALE_SCH
  // ranges from 0 to 1 rather than to 3 on normal stages.
  parameter SCALE_DOWN        = 0;
  parameter [1:0] SCALE_SCH_B = 2'b10;
  parameter FPGA_FAMILY       = 19;
  parameter URAM_MAXDEPTH     = 0;
  parameter NO_RAM            = 0;

  localparam DATA_BITS = (SCALE_ON==0)? BITS_U : BITS_S;
  localparam DATAO_BITS = (SCALE_ON==0)? BITS_U : BITS_S-1;
  localparam SCALE_DOWNI = (SCALE_ON==0)? 0 : SCALE_DOWN;

  localparam NOMINAL_DLY = 1<<(LOG2PTS-STAGE); // 128-64-32-16-8-4-2-1
  //Num of pipe regs used in bfly: 1 @ the last stage, 2 otherwise
  localparam MINUS_PIPE = NOMINAL_DLY==1 ? 1 : 2;
  // On first and last physical bflies bypass input start delay
  localparam NBYPASS = STAGE==1 ? 0 : 1;

  // Delay btw start_next and the first valid bfly result used for OV gen
  localparam LAST_STAGE = (STAGE==LOG2PTS)? 1 : 0;
  localparam VALID_DLY  = (LAST_STAGE==1)? 0 : (RADIX2_1==0)? 2 : 3;

  input signed [DBUS_BITS-1:0] inp_im, inp_re;
  output [DBUS_BITS-1:0] outp_im, outp_re;
  output [DBUS_BITS-1:0] neg_outp_im, neg_outp_re;
  input nGrst, rst, clk, start, clkEn, ov;
  output start_next, ov_next, ov_flag, pre_start_next;

  reg run_timer;
  reg sel_tick;
  reg signed  [DATA_BITS-1:0] inp_im_tick, inp_re_tick;
  reg signed  [DATA_BITS-1:0] dlyout_im_tick, dlyout_re_tick;
  wire signed [DATA_BITS-1:0] sum_re, sum_im, diff_re, diff_im;
  wire signed [DATA_BITS-1:0] outp_rei, outp_imi, outp_reii, outp_imii;
  wire signed [DATA_BITS-1:0] sum_re_tick, sum_im_tick;
  wire signed [DATA_BITS-1:0] diff_re_tick, diff_im_tick;
  wire signed [DATA_BITS-1:0] dlyin_re, dlyin_im, dlyout_re, dlyout_im;
  wire signed [DATA_BITS-1:0] neg_outp_imi, neg_outp_rei;

  reg signed  [DATA_BITS-1:0] mux_outp_re_tick, mux_outp_im_tick;
  reg signed  [DATA_BITS-1:0] neg_mux_outp_re_tick, neg_mux_outp_im_tick;
  reg signed  [DATA_BITS-1:0] mux_dlyin_im_tick, mux_dlyin_re_tick;

  wire [DATA_BITS-1:0] rei_sel, imi_sel;
  wire [DATA_BITS-2:0] imi_selr, rei_selr;
  wire [DATA_BITS-1:0] inp_rei, inp_imi;
  wire local_ov_re, local_ov_im, local_ov;

  wire signed [DATA_BITS-1:0] mux_outp_re, mux_outp_im, mux_dlyin_re, mux_dlyin_im;

  // ------------------  State Machine  ----------------
  wire [LOG2PTS-1:0] timer;
  wire starti, sub_start_next, start_check_ov;

  kitDelay_bit_reg_fft_strm # (.DELAY(NBYPASS)) dly_bypass_0 (
    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .inp(start), .outp(starti) ) ;

  generate
    if(NOMINAL_DLY > 1) begin
      // Timer runs once on start, then waits for the next start
      kitCountS_fft_strm # ( .WIDTH(LOG2PTS),
                    .DCVALUE(NOMINAL_DLY-1),
                    .BUILD_DC(1) ) timer_0 (
        .nGrst(nGrst), .clk(clk), .clkEn(clkEn), .cntEn(run_timer),
        .rst(starti), .Q(timer),
        .dc(pre_start_next) );

      kitDelay_bit_reg_fft_strm # (.DELAY(1)) start_next_0 (
        .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
        .inp(pre_start_next), .outp(sub_start_next) ) ;
    end
    else begin
      // At NOMINAL_DLY==1 using the above circuit is wrong as zero detection
      // dc=(timer==0) causes the dc output to span from nGrst for long time
      // Taking advantage of the fact the last stage does not actually care when
      // the pre_start_next occurs
      kitCountS_fft_strm # ( .WIDTH(LOG2PTS),
                    .DCVALUE(NOMINAL_DLY),
                    .BUILD_DC(1) ) timer_1 (
        .nGrst(nGrst), .clk(clk), .clkEn(clkEn), .cntEn(run_timer),
        .rst(starti), .Q(timer),
        .dc(sub_start_next) );
      assign pre_start_next = sub_start_next;
    end
  endgenerate

  always @(negedge nGrst or posedge clk)
    if(nGrst==1'b0) begin
      run_timer <= 1'b0;
    end
    else
      if(clkEn)
        if(rst) begin
          run_timer <= 1'b0;
        end
        else  begin
          if(starti)
            run_timer <= 1'b1;
          else if(&timer == 1'b1)
            run_timer <= 1'b0;
        end
  // Timer ends

  always @(negedge nGrst or posedge clk)
    if(nGrst==1'b0)     sel_tick <= 1'b0;
    else if (clkEn)
      if(rst)           sel_tick <= 1'b0;
      else              sel_tick <= timer[LOG2PTS-STAGE];

//temp  kitDelay_bit_reg_fft_strm # (.DELAY(2)) dbg_temp_0 (
//temp    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(1'b1),
//temp    .inp(timer[LOG2PTS-STAGE]), .outp(sel_tick) ) ;

  // -------------  State machine ends  ----------------

  // Reduce oversized datapath input to the actual radix2 DATA_BITS
  assign inp_rei = inp_re[DATA_BITS-1:0];
  assign inp_imi = inp_im[DATA_BITS-1:0];

  always @(negedge nGrst or posedge clk)
    if(nGrst==1'b0) begin
      inp_re_tick <= 'b0;
      inp_im_tick <= 'b0;
      dlyout_re_tick <= 'b0;
      dlyout_im_tick <= 'b0;
    end
    else if (clkEn)
      if(rst) begin
        inp_re_tick <= 'b0;
        inp_im_tick <= 'b0;
        dlyout_re_tick <= 'b0;
        dlyout_im_tick <= 'b0;
      end
      else begin
        inp_re_tick <= inp_rei;
        inp_im_tick <= inp_imi;
        dlyout_re_tick <= dlyout_re;
        dlyout_im_tick <= dlyout_im;
      end

  COREFFT_C0_COREFFT_C0_0_dly_line # (.WIDTH(DATA_BITS),
          .PTS        (PTS        ),
          .LOG2PTS   (LOG2PTS   ),
          .STAGE      (STAGE      ),
          .NOMINAL_DLY(NOMINAL_DLY),
          .MINUS_PIPE (MINUS_PIPE ),
          .FPGA_FAMILY(FPGA_FAMILY),
          .URAM_MAXDEPTH(URAM_MAXDEPTH),
          .NO_RAM(NO_RAM)   )   dly_0
    ( .inp_im(dlyin_im),
      .inp_re(dlyin_re),
      .clkEn(clkEn),
      .outp_im(dlyout_im),
      .outp_re(dlyout_re),
      .nGrst(nGrst), .rst(rst),
      .clk(clk)     );

  // Calculate sum's and diff's of already sign extended addends
  assign sum_re  = dlyout_re + inp_rei;
  assign sum_im  = dlyout_im + inp_imi;
  assign diff_re = dlyout_re - inp_rei;
  assign diff_im = dlyout_im - inp_imi;

  kitDelay_reg_fft_strm # (.BITWIDTH(DATA_BITS), .DELAY(1) ) pipe_sumre_0 (
    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .inp(sum_re), .outp(sum_re_tick)  );
  kitDelay_reg_fft_strm # (.BITWIDTH(DATA_BITS), .DELAY(1) ) pipe_sumim_0 (
    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .inp(sum_im), .outp(sum_im_tick)  );

  kitDelay_reg_fft_strm # (.BITWIDTH(DATA_BITS), .DELAY(1) ) pipe_difre_0 (
    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .inp(diff_re), .outp(diff_re_tick)  );
  kitDelay_reg_fft_strm # (.BITWIDTH(DATA_BITS), .DELAY(1) ) pipe_difim_0 (
    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .inp(diff_im), .outp(diff_im_tick)  );

  // mux result into output and delay line
  assign mux_outp_re  = sel_tick ? sum_re_tick  : dlyout_re_tick;
  assign mux_outp_im  = sel_tick ? sum_im_tick  : dlyout_im_tick;
  assign mux_dlyin_re = sel_tick ? diff_re_tick : inp_re_tick;
  assign mux_dlyin_im = sel_tick ? diff_im_tick : inp_im_tick;

  // Use or bypass pipes behind mux depending on MINUS_PIPE
  generate
    if(MINUS_PIPE>1) begin: postmux_pipe   // use pipe behind a mux if possible
      always @(negedge nGrst or posedge clk) begin
        if(nGrst==1'b0) begin
          mux_outp_re_tick  <= 'b0;
          mux_outp_im_tick  <= 'b0;
          neg_mux_outp_re_tick  <= 'b0;
          neg_mux_outp_im_tick  <= 'b0;
          mux_dlyin_re_tick <= 'b0;
          mux_dlyin_im_tick <= 'b0;
        end
        else if (clkEn)
          if(rst==1'b1)  begin
            mux_outp_re_tick  <= 'b0;
            mux_outp_im_tick  <= 'b0;
            neg_mux_outp_re_tick  <= 'b0;
            neg_mux_outp_im_tick  <= 'b0;
            mux_dlyin_re_tick <= 'b0;
            mux_dlyin_im_tick <= 'b0;
          end
          else begin
            mux_outp_re_tick  <= mux_outp_re ;
            mux_outp_im_tick  <= mux_outp_im ;
            neg_mux_outp_re_tick  <= - mux_outp_re ;
            neg_mux_outp_im_tick  <= - mux_outp_im ;
            mux_dlyin_re_tick <= mux_dlyin_re;
            mux_dlyin_im_tick <= mux_dlyin_im;
          end
      end   // always

      assign dlyin_im = mux_dlyin_im_tick;
      assign dlyin_re = mux_dlyin_re_tick;
      assign outp_imi = mux_outp_im_tick;
      assign outp_rei = mux_outp_re_tick;
      assign neg_outp_imi = neg_mux_outp_im_tick;
      assign neg_outp_rei = neg_mux_outp_re_tick;
    end
    else    begin: no_postmux_pipe
      assign dlyin_im = mux_dlyin_im;
      assign dlyin_re = mux_dlyin_re;
      assign outp_imi = mux_outp_im;
      assign outp_rei = mux_outp_re;
      assign neg_outp_imi  = 'b0;
      assign neg_outp_rei  = 'b0;
    end
  endgenerate

  // Cut out a bit to return to the proper bit width of DATA_BITS-1 if this is
  // the last stage of a non-power-of-4 FFT. All other radix2 bflies do not do
  // any truncation
  generate if (SCALE_DOWNI!=0) begin: cut_a_bit
    // Drop MSB if set so, otherwise shift down by a bit
    assign imi_sel = (SCALE_SCH_B[0]==1'b0)? {outp_imi[DATA_BITS-2:0], 1'b0} :
                                                  outp_imi[DATA_BITS-1:0];
    assign rei_sel = (SCALE_SCH_B[0]==1'b0)? {outp_rei[DATA_BITS-2:0], 1'b0} :
                                                  outp_rei[DATA_BITS-1:0];

    // Detect the OV flag if SCALE_SCH_B[0]==0. Otherwise keep it 0
    assign local_ov_re = (SCALE_SCH_B[0]==1'b0)?
                          outp_rei[DATA_BITS-1] ^ outp_rei[DATA_BITS-2] : 1'b0;
    assign local_ov_im = (SCALE_SCH_B[0]==1'b0)?
                          outp_imi[DATA_BITS-1] ^ outp_imi[DATA_BITS-2] : 1'b0;
    assign local_ov = local_ov_re | local_ov_im;


    // Round the selected results
    kitRndUp_fft_strm # (.WIDTH_OUT(DATA_BITS-1), .RND_MODE (1)  ) rnd_im_0 (
        .nGrst(nGrst), .clk(clk), .rst(1'b0), .clkEn(clkEn),
        .inp(imi_sel),
        .valInp(sub_start_next), .outp(imi_selr), .valOutp(start_next) );
    kitRndUp_fft_strm # (.WIDTH_OUT(DATA_BITS-1), .RND_MODE (1)  ) rndHr_0 (
        .nGrst(nGrst), .clk(clk), .rst(1'b0), .clkEn(clkEn),
        .inp(rei_sel),
        .valInp(), .outp(rei_selr), .valOutp() );

    // Sign extend by a bit to keep the rounded bit width = DATA_BITS, the same
    // as the outp_re/imi when SCALE_DOWNI==0
    signExt_fft_strm # (.INWIDTH(DATA_BITS-1), .OUTWIDTH(DATA_BITS),
                                    .UNSIGNED(0)) signExt_re_0 (
      .inp(rei_selr), .outp(outp_reii)  );
    signExt_fft_strm # (.INWIDTH(DATA_BITS-1), .OUTWIDTH(DATA_BITS),
                                    .UNSIGNED(0)) signExt_im_0 (
      .inp(imi_selr), .outp(outp_imii)  );
  end
  endgenerate

  generate if (SCALE_DOWNI==0) begin: unscale_or_norm
    assign start_next = sub_start_next;
    assign outp_reii = outp_rei;
    assign outp_imii = outp_imi;
  end
  endgenerate

  // Sign extend datapath outputs to match the oversized data bus
  signExt_fft_strm # (.INWIDTH(DATA_BITS), .OUTWIDTH(DBUS_BITS),
                                    .UNSIGNED(0)) signExt_re_0 (
    .inp(outp_reii), .outp(outp_re)  );
  signExt_fft_strm # (.INWIDTH(DATA_BITS), .OUTWIDTH(DBUS_BITS),
                                    .UNSIGNED(0)) signExt_im_0 (
    .inp(outp_imii), .outp(outp_im)  );

  // Note, the final stage neg_outp_ isn't used, thus its value is neglected in
  // SCALE_DOWNI==1 mode
  signExt_fft_strm # (.INWIDTH(DATA_BITS), .OUTWIDTH(DBUS_BITS),
                                    .UNSIGNED(0)) signExt_neg_re_0 (
    .inp(neg_outp_rei), .outp(neg_outp_re)  );
  signExt_fft_strm # (.INWIDTH(DATA_BITS), .OUTWIDTH(DBUS_BITS),
                                    .UNSIGNED(0)) signExt_neg_im_0 (
    .inp(neg_outp_imi), .outp(neg_outp_im)  );

  // OV flag gen on many bflies is used just to convey the flag downstream.
  // Only the final radix2 stage can generate a local OV as well
  generate if (SCALE_ON!=0) begin: ov_flag_gen
    // Mark the time when the first computed result is about to be available
    kitDelay_bit_reg_fft_strm # (.DELAY(VALID_DLY)) can_check_ov_1 (
      .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
      .inp(start_next), .outp(start_check_ov) ) ;

    kitOv_fft_strm  # (.PTS(PTS), .LOGPTS(LOG2PTS) ) final_bfly_ov_0
      ( .nGrst(nGrst), .clk(clk), .clkEn(clkEn), .rst(rst),
        .local_ov(local_ov),
        //4/27/2016 .start_next(start_next),
        .start(start_check_ov),
        .ov(ov), .ov_next(ov_next),
        .ov_flag(ov_flag) );
    end
  endgenerate
  generate if (SCALE_ON==0) begin: no_ov
      assign ov_next=1'b0;
      assign ov_flag=1'b0;
    end
  endgenerate
  // ---------  State machine ends

endmodule


//                 ____  _    _  ____  ____  ____  __    ____
//                (_  _)( \/\/ )(_  _)(  _ \(  _ \(  )  ( ___)
//                  )(   )    (  _)(_  )(_) ))(_) ))(__  )__)
//                 (__) (__/\__)(____)(____/(____/(____)(____)

// Multiply by built-in twiddle factors and truncate back to DATA_BITS
module COREFFT_C0_COREFFT_C0_0_twiddle(inp_im, inp_re, outp_im, outp_re, inverse, inverse_next,
               clk, slowclk, clkEn, nGrst, rst, start, start_next,
               ov, ov_next, ov_flag, refresh, refresh_done);
  parameter DATA_BITS = 16;
  parameter TWID_BITS = 17;
  parameter PTS       = 256;
  parameter LOG2PTS   = 8;
  parameter STAGE     = 1;
  parameter SCALE_ON  = 0;
  parameter [1:0] SCALE_SCH_B = 2'b10;
  parameter FPGA_FAMILY = 12;
  parameter URAM_MAXDEPTH = 0;
  parameter NO_RAM    = 0;

  // Pick the wider multiplicand
  localparam BIGWIDTH = (DATA_BITS-1 > TWID_BITS)? DATA_BITS-1 : TWID_BITS;
  localparam SMALLWIDTH = (DATA_BITS-1 < TWID_BITS)? DATA_BITS-1 : TWID_BITS;

  localparam TWID_LTNCY = (BIGWIDTH<19)? 4 : (SMALLWIDTH > 18)? 10 : 6;

  input   [DATA_BITS-1:0] inp_im, inp_re;
  output  [DATA_BITS-1:0] outp_im, outp_re;
  input clk, slowclk, nGrst, rst, start, clkEn, inverse, ov, refresh;
  output start_next, ov_next, ov_flag, refresh_done;
  output inverse_next;

  wire[LOG2PTS-STAGE+1:0] twid_lut_rA;   // @ the stage 2, N twiddles are used
  wire  [TWID_BITS-1:0] tw_re, tw_im;
  wire   [TWID_BITS-1:0] twid_re, twid_im;
  wire local_ov, start_check_ov;

  //  ------------------  State machine  ------------------
  wire rst_timer, inversei;
  wire starti;

  // rA counter for twiddle LUT
  kitCountS_fft_strm # ( .WIDTH(LOG2PTS-STAGE+2), // At the stage 2, N twiddles are used
      .DCVALUE(1),
      .BUILD_DC(0) ) twid_lut_count_0 (
    .nGrst(nGrst), .clk(clk), .clkEn(clkEn),
    .rst(start),
    .cntEn(1'b1),
    .Q(twid_lut_rA), .dc() );

  // Generate start_next based on the cmplx mult pipe delay
  kitDelay_bit_reg_fft_strm # (.DELAY(2)) dly_bypass_0 (
    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .inp(start), .outp(starti) ) ;
  kitDelay_bit_reg_fft_strm # (.DELAY(TWID_LTNCY-1)) start_next_0 (
    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .inp(starti), .outp(start_next) ) ;
  //  ------------------  State machine ends  ------------------

  //  --------------  Combine local OV flag with previous ones  --------------
  generate if (SCALE_ON!=0) begin: ov_flag_gen
    // Mark the time when the first computed result is about to be available
    kitDelay_bit_reg_fft_strm # (.DELAY(1)) can_check_ov_1 (
      .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
      .inp(start_next), .outp(start_check_ov) ) ;

    kitOv_fft_strm  # (.PTS(PTS), .LOGPTS(LOG2PTS) ) twid_ov_0
      ( .nGrst(nGrst), .clk(clk), .clkEn(clkEn), .rst(rst),
        .local_ov(local_ov), .start(start_check_ov),
        .ov(ov), .ov_next(ov_next),
        .ov_flag(ov_flag) );
    end
  endgenerate
  generate if (SCALE_ON==0) begin: no_ov
      assign ov_next=1'b0;
      assign ov_flag=1'b0;
    end
  endgenerate
  //  ------------------  OV flag ends  ------------------


  //  -----------  Twiddle Phy or Simulation ROM  -------------
      COREFFT_C0_COREFFT_C0_0_twid_rom # (.TWID_BITS(TWID_BITS),
              .PTS(PTS),
              .STAGE(STAGE),
              .FPGA_FAMILY(FPGA_FAMILY),
              .URAM_MAXDEPTH(URAM_MAXDEPTH),
              .NO_RAM(NO_RAM) ) twid_rom_0 (
        .nGrst(nGrst), .rst(rst), .clk(clk), .slowclk(slowclk), .clkEn(clkEn),
        .rA(twid_lut_rA),
        .twid_im(twid_im), .twid_re(twid_re),
        .refresh(refresh), .refresh_done(refresh_done)  );


  // Latch and delay 'inverse' to aline it with the input data
  kitDelay_bit_reg_fft_strm # (.DELAY(1)) sub_0 (
    .nGrst(nGrst), .rst(1'b0), .clk(clk), .clkEn(starti),
    .inp(inverse), .outp(inversei) ) ;

  kitDelay_bit_reg_fft_strm # (.DELAY(1)) sub_1 (
    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(1'b1),
    .inp(inversei), .outp(inverse_next) ) ;

  // Complex Multiplier
  cmplx_rnd_fft_strm # (
      .DATA_BITS(DATA_BITS),
      .SCALE_ON (SCALE_ON),
      .SCALE_SCH_B(SCALE_SCH_B),
      .STAGE(STAGE),
      .TWID_BITS(TWID_BITS),
      .BIGWIDTH(BIGWIDTH),
      .SMALLWIDTH(SMALLWIDTH),
      .NOPIPE(0), .FPGA_FAMILY(FPGA_FAMILY)) cmplx_mult_0 (
    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn), .inverse(inverse_next),
    .Qi(inp_im), .Qr(inp_re),
    .Ti(twid_im), .Tr(twid_re),
    .Hi(outp_im), .Hr(outp_re),
    .local_ov(local_ov)   );

endmodule


module COREFFT_C0_COREFFT_C0_0_twiddle22 (inp_im, inp_re, outp_im, outp_re, inverse, inverse_next,
                  start, start_next, ov, ov_next, ov_flag, refresh, refresh_done,
                  clk, slowclk, nGrst, clkEn, rst);
  parameter BITS_S = 16;   // Data bit width in scaled mode
  parameter BITS_U = 16;   // Data bit width in unscaled mode
  parameter SCALE_ON  = 0;
  parameter [1:0] SCALE_SCH_B = 2'b10;
  parameter TWID_BITS = 17;
  parameter PTS       = 256;   // FFT size
  parameter LOG2PTS   = 8;
  parameter STAGE     = 1;
  parameter DBUS_BITS = 19;
  parameter FPGA_FAMILY   = 12;
  parameter URAM_MAXDEPTH = 0;
  parameter NO_RAM    = 0;

  localparam DATA_BITS = (SCALE_ON==0)? BITS_U : BITS_S;

  input   [DBUS_BITS-1:0] inp_im, inp_re;
  output  [DBUS_BITS-1:0] outp_im, outp_re;
  input clk, slowclk, nGrst, rst, start, clkEn, inverse, ov, refresh;
  output start_next, inverse_next, ov_next, ov_flag, refresh_done;

  wire [DATA_BITS-1:0] inp_rei, inp_imi, outp_rei, outp_imi;
  wire [DATA_BITS-3:0] Hi_sel, Hr_sel;
  wire [DATA_BITS-4:0] Hi_selr, Hr_selr;
  wire [DATA_BITS:0] Dim_2cut, Dre_2cut;
  wire local_ov;

  // Reduce oversized datapath input to the actual twiddle module DATA_BITS
  assign inp_rei = inp_re[DATA_BITS-1:0];
  assign inp_imi = inp_im[DATA_BITS-1:0];

  generate
    // Every Radix2^2 stage ends up applying twiddle multiplications except the
    // last stage if FFT size = power of 4. The last stage of FFT-16, 64, 256 &
    // 1024 does not apply the twiddles.
    // Below is a normal stage, the one that applies the twiddles
    if(STAGE < LOG2PTS) begin: norm_stage
      COREFFT_C0_COREFFT_C0_0_twiddle # (.DATA_BITS(DATA_BITS),
          .TWID_BITS(TWID_BITS),
          .PTS  (PTS  ),
          .LOG2PTS (LOG2PTS),
          .STAGE(STAGE),
          .SCALE_ON   (SCALE_ON),
          .SCALE_SCH_B(SCALE_SCH_B),
          .FPGA_FAMILY(FPGA_FAMILY),
          .URAM_MAXDEPTH(URAM_MAXDEPTH),
          .NO_RAM(NO_RAM) ) true_twiddle_0 (
        .inp_im(inp_imi), .inp_re(inp_rei), .outp_im(outp_imi), .outp_re(outp_rei),
        .start(start), .start_next(start_next), .inverse(inverse),
        .inverse_next(inverse_next),
        .ov(ov), .ov_next(ov_next), .ov_flag(ov_flag),
        .refresh(refresh), .refresh_done(refresh_done),
        .clk(clk), .slowclk(slowclk), .clkEn(clkEn), .nGrst(nGrst), .rst(rst));
    end
  endgenerate

  //  ----------------  The last power-of-4 Unscaled FFT stage  ----------------
  generate
    if( (STAGE >= LOG2PTS) && (SCALE_ON==0) ) begin: final_unscale_stage
      assign outp_imi = inp_imi;
      assign outp_rei = inp_rei;
      assign start_next = start;
      assign ov_next = 1'b0;
      assign ov_flag = 1'b0;
      assign refresh_done = refresh;
      assign inverse_next = 1'b0;
    end
  endgenerate

  //  ----------------  The last power-of-4 Scaled FFT stage  ----------------
  generate
    if( (STAGE >= LOG2PTS) && (SCALE_ON!=0) ) begin: final_scaled_stage
      assign refresh_done = refresh;

      kitDelay_bit_reg_fft_strm # (.DELAY(4)) start_0 (
        .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
        .inp(start), .outp(start_next) ) ;

      kitDelay_reg_fft_strm # (.BITWIDTH(DATA_BITS+1), .DELAY(3) ) dly_im_0 (
        .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
        .inp({inp_imi[DATA_BITS-1:0], 1'b0}), .outp(Dim_2cut)  );
      kitDelay_reg_fft_strm # (.BITWIDTH(DATA_BITS+1), .DELAY(3) ) dly_re_0 (
        .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
        .inp({inp_rei[DATA_BITS-1:0], 1'b0}), .outp(Dre_2cut)  );

      bit_cut_fft_strm # (.DATA_BITS(DATA_BITS), .SCALE_SCH_B(SCALE_SCH_B))
        bit_cut_0 (
        .clkEn(clkEn), .clk(clk), .nGrst(nGrst), .rst(rst),
        .Dim_2cut(Dim_2cut), .Dre_2cut(Dre_2cut),
        .local_ov(local_ov), // local OV detected inside the current module
        .Dim_out(outp_imi), .Dre_out(outp_rei)  );

      kitOv_fft_strm  # (.PTS(PTS), .LOGPTS(LOG2PTS) ) final_twid_ov_0
        ( .nGrst(nGrst), .clk(clk), .clkEn(clkEn), .rst(rst),
          .local_ov(local_ov),
          .start(start_next),
          .ov(ov), .ov_next(),
          .ov_flag(ov_flag) );

      assign ov_next = 1'b0;
    end
  endgenerate

  // Sign extend datapath outputs to match the oversized data bus
  signExt_fft_strm # (.INWIDTH(DATA_BITS), .OUTWIDTH(DBUS_BITS),
                                    .UNSIGNED(0)) signExt_re_0 (
    .inp(outp_rei), .outp(outp_re)  );
  signExt_fft_strm # (.INWIDTH(DATA_BITS), .OUTWIDTH(DBUS_BITS),
                                    .UNSIGNED(0)) signExt_im_0 (
    .inp(outp_imi), .outp(outp_im)  );

endmodule



//     ____  _    _  ____  ____  ____  __    ____    ____  _____  __  __
//    (_  _)( \/\/ )(_  _)(  _ \(  _ \(  )  ( ___)  (  _ \(  _  )(  \/  )
//      )(   )    (  _)(_  )(_) ))(_) ))(__  )__)    )   / )(_)(  )    (
//     (__) (__/\__)(____)(____/(____/(____)(____)  (_)\_)(_____)(_/\/\_)

// A Twiddle 'ROM'.  Internally initializes a suitable RAM block by copying
// COREFFT_C0_COREFFT_C0_0_twiddle_lut_stage_x.v onto it at low speed.  After init is over,
// it feels as a ROM
module COREFFT_C0_COREFFT_C0_0_twid_rom( nGrst, rst, clk, slowclk, clkEn,
              // ROM side
		          rA,
              twid_im,
              twid_re,
              // Initialization side
		          refresh,    // refresh twiddles = start another init cycle
		          refresh_done  );
  parameter TWID_BITS = 17;
  parameter PTS       = 256;
  parameter STAGE     = 1;
  parameter FPGA_FAMILY = 19;
  parameter URAM_MAXDEPTH = 0;
  parameter NO_RAM    = 0;

  localparam DIV_FREQ = 4;  // valid values: 2,4,8,16: freq1_4 = clk/DIV_FREQ
  localparam LOG_DIV_FREQ = ceil_log2(DIV_FREQ);
  localparam DEPTH = PTS>>(STAGE-2);
  localparam LOGDEPTH = ceil_log2(DEPTH);

  localparam FAM_G4 = ((FPGA_FAMILY==19) || (FPGA_FAMILY==24) || (FPGA_FAMILY==25))? 1 : 0;
  localparam FAM_G5 = ((FPGA_FAMILY==26)||(FPGA_FAMILY==27))? 1 : 0;

  input nGrst, rst, clk, slowclk, clkEn, refresh;
  input [LOGDEPTH-1:0] rA;
  output [TWID_BITS-1:0] twid_im, twid_re;
  output refresh_done;

  wire freq1_4, freq1_4_1;     // low frequency
  reg refr_sr, refri;
  reg refri1,refri_sync1,refri_sync,loading_twid1,loading_twid2;
  reg loading_twid;
  reg [LOGDEPTH-1:0] wA;
  wire [TWID_BITS-1:0] tw_im2write, tw_re2write;
  wire [2*TWID_BITS-1:0] tw_cmplx2write, twid_cmplx;

  wire [LOGDEPTH-1:0] one = {LOGDEPTH{1'b1}};
  // ---------  State Machine -------------

  // Generate low freq to use when initializing RAM
  // kitCountS_fft_strm # ( .WIDTH(LOG_DIV_FREQ), .DCVALUE(DIV_FREQ-1), .BUILD_DC(1) )
    // freq1_4_0 (
      // .nGrst(nGrst),
      // .rst(rst | refresh),
      // .clk(clk), .clkEn(1'b1), .cntEn(1'b1), .Q(), .dc(freq1_4_1) ); //(freq1_4) );

assign freq1_4 = slowclk;
  // Generate sequential wA, and loading_twid
  // Extend refresh to match freq1_4 domain
  always @(posedge clk or negedge nGrst )
    if (nGrst==1'b0) begin
 	    refr_sr         <= 1'b0;
        refri_sync1     <=  1'b0;
        refri_sync      <=  1'b0;
        loading_twid1   <=  1'b0;
        loading_twid2   <=  1'b0;
 	  end
    else begin
      refri_sync1   <= refri;
      refri_sync    <= refri_sync1;
      loading_twid1 <= loading_twid;
      loading_twid2 <= loading_twid1;
      if(refresh==1'b1)
        refr_sr <= 1'b1;
      else if(refri_sync==1'b1)
        refr_sr <= 1'b0;
    end

  always @(posedge freq1_4 or negedge nGrst )
    if (nGrst==1'b0) begin
 	    loading_twid <= 1'b0;
        wA      <= 'b0;
		refri   <= 1'b0;
		refri1  <= 1'b0;
 	  end
    else  begin
	  refri1 <= refr_sr;
	  refri <= refri1;
      if(refri==1'b1)
        loading_twid <= 1'b1;
      if(loading_twid==1'b1) begin
        wA  <= wA + 1;
        if(wA == DEPTH-1)
          loading_twid  <= 1'b0;
      end
    end

  // Generate refresh_done as a rear edge of the loading_twid
  kitEdge_fft_strm # (.REDGE(0)) refresh_done_0 (
      .nGrst(nGrst), .rst(rst), .clk(clk),
      .inp(loading_twid2),
      .outp(refresh_done) );
  // ---------  State Machine ends -------------


  //  ---------------------------------------------------------------------------
  //  --------------  Select the correct size LUT to copy From  -----------------
  //  ---------------------------------------------------------------------------
  generate
    if (STAGE==2) begin
      COREFFT_C0_COREFFT_C0_0_twidLut_stage_2 twiddle_lut_stage_2_0 (
        .index(wA),
        .twid_im(tw_im2write), .twid_re(tw_re2write) );
    end

    else if (STAGE==4) begin
      COREFFT_C0_COREFFT_C0_0_twidLut_stage_4 twiddle_lut_stage_4_0 (
        .index(wA),
        .twid_im(tw_im2write), .twid_re(tw_re2write) );
    end

    else if (STAGE==6) begin
      COREFFT_C0_COREFFT_C0_0_twidLut_stage_6 twiddle_lut_stage_6_0 (
        .index(wA),
        .twid_im(tw_im2write), .twid_re(tw_re2write) );
    end

    else if (STAGE==8) begin
      COREFFT_C0_COREFFT_C0_0_twidLut_stage_8 twiddle_lut_stage_8_0 (
        .index(wA),
        .twid_im(tw_im2write), .twid_re(tw_re2write) );
    end
	
	else if (STAGE==10) begin     //mad 4k
      COREFFT_C0_COREFFT_C0_0_twidLut_stage_10 twiddle_lut_stage_10_0 (
        .index(wA),
        .twid_im(tw_im2write), .twid_re(tw_re2write) );
    end
	
  endgenerate

  //---------------------------------------------------------------------------
  //-----------  Select the correct phy or simulation RAM to copy to  ---------
  //---------------------------------------------------------------------------
  generate
    if(NO_RAM!=1) begin: phy_ram
      COREFFT_C0_COREFFT_C0_0_twid_bridge2actgeno # (
          .TWID_BITS    (TWID_BITS    ),
          .DEPTH        (DEPTH        ),
          .LOGDEPTH     (LOGDEPTH     ),
          .STAGE        (STAGE        ),
          .FAM_G4       (FAM_G4       ),
          .FAM_G5       (FAM_G5       ),
          .URAM_MAXDEPTH(URAM_MAXDEPTH)   )   phy_twid_ram_0  (
        .clk(clk), .freq1_4(freq1_4), .loading_twid(loading_twid),
        .tw_im2write(tw_im2write), .tw_re2write(tw_re2write),
        .rA(rA), .wA(wA), .twid_im(twid_im), .twid_re(twid_re)  );
    end
    else    begin: simul_ram
      assign tw_cmplx2write = {tw_im2write, tw_re2write};
      assign twid_im = twid_cmplx[2*TWID_BITS-1:TWID_BITS];
      assign twid_re = twid_cmplx[TWID_BITS-1:0];

      RAM_fabric_fft_strm # (.BITWIDTH (2*TWID_BITS),
          .RAM_DEPTH(DEPTH), .RAM_LOGDEPTH(LOGDEPTH)  ) simul_twid_mem_0 (
        .nGrst(nGrst), .RCLOCK(clk), .WCLOCK(freq1_4),
        .WRB(loading_twid), .RDB(1'b1),
        .DI(tw_cmplx2write), .RADDR(rA), .WADDR(wA),
        .DO(twid_cmplx)   );
    end
  endgenerate

  // -----------------------------
  function [31:0] ceil_log2;
      input integer x;
      integer tmp, res;
    begin
      tmp = 1;
      res = 0;
      while (tmp < x) begin
        tmp = tmp * 2;
        res = res + 1;
      end
      ceil_log2 = res;
    end
  endfunction
endmodule


module COREFFT_C0_COREFFT_C0_0_twid_bridge2actgeno( clk, freq1_4, loading_twid,
        tw_im2write, tw_re2write,
        rA, wA, twid_im, twid_re);
  parameter TWID_BITS = 17;
  parameter DEPTH     = 256;
  parameter LOGDEPTH  = 8;
  parameter STAGE     = 1;
  parameter FAM_G4    = 0;
  parameter FAM_G5    = 1;
  parameter URAM_MAXDEPTH = 0;

  input clk, freq1_4, loading_twid;
  input [TWID_BITS-1:0] tw_im2write, tw_re2write;
  input [LOGDEPTH-1:0] wA, rA;
  output[TWID_BITS-1:0] twid_im, twid_re;

  wire [2*TWID_BITS-1:0] tw_cmplx2write, twid_cmplx;

  assign tw_cmplx2write = {tw_im2write, tw_re2write};
  assign twid_im = twid_cmplx[2*TWID_BITS-1:TWID_BITS];
  assign twid_re = twid_cmplx[TWID_BITS-1:0];

  generate
    //   ------------------  Select G4 or G5 LSRAM if appropriate  -----------------
    if ( (STAGE==2) && (FAM_G4==1) && (DEPTH>URAM_MAXDEPTH) )
      begin: stage2_twidROM_lsram
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_2_g4_L twid_ROM_stage_2_0 (
        .DI (tw_cmplx2write),
        .DO (twid_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (loading_twid),
        .RDB    (1'b1),
        .WCLOCK (freq1_4),
        .RCLOCK (clk)    );
      end

    else if ( (STAGE==2) && (FAM_G5==1) && (DEPTH>URAM_MAXDEPTH) )
      begin: stage2_twidROM_lsram
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_2_g5_L twid_ROM_stage_2_0 (
        .DI (tw_cmplx2write),
        .DO (twid_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (loading_twid),
        .RDB    (1'b1),
        .WCLOCK (freq1_4),
        .RCLOCK (clk)    );
      end

    else if ( (STAGE==4) && (FAM_G4==1) && (DEPTH>URAM_MAXDEPTH) )
      begin: stage4_twidROM_lsram
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_4_g4_L twid_ROM_stage_4_0 (
        .DI (tw_cmplx2write),
        .DO (twid_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (loading_twid),
        .RDB    (1'b1),
        .WCLOCK (freq1_4),
        .RCLOCK (clk)    );
      end

    else if ( (STAGE==4) && (FAM_G5==1) && (DEPTH>URAM_MAXDEPTH) )
      begin: stage4_twidROM_lsram
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_4_g5_L twid_ROM_stage_4_0 (
        .DI (tw_cmplx2write),
        .DO (twid_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (loading_twid),
        .RDB    (1'b1),
        .WCLOCK (freq1_4),
        .RCLOCK (clk)    );
      end

    else if ( (STAGE==6) && (FAM_G4==1) && (DEPTH>URAM_MAXDEPTH) )
      begin: stage6_twidROM_lsram
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_6_g4_L twid_ROM_stage_6_0 (
        .DI (tw_cmplx2write),
        .DO (twid_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (loading_twid),
        .RDB    (1'b1),
        .WCLOCK (freq1_4),
        .RCLOCK (clk)    );
      end

    else if ( (STAGE==6) && (FAM_G5==1) && (DEPTH>URAM_MAXDEPTH) )
      begin: stage6_twidROM_lsram
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_6_g5_L twid_ROM_stage_6_0 (
        .DI (tw_cmplx2write),
        .DO (twid_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (loading_twid),
        .RDB    (1'b1),
        .WCLOCK (freq1_4),
        .RCLOCK (clk)    );
      end

    else if ( (STAGE==8) && (FAM_G4==1) && (DEPTH>URAM_MAXDEPTH) )
      begin: stage8_twidROM_lsram
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_8_g4_L twid_ROM_stage_8_0 (
        .DI (tw_cmplx2write),
        .DO (twid_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (loading_twid),
        .RDB    (1'b1),
        .WCLOCK (freq1_4),
        .RCLOCK (clk)    );
      end

    else if ( (STAGE==8) && (FAM_G5==1) && (DEPTH>URAM_MAXDEPTH) )
      begin: stage8_twidROM_lsram
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_8_g5_L twid_ROM_stage_8_0 (
        .DI (tw_cmplx2write),
        .DO (twid_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (loading_twid),
        .RDB    (1'b1),
        .WCLOCK (freq1_4),
        .RCLOCK (clk)    );
      end
	  
	   else if ( (STAGE==10) && (FAM_G4==1) && (DEPTH>URAM_MAXDEPTH) )   //mad 4k
      begin: stage10_twidROM_lsram
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_10_g4_L twid_ROM_stage_10_0 (
        .DI (tw_cmplx2write),
        .DO (twid_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (loading_twid),
        .RDB    (1'b1),
        .WCLOCK (freq1_4),
        .RCLOCK (clk)    );
      end

    else if ( (STAGE==10) && (FAM_G5==1) && (DEPTH>URAM_MAXDEPTH) )  //mad 4k
      begin: stage10_twidROM_lsram
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_10_g5_L twid_ROM_stage_10_0 (
        .DI (tw_cmplx2write),
        .DO (twid_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (loading_twid),
        .RDB    (1'b1),
        .WCLOCK (freq1_4),
        .RCLOCK (clk)    );
      end

 else if ( (STAGE==12) && (FAM_G4==1) && (DEPTH>URAM_MAXDEPTH) )   //mad 4k
      begin: stage12_twidROM_lsram
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_12_g4_L twid_ROM_stage_12_0 (
        .DI (tw_cmplx2write),
        .DO (twid_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (loading_twid),
        .RDB    (1'b1),
        .WCLOCK (freq1_4),
        .RCLOCK (clk)    );
      end

    else if ( (STAGE==12) && (FAM_G5==1) && (DEPTH>URAM_MAXDEPTH) )   //mad 4k
      begin: stage12_twidROM_lsram
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_12_g5_L twid_ROM_stage_12_0 (
        .DI (tw_cmplx2write),
        .DO (twid_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (loading_twid),
        .RDB    (1'b1),
        .WCLOCK (freq1_4),
        .RCLOCK (clk)    );
      end
    //   ------------------  Select uRAM if appropriate  -----------------
    else if ( (STAGE==2) && (DEPTH<=URAM_MAXDEPTH) && (FAM_G4==1) )
      begin: stage2_twidROM_u
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_2_g4_u twid_ROM_stage_2_u (
        .rD(twid_cmplx),
        .B_DOUT(),
        .wD(tw_cmplx2write),
        .rAddr(rA),
        .B_ADDR(one),
        .wAddr(wA),
        .rBlk(1'b1),
        .B_BLK(1'b0),
        .wBlk(1'b1),
        .A_CLK (clk),
        .wClk(freq1_4),
        .wEn(loading_twid)   );
      end

    else if ( (STAGE==2) && (DEPTH<=URAM_MAXDEPTH) && (FAM_G5==1) )
      begin: stage2_twidROM_u
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_2_g5_u twid_ROM_stage_2_u (
        .rD(twid_cmplx),
        .wD(tw_cmplx2write),
        .rAddr(rA),
        .wAddr(wA),
        .rClk (clk),
        .wClk(freq1_4),
        .wEn(loading_twid)   );
      end

    else if ( (STAGE==4) && (DEPTH<=URAM_MAXDEPTH) && (FAM_G4==1) )
      begin: stage4_twidROM_u
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_4_g4_u twid_ROM_stage_4_u (
        .rD(twid_cmplx),
        .B_DOUT(),
        .wD(tw_cmplx2write),
        .rAddr(rA),
        .B_ADDR(one),
        .wAddr(wA),
        .rBlk(1'b1),
        .B_BLK(1'b0),
        .wBlk(1'b1),
        .A_CLK (clk),
        .wClk(freq1_4),
        .wEn(loading_twid)   );
      end

    else if ( (STAGE==4) && (DEPTH<=URAM_MAXDEPTH) && (FAM_G5==1) )
      begin: stage4_twidROM_u
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_4_g5_u twid_ROM_stage_4_u (
        .rD(twid_cmplx),
        .wD(tw_cmplx2write),
        .rAddr(rA),
        .wAddr(wA),
        .rClk (clk),
        .wClk(freq1_4),
        .wEn(loading_twid)   );
      end

    else if ( (STAGE==6) && (DEPTH<=URAM_MAXDEPTH) && (FAM_G4==1) )
      begin: stage6_twidROM_u
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_6_g4_u twid_ROM_stage_6_u (
        .rD(twid_cmplx),
        .B_DOUT(),
        .wD(tw_cmplx2write),
        .rAddr(rA),
        .B_ADDR(one),
        .wAddr(wA),
        .rBlk(1'b1),
        .B_BLK(1'b0),
        .wBlk(1'b1),
        .A_CLK (clk),
        .wClk(freq1_4),
        .wEn(loading_twid)   );
      end

    else if ( (STAGE==6) && (DEPTH<=URAM_MAXDEPTH) && (FAM_G5==1) )
      begin: stage6_twidROM_u
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_6_g5_u twid_ROM_stage_6_u (
        .rD(twid_cmplx),
        .wD(tw_cmplx2write),
        .rAddr(rA),
        .wAddr(wA),
        .rClk (clk),
        .wClk(freq1_4),
        .wEn(loading_twid)   );
      end

    else if ( (STAGE==8) && (DEPTH<=URAM_MAXDEPTH) && (FAM_G4==1) )
      begin: stage8_twidROM_u
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_8_g4_u twid_ROM_stage_8_u (
        .rD(twid_cmplx),
        .B_DOUT(),
        .wD(tw_cmplx2write),
        .rAddr(rA),
        .B_ADDR(one),
        .wAddr(wA),
        .rBlk(1'b1),
        .B_BLK(1'b0),
        .wBlk(1'b1),
        .A_CLK (clk),
        .wClk(freq1_4),
        .wEn(loading_twid)   );
      end

    else if ( (STAGE==8) && (DEPTH<=URAM_MAXDEPTH) && (FAM_G5==1) )
      begin: stage8_twidROM_u
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_8_g5_u twid_ROM_stage_8_u (
        .rD(twid_cmplx),
        .wD(tw_cmplx2write),
        .rAddr(rA),
        .wAddr(wA),
        .rClk (clk),
        .wClk(freq1_4),
        .wEn(loading_twid)   );
      end
	  
	  else if ( (STAGE==10) && (DEPTH<=URAM_MAXDEPTH) && (FAM_G4==1) )
      begin: stage10_twidROM_u
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_10_g4_u twid_ROM_stage_10_u (
        .rD(twid_cmplx),
        .B_DOUT(),
        .wD(tw_cmplx2write),
        .rAddr(rA),
        .B_ADDR(one),
        .wAddr(wA),
        .rBlk(1'b1),
        .B_BLK(1'b0),
        .wBlk(1'b1),
        .A_CLK (clk),
        .wClk(freq1_4),
        .wEn(loading_twid)   );
      end

    else if ( (STAGE==10) && (DEPTH<=URAM_MAXDEPTH) && (FAM_G5==1) )
      begin: stage10_twidROM_u
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_10_g5_u twid_ROM_stage_10_u (
        .rD(twid_cmplx),
        .wD(tw_cmplx2write),
        .rAddr(rA),
        .wAddr(wA),
        .rClk (clk),
        .wClk(freq1_4),
        .wEn(loading_twid)   );
      end
	  
	  else if ( (STAGE==12) && (DEPTH<=URAM_MAXDEPTH) && (FAM_G4==1) )
      begin: stage12_twidROM_u
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_12_g4_u twid_ROM_stage_12_u (
        .rD(twid_cmplx),
        .B_DOUT(),
        .wD(tw_cmplx2write),
        .rAddr(rA),
        .B_ADDR(one),
        .wAddr(wA),
        .rBlk(1'b1),
        .B_BLK(1'b0),
        .wBlk(1'b1),
        .A_CLK (clk),
        .wClk(freq1_4),
        .wEn(loading_twid)   );
      end

    else if ( (STAGE==12) && (DEPTH<=URAM_MAXDEPTH) && (FAM_G5==1) )
      begin: stage12_twidROM_u
      COREFFT_C0_COREFFT_C0_0_pipeFFT_twid_12_g5_u twid_ROM_stage_12_u (
        .rD(twid_cmplx),
        .wD(tw_cmplx2write),
        .rAddr(rA),
        .wAddr(wA),
        .rClk (clk),
        .wClk(freq1_4),
        .wEn(loading_twid)   );
      end
	  
  endgenerate

endmodule



//   ____  ____  ____    ____  ____  _  _    ____    __    __  __
//  (  _ \(_  _)(_  _)  (  _ \( ___)( \/ )  (  _ \  /__\  (  \/  )
//   ) _ < _)(_   )(     )   / )__)  \  /    )   / /(__)\  )    (
//  (____/(____) (__)   (_)\_)(____)  \/    (_)\_)(__)(__)(_/\/\_)

module COREFFT_C0_COREFFT_C0_0_bitrev_ram( nGrst, rst, clk, clkEn,
              inp_im, inp_re,
              inp_ready,
              inp_valid,
              outp_im, outp_re,
              outp_ready,
              outp_valid,
              ovflow,
              ovflow_flag    );
  parameter DATA_BITS = 17;
  parameter PTS       = 256;
  parameter LOG2PTS   = 8;
  parameter ORDER     = 0;
  parameter FPGA_FAMILY = 19;
  parameter URAM_MAXDEPTH = 0;
  parameter NO_RAM    = 0;

  input nGrst, rst, clk, clkEn, inp_ready, inp_valid;
  input  [DATA_BITS-1:0] inp_im, inp_re;
  input ovflow;
  output [DATA_BITS-1:0] outp_im, outp_re;
  output outp_ready, outp_valid;
  output ovflow_flag;

  reg outp_valid_r, pong_read;
  reg ovflow_latch, ovflow_latch_t;
  wire[LOG2PTS-1:0] wA, rA, bitrev_rA;
  wire[2*DATA_BITS-1:0] inp_cmplx, ping_cmplx, pong_cmplx, outp_cmplx;
  wire rst_wA, pong_write, wEn_ping, wEn_pong, write_done_w, read_done;
  wire pong_read_tick2, read_done_tick2;

  wire[LOG2PTS-1:0] one = {LOG2PTS{1'b1}};

  generate
    if(ORDER==0) begin: dont_reverse
      assign outp_im = inp_im;
      assign outp_re = inp_re;
      assign outp_ready = inp_ready;
      assign outp_valid = inp_valid;
      assign ovflow_flag = ovflow;
    end
    else        begin: reverse_bits
      assign rst_wA = rst | inp_ready;
      assign inp_cmplx = {inp_im, inp_re};
      assign outp_im = outp_cmplx[2*DATA_BITS-1:DATA_BITS];
      assign outp_re = outp_cmplx[DATA_BITS-1:0];

      assign wEn_pong = pong_write  & inp_valid;
      assign wEn_ping = ~pong_write & inp_valid;
      assign outp_valid = outp_valid_r;
      assign ovflow_flag = ovflow_latch_t;

      // Write addr counter
      kitCountS_fft_strm # ( .WIDTH(LOG2PTS), .DCVALUE(PTS-1),
                .BUILD_DC(1) ) wA_0 (
        .nGrst(nGrst), .rst(rst_wA), .clk(clk), .clkEn(clkEn),
        .cntEn(inp_valid), .Q(wA), .dc(write_done_w) );

      kitDelay_bit_reg_fft_strm # (.DELAY(2)) write_done_0 (
        .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
        .inp(write_done_w), .outp(outp_ready) ) ;

      kitCountS_fft_strm # ( .WIDTH(LOG2PTS), .DCVALUE(PTS-1),
                .BUILD_DC(1) ) rA_0 (
        .nGrst(nGrst), .rst(write_done_w), .clk(clk), .clkEn(clkEn),
        .cntEn(1'b1), .Q(bitrev_rA), .dc(read_done) );

      bit_reverse_fft_strm # (.WIDTH(LOG2PTS)) bit_reverse_0 (
        .bit_direct(bitrev_rA), .bit_reverse(rA) );

      always @(negedge nGrst or posedge clk)
        if(nGrst==1'b0) begin
          outp_valid_r  <= 1'b0;
          pong_read     <= 1'b0;
          ovflow_latch    <= 1'b0;
          ovflow_latch_t  <= 1'b0;
        end
        else if (clkEn) begin
          if(rst) begin
            outp_valid_r  <= 1'b0;
            pong_read     <= 1'b0;
            ovflow_latch    <= 1'b0;
            ovflow_latch_t  <= 1'b0;
          end
          else  begin
            // pong_read follows pong_write for the read cycle
            if(write_done_w==1'b1)
              pong_read <= pong_write;
            if(outp_ready==1'b1) begin
              outp_valid_r  <= 1'b1;
            end
            else if (read_done_tick2==1'b1)
              outp_valid_r <= 1'b0;

            // Delay overflow flag to match the ordered output
            if(write_done_w==1'b1)
              ovflow_latch <= ovflow;
            if(outp_ready==1'b1)
              ovflow_latch_t <= ovflow_latch;
          end
        end

      kitDelay_bit_reg_fft_strm # (.DELAY(2)) read_time_0 (
        .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
        .inp(pong_read), .outp(pong_read_tick2) ) ;

      kitDelay_bit_reg_fft_strm # (.DELAY(2)) read_done_0 (
        .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
        .inp(read_done), .outp(read_done_tick2) ) ;

      // Ping-pong flop
      kitCountS_fft_strm # ( .WIDTH(1), .DCVALUE(1),
                .BUILD_DC(0) ) pong_0 (
        .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
        .cntEn(inp_ready), .Q(pong_write), .dc() );

      assign outp_cmplx = (pong_read_tick2==1'b1) ? pong_cmplx : ping_cmplx;

      COREFFT_C0_COREFFT_C0_0_bitrev_bridge2actgeno # (
          .DATA_BITS    (DATA_BITS),
          .PTS          (PTS),
          .LOG2PTS      (LOG2PTS),
          .FPGA_FAMILY  (FPGA_FAMILY),
          .URAM_MAXDEPTH(URAM_MAXDEPTH),
          .NO_RAM       (NO_RAM)    ) phy_bitrev_ram_0 (
        .nGrst(nGrst), .clk(clk), .wEn_ping(wEn_ping), .wEn_pong(wEn_pong),
        .inp_cmplx(inp_cmplx), .rA(rA), .wA(wA),
        .ping_cmplx(ping_cmplx), .pong_cmplx(pong_cmplx)  );

    end
  endgenerate
endmodule

module COREFFT_C0_COREFFT_C0_0_bitrev_bridge2actgeno( nGrst, clk,
      inp_cmplx, ping_cmplx, pong_cmplx, rA, wA, wEn_ping, wEn_pong);
  parameter DATA_BITS   = 17;
  parameter PTS         = 256;
  parameter LOG2PTS     = 8;
  parameter FPGA_FAMILY = 19;
  parameter URAM_MAXDEPTH = 0;
  parameter NO_RAM      = 0;

  input nGrst, clk;
  input wEn_ping, wEn_pong;
  input [2*DATA_BITS-1:0] inp_cmplx;
  input [LOG2PTS-1:0] wA, rA;
  output [2*DATA_BITS-1:0] ping_cmplx, pong_cmplx;

  generate if (NO_RAM==1)   begin: simul_mem
    RAM_fabric_fft_strm # (.BITWIDTH (2*DATA_BITS),
          .RAM_DEPTH(PTS), .RAM_LOGDEPTH(LOG2PTS)  ) simul_bitrev_ping_mem_0 (
        .nGrst(nGrst), .RCLOCK(clk), .WCLOCK(clk),
        .WRB(wEn_ping), .RDB(1'b1),
        .DI(inp_cmplx), .RADDR(rA), .WADDR(wA),
        .DO(ping_cmplx)   );
    RAM_fabric_fft_strm # (.BITWIDTH (2*DATA_BITS),
          .RAM_DEPTH(PTS), .RAM_LOGDEPTH(LOG2PTS)  ) simul_bitrev_pong_mem_0 (
        .nGrst(nGrst), .RCLOCK(clk), .WCLOCK(clk),
        .WRB(wEn_pong), .RDB(1'b1),
        .DI(inp_cmplx), .RADDR(rA), .WADDR(wA),
        .DO(pong_cmplx)   );
    end
  endgenerate

  generate
    if ((FPGA_FAMILY==12) && (NO_RAM!=1))   begin: bitrev_ram_L_rtax
      COREFFT_C0_COREFFT_C0_0_pipeFFT_bit_rev0 ping_ram_L0 (
        .DI (inp_cmplx),
        .DO (ping_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (wEn_ping),
        .RDB    (1'b1),
        .WCLOCK (clk),
        .RCLOCK (clk)    );

      COREFFT_C0_COREFFT_C0_0_pipeFFT_bit_rev0 pong_ram_L1 (
        .DI (inp_cmplx),
        .DO (pong_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (wEn_pong),
        .RDB    (1'b1),
        .WCLOCK (clk),
        .RCLOCK (clk)    );
    end
  endgenerate

  generate
    if ( ((FPGA_FAMILY==19) || (FPGA_FAMILY==24) || (FPGA_FAMILY==25)) &&
          (PTS > URAM_MAXDEPTH) && (NO_RAM!=1))   begin: bitrev_ram_g4_L
      COREFFT_C0_COREFFT_C0_0_pipeFFT_bit_rev0_g4_L ping_ram_L0 (
        .DI (inp_cmplx),
        .DO (ping_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (wEn_ping),
        .RDB    (1'b1),
        .WCLOCK (clk),
        .RCLOCK (clk)    );

      COREFFT_C0_COREFFT_C0_0_pipeFFT_bit_rev0_g4_L pong_ram_L1 (
        .DI (inp_cmplx),
        .DO (pong_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (wEn_pong),
        .RDB    (1'b1),
        .WCLOCK (clk),
        .RCLOCK (clk)    );
    end
  endgenerate

  generate
    if ( ((FPGA_FAMILY==26)||(FPGA_FAMILY==27)) && (PTS > URAM_MAXDEPTH) && (NO_RAM!=1) )   begin: bitrev_ram_g5_L
      COREFFT_C0_COREFFT_C0_0_pipeFFT_bit_rev0_g5_L ping_ram_L0 (
        .DI (inp_cmplx),
        .DO (ping_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (wEn_ping),
        .RDB    (1'b1),
        .WCLOCK (clk),
        .RCLOCK (clk)    );

      COREFFT_C0_COREFFT_C0_0_pipeFFT_bit_rev0_g5_L pong_ram_L1 (
        .DI (inp_cmplx),
        .DO (pong_cmplx),
        .WADDR  (wA),
        .RADDR  (rA),
        .WRB    (wEn_pong),
        .RDB    (1'b1),
        .WCLOCK (clk),
        .RCLOCK (clk)    );
    end
  endgenerate

  generate
    if (((FPGA_FAMILY==19) || (FPGA_FAMILY==24) || (FPGA_FAMILY==25)) &&
        (PTS <= URAM_MAXDEPTH)  && (NO_RAM!=1)) begin: bitrev_ram_g4_u
      COREFFT_C0_COREFFT_C0_0_pipeFFT_bit_rev0_g4_u ping_ram_u0 (
        .rD(ping_cmplx),
        .B_DOUT(),
        .wD(inp_cmplx),
        .rAddr(rA),
        .B_ADDR(one),
        .wAddr(wA),
        .rBlk(1'b1),
        .B_BLK(1'b0),
        .wBlk(1'b1),
        .A_CLK (clk),
        .wClk(clk),
        .wEn(wEn_ping)   );

      COREFFT_C0_COREFFT_C0_0_pipeFFT_bit_rev0_g4_u pong_ram_u1 (
        .rD(pong_cmplx),
        .B_DOUT(),
        .wD(inp_cmplx),
        .rAddr(rA),
        .B_ADDR(one),
        .wAddr(wA),
        .rBlk(1'b1),
        .B_BLK(1'b0),
        .wBlk(1'b1),
        .A_CLK (clk),
        .wClk(clk),
        .wEn(wEn_pong)   );
    end
  endgenerate

  generate
    if (((FPGA_FAMILY==26)||(FPGA_FAMILY==27)) && (PTS <= URAM_MAXDEPTH)  && (NO_RAM!=1)) begin: bitrev_ram_g5_u
      COREFFT_C0_COREFFT_C0_0_pipeFFT_bit_rev0_g5_u ping_ram_u0 (
        .rD(ping_cmplx),
        .wD(inp_cmplx),
        .rAddr(rA),
        .wAddr(wA),
        .rClk(clk),
        .wClk(clk),
        .wEn(wEn_ping)   );

      COREFFT_C0_COREFFT_C0_0_pipeFFT_bit_rev0_g5_u pong_ram_u1 (
        .rD(pong_cmplx),
        .wD(inp_cmplx),
        .rAddr(rA),
        .wAddr(wA),
        .rClk(clk),
        .wClk(clk),
        .wEn(wEn_pong)   );
    end
  endgenerate

endmodule
