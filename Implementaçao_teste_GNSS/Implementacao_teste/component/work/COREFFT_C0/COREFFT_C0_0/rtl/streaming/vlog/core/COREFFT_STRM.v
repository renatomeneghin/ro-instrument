// ***************************************************************************/
//Microsemi Corporation Proprietary and Confidential
//Copyright 2016 Microsemi Corporation. All rights reserved.
//
//ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
//ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
//IN ADVANCE IN WRITING.
//
//Description:  CoreFFT
//              Streaming FFT top level module
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
//  4/7/2011    refresh Any Refresh except the initial one is transparent
// 10/14/2011   g4 support (uRAM)
//  3/31/2016   G5 and improved scaling   sc

`timescale 1 ns/100 ps

module COREFFT_C0_COREFFT_C0_0_COREFFT_STRM (DATAI_IM, DATAI_RE, DATAO_IM, DATAO_RE,
                   CLK, CLKEN, SLOWCLK, NGRST, RST,
                   START,
                   OUTP_READY,
                   DATAO_VALID,
                   RFS,     // req for START
                   INVERSE,
                   OVFLOW_FLAG,
                   REFRESH);
  parameter DATA_BITS = 16;
  parameter TWID_BITS = 17;
  parameter FFT_SIZE  = 256;
  parameter SCALE_ON  = 1;
  parameter DATAO_BITS    = 37;
  parameter SCALE_SCH = 255;
  parameter ORDER     = 0;
  parameter FPGA_FAMILY   = 12;
  parameter URAM_MAXDEPTH = 0;
  parameter NO_RAM    = 0;
  localparam LOG2PTS = ceil_log2(FFT_SIZE);
  // FFT_SIZE  :1024   512  256  128   64   32   16
  // LOG2PTS   :  10     9    8    7    6    5    4
  // MAX22STAGE:   5     4    4    3    3    2    2  Num of full Radix-4 stages
  localparam MAX22STAGE = LOG2PTS >> 1; // Number of full Radix-4 stages
  // Non-power-of-4 FFT's
  localparam NP4 = LOG2PTS - 2*MAX22STAGE;
  localparam [12:0] SCALE_SCH_B = SCALE_SCH;
  localparam DBUS_BITS = (SCALE_ON==0)? DATA_BITS+1+LOG2PTS : DATA_BITS+3;

  input [DATA_BITS-1:0] DATAI_IM, DATAI_RE;
  output [DATAO_BITS-1:0] DATAO_IM, DATAO_RE;
  input CLK, SLOWCLK, NGRST, RST, START, CLKEN, INVERSE, REFRESH;
  output OUTP_READY, DATAO_VALID, RFS, OVFLOW_FLAG;

  reg RFS, inversei, twid_init_done;
  wire starti, tc_N_3, rst_countN, outp_done, init_refresh_done, kick_twid_init;
  wire bitrev_outp_rdy;
  reg  bitrev_outp_valid, can_start;
  wire [2:0] kick_count;
  wire [DBUS_BITS-1:0] native_outp_im, native_outp_re;
  wire bitrev_ov_flag, ov_flag_bfly;

  // Datapath width = max width to use the four arrays below
  wire [DBUS_BITS-1:0] data_im [0: 4*MAX22STAGE+NP4];
  wire [DBUS_BITS-1:0] data_re [0: 4*MAX22STAGE+NP4];
  wire [DBUS_BITS-1:0] neg_data_im [0: MAX22STAGE-1];
  wire [DBUS_BITS-1:0] neg_data_re [0: MAX22STAGE-1];
  wire  start_next_w [0: 4*MAX22STAGE+NP4];
  wire  ov_next_w [0: 4*MAX22STAGE];

  wire  ov_flag_w [0: MAX22STAGE-1];
  wire  inverse_next [0: 2*MAX22STAGE+2];
  wire  refresh_w[0:MAX22STAGE];

  genvar stage4;    // radix-4 stage

  // ---------------  HANDSHAKE  ------------------
  assign starti = can_start & START;   // ignore untimely starts
  assign rst_countN = starti | RST;

  always @(negedge NGRST or posedge CLK)
    if(NGRST==1'b0) begin
      twid_init_done <= 1'b0;
      RFS       <= 1'b0;
      can_start <= 1'b0;
      bitrev_outp_valid <= 1'b0;
    end
    else if (CLKEN) begin
      if(init_refresh_done) begin
        twid_init_done <= 1'b1;
        RFS <= 1'b1;
        can_start <= 1'b0;
        bitrev_outp_valid <= 1'b0;
      end
      if(twid_init_done) begin
        if(RST==1'b1)  begin
          RFS       <= 1'b1;
          can_start <= 1'b0;
          bitrev_outp_valid <= 1'b0;
        end
        else  begin
          if(bitrev_outp_rdy)
            bitrev_outp_valid <= 1'b1;
          else if (outp_done)
            bitrev_outp_valid <= 1'b0;

          if(starti)  begin
            can_start <= 1'b0;
            RFS <= 1'b0;
          end
          else begin
            if(RFS)
              can_start <= 1'b1;
            if(tc_N_3)
              RFS <= 1'b1;
          end
        end
      end
    end

  kitCountS_fft_strm # ( .WIDTH(LOG2PTS), .DCVALUE(FFT_SIZE-3),
                .BUILD_DC(1) ) counterN_0 (
    .nGrst(NGRST), .rst(rst_countN), .clk(CLK), .clkEn(CLKEN),
    .cntEn(1'b1), .Q(), .dc(tc_N_3) );

  kitCountS_fft_strm # ( .WIDTH(LOG2PTS), .DCVALUE(FFT_SIZE-1),
                .BUILD_DC(1) ) outp_valid_0 (
    .nGrst(NGRST), .rst(bitrev_outp_rdy), .clk(CLK), .clkEn(CLKEN),
    .cntEn(1'b1), .Q(), .dc(outp_done) );
  // ---------------  HANDSHAKE Ends ------------------

  // Kick off Twiddle ROM initialization after NGRST
  kitCountS_fft_strm # ( .WIDTH(3), .DCVALUE(3),
                .BUILD_DC(1) ) kick_twid_init_0 (
    .nGrst(NGRST), .rst(1'b0), .clk(CLK), .clkEn(CLKEN),
    .cntEn(~kick_count[2]), .Q(kick_count), .dc(kick_twid_init) );

  assign refresh_w[0] = kick_twid_init | REFRESH;

  // Latch 'INVERSE' mode control
  always @(negedge NGRST or posedge CLK)
    if(NGRST==1'b0) inversei <= 1'b0;
    else if (CLKEN)
      if(RST==1'b1) inversei <= INVERSE;
      else
        if(starti)  inversei <= INVERSE;

  assign inverse_next[0] = inversei;

  signExt_fft_strm # (.INWIDTH(DATA_BITS), .OUTWIDTH(DBUS_BITS),
    .UNSIGNED(0)) signExt_re_0 (
          .inp(DATAI_RE), .outp(data_re[0]) );
  signExt_fft_strm # (.INWIDTH(DATA_BITS), .OUTWIDTH(DBUS_BITS),
    .UNSIGNED(0)) signExt_im_0 (
          .inp(DATAI_IM), .outp(data_im[0]) );

  // Native bit-reversed outputs.  If ORDER==1, put them in order
  // Bit reversing is DATA_BITS-wide
  assign native_outp_im = data_im[4*MAX22STAGE+NP4];
  assign native_outp_re = data_re[4*MAX22STAGE+NP4];

  // Native bit-reversed outp_rdy. If ORDER, delay it to match ordered output
  assign bitrev_outp_rdy = (LOG2PTS > 2*MAX22STAGE)?
                      start_next_w[4*MAX22STAGE+1] : start_next_w[4*MAX22STAGE];

  assign start_next_w[0] = starti;
  assign ov_next_w[0] = 1'b0;
  // For non-power-of-4 FFT's use ov_flag from radix2_final_stage bfly;
  // otherwise from the last stage twiddle
  assign bitrev_ov_flag = (LOG2PTS > 2*MAX22STAGE)?
                                        ov_flag_bfly : ov_flag_w[MAX22STAGE-1];

  assign init_refresh_done = refresh_w[MAX22STAGE] & ~twid_init_done;

  generate
    for(stage4=0; stage4<MAX22STAGE; stage4=stage4+1)
      begin: radix22_section
        COREFFT_C0_COREFFT_C0_0_radix2 # (
            .BITS_S (DATA_BITS+1),
            .BITS_U (DATA_BITS+2+2*stage4),
            .SCALE_ON(SCALE_ON),
            .PTS  (FFT_SIZE  ),
            .LOG2PTS (LOG2PTS),
            .STAGE(2*stage4+1),
            .RADIX2_1(0),
            .DBUS_BITS (DBUS_BITS),
            .SCALE_SCH_B(2'b00),
            .SCALE_DOWN(0),
            .FPGA_FAMILY(FPGA_FAMILY),
            .URAM_MAXDEPTH(URAM_MAXDEPTH),
            .NO_RAM (NO_RAM)  ) radix2_0 (
          .inp_im   (data_im[4*stage4]),
          .inp_re   (data_re[4*stage4]),
          .outp_im  (data_im[4*stage4+1]),
          .outp_re  (data_re[4*stage4+1]),
          .neg_outp_im  (neg_data_im[stage4]),
          .neg_outp_re  (neg_data_re[stage4]),
          .clkEn    (CLKEN),
          .clk      (CLK      ),
          .nGrst    (NGRST    ),
          .rst      (RST      ),
          .start    (start_next_w[4*stage4]),
          .pre_start_next(),
          .start_next (start_next_w[4*stage4+1]),
          .ov(ov_next_w[4*stage4]),
          .ov_next(ov_next_w[4*stage4+1]),
          .ov_flag()  );

        rotate22_fft_strm # (
            .BITS_S (DATA_BITS+1),
            .BITS_U (DATA_BITS+2+2*stage4),
            .SCALE_ON(SCALE_ON),
            .PTS(FFT_SIZE),
            .LOG2PTS (LOG2PTS),
            .DBUS_BITS (DBUS_BITS),
            .STAGE(2*stage4+1)) rotate_0 (
          .inp_im   (data_im[4*stage4+1]),
          .inp_re   (data_re[4*stage4+1]),
          .neg_inp_im   (neg_data_im[stage4]),
          .neg_inp_re   (neg_data_re[stage4]),
          .outp_im  (data_im[4*stage4+2]),
          .outp_re  (data_re[4*stage4+2]),
          .clkEn    (CLKEN),
          .clk      (CLK      ),
          .nGrst    (NGRST    ),
          .rst      (RST      ),
          .start    (start_next_w[4*stage4+1]),
          .start_next (start_next_w[4*stage4+2]),
          .ov(ov_next_w[4*stage4+1]),
          .ov_next(ov_next_w[4*stage4+2]),
          .inverse  (inverse_next[2*stage4]),
          .inverse_next(inverse_next[2*stage4+1])  );

        COREFFT_C0_COREFFT_C0_0_radix2 # (
            .BITS_S (DATA_BITS+2),
            .BITS_U (DATA_BITS+3+2*stage4),
            .SCALE_ON(SCALE_ON),
            .PTS  (FFT_SIZE  ),
            .LOG2PTS (LOG2PTS),
            .STAGE(2*stage4+2),
            .RADIX2_1(1),
            .DBUS_BITS (DBUS_BITS),
            .SCALE_SCH_B(2'b00),
            .SCALE_DOWN(0),
            .FPGA_FAMILY(FPGA_FAMILY),
            .URAM_MAXDEPTH(URAM_MAXDEPTH),
            .NO_RAM (NO_RAM)      ) radix2_1 (
          .inp_im   (data_im[4*stage4+2]),
          .inp_re   (data_re[4*stage4+2]),
          .outp_im  (data_im[4*stage4+3]),
          .outp_re  (data_re[4*stage4+3]),
          .neg_outp_im   (),
          .neg_outp_re   (),
          .clkEn    (CLKEN),
          .clk      (CLK      ),
          .nGrst    (NGRST    ),
          .rst      (RST      ),
          .start    (start_next_w[4*stage4+2]),
          .pre_start_next(start_next_w[4*stage4+3]),
          .start_next (),
          .ov(ov_next_w[4*stage4+2]),
          .ov_next(ov_next_w[4*stage4+3]),
          .ov_flag()  );

        COREFFT_C0_COREFFT_C0_0_twiddle22 # (
            .BITS_S (DATA_BITS+3),
            .BITS_U (DATA_BITS+3+2*stage4),
            .SCALE_ON(SCALE_ON),
            .SCALE_SCH_B(SCALE_SCH_B[2*stage4+1:2*stage4]),
            .TWID_BITS(TWID_BITS),
            .PTS  (FFT_SIZE  ),
            .LOG2PTS (LOG2PTS),
            .STAGE(2*stage4+2),
            .DBUS_BITS (DBUS_BITS),
            .FPGA_FAMILY(FPGA_FAMILY),
            .URAM_MAXDEPTH(URAM_MAXDEPTH),
            .NO_RAM (NO_RAM)      ) twiddle_0 (
          .inp_im   (data_im [4*stage4+3]),
          .inp_re   (data_re [4*stage4+3]),
          .outp_im  (data_im[4*stage4+4]),
          .outp_re  (data_re[4*stage4+4]),
          .clkEn    (CLKEN),
          .clk      (CLK      ),
          .slowclk  (SLOWCLK  ),
          .nGrst    (NGRST    ),
          .rst      (RST      ),
          .start    (start_next_w[4*stage4+3]),
          .start_next (start_next_w[4*stage4+4]),
          .ov(ov_next_w[4*stage4+3]),
          .ov_next(ov_next_w[4*stage4+4]),
          .ov_flag(ov_flag_w[stage4]),
          .inverse  (inverse_next[2*stage4+1]),
          .inverse_next (inverse_next[2*stage4+2]),
          .refresh(refresh_w[stage4]),
          .refresh_done(refresh_w[stage4+1]) );
        end
  endgenerate

  // Add simple radix-2 bfly for non-power-of-4 FFT sizes
  generate if(LOG2PTS > 2*MAX22STAGE)
    begin: radix2_final_stage
        COREFFT_C0_COREFFT_C0_0_radix2 # (
            .BITS_S (DATA_BITS+1),
            .BITS_U (DATA_BITS+2+2*MAX22STAGE),
            .SCALE_ON(SCALE_ON),
            .PTS  (FFT_SIZE  ),
            .LOG2PTS (LOG2PTS),
            .STAGE(LOG2PTS),
            .RADIX2_1(0),
            .DBUS_BITS (DBUS_BITS),
            .SCALE_SCH_B(SCALE_SCH_B[LOG2PTS:LOG2PTS-1]),
            .SCALE_DOWN(1),
            .FPGA_FAMILY(FPGA_FAMILY),
            .URAM_MAXDEPTH(URAM_MAXDEPTH),
            .NO_RAM (NO_RAM) ) radix2_final_0 (
          .inp_im   (data_im[2*LOG2PTS-2]),
          .inp_re   (data_re[2*LOG2PTS-2]),
          .outp_im  (data_im[2*LOG2PTS-1]),
          .outp_re  (data_re[2*LOG2PTS-1]),
          .neg_outp_im   (),
          .neg_outp_re   (),
          .clkEn    (CLKEN),
          .clk      (CLK      ),
          .nGrst    (NGRST    ),
          .rst      (RST      ),
          .start    (start_next_w[2*LOG2PTS-2]),
          .start_next (start_next_w[2*LOG2PTS-1]),
          .pre_start_next(),
          .ov(ov_next_w[2*LOG2PTS-2]),
          .ov_next(),
          .ov_flag(ov_flag_bfly)  );
    end
  endgenerate


  // Either let the bit-reversed output through or put it in order
  COREFFT_C0_COREFFT_C0_0_bitrev_ram # (.DATA_BITS(DATAO_BITS),
        .PTS(FFT_SIZE),
        .LOG2PTS (LOG2PTS),
        .ORDER(ORDER),
        .FPGA_FAMILY(FPGA_FAMILY),
        .URAM_MAXDEPTH(URAM_MAXDEPTH),
        .NO_RAM(NO_RAM)  ) bitrev_0 (
    .clkEn (CLKEN), .clk (CLK), .nGrst(NGRST), .rst(RST),
    .inp_im(native_outp_im[DATAO_BITS-1:0]),
    .inp_re(native_outp_re[DATAO_BITS-1:0]),
    .inp_ready(bitrev_outp_rdy),
    .inp_valid(bitrev_outp_valid),
    .outp_im(DATAO_IM), .outp_re(DATAO_RE),
    .outp_ready(OUTP_READY),
    .outp_valid(DATAO_VALID),
    .ovflow(bitrev_ov_flag),
    .ovflow_flag(OVFLOW_FLAG)    );

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
