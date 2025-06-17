// ***************************************************************************/
//Microsemi Corporation Proprietary and Confidential
//Copyright 2016 Microsemi Corporation. All rights reserved.
//
//ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
//ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
//IN ADVANCE IN WRITING.
//
//Description:  Pipeline CoreFFT
//              User testbench
//
//Revision Information:
//Date         Description
//05Nov2009    Initial Release
//
//SVN Revision Information:
//SVN $Revision: $
//SVN $Data: $
//
//Resolved SARs
//SAR     Date    Who         Description
//
//Notes:
// 4/7/2011 //refresh Refresh test added to make sure the refresh is transparent
// //refresh Refresh test removed due to simulation driving RD to X when Rd/Wr
//          to the same address is happening

`timescale 1 ns/100 ps

// ---------------------------- 8 to 32 bits version ----------------------
module testbench;
  `include "../../../../../coreparameters.v"
  localparam DWIDTH       = 2*DATA_BITS;

  localparam BIGWIDTH = (DATA_BITS > TWID_BITS)? DATA_BITS : TWID_BITS;
  localparam SMALLWIDTH = (DATA_BITS < TWID_BITS)? DATA_BITS : TWID_BITS;
  localparam TWID_LTNCY = (BIGWIDTH<19)? 4 : (SMALLWIDTH > 18)? 10 : 6;

  localparam DUT_LATENCY  = FFT_SIZE + 2*(ceil_log2(FFT_SIZE)-1) + floor_log4(FFT_SIZE) +
                            TWID_LTNCY*(ceil_log4(FFT_SIZE)-1);

  localparam TWID_INIT_TIME = 4*(FFT_SIZE + FFT_SIZE/4 + FFT_SIZE/16 + FFT_SIZE/64);

  //  ----------------  TB Controls  ----------------
  localparam NUM_OF_TEST_CYCLES = 6;

  localparam GAP_BTW_FFTS = 10;     // number of clks between FFT's
  localparam DO_GAP       = 0;      // Insert the gap if !=0
  //  ----------------  TB Controls end  ----------------

  localparam DATAO_BITS   = (SCALE_ON==0)? DATA_BITS+ceil_log2(FFT_SIZE)+1 : DATA_BITS;

  integer cycleCnt = 0; // counter of FFT cycles.  Use up to 4 cycles for the test
  integer i, clkCnt, output_sample_count;
  integer inVectIndex;
  wire clk, nGrst;
  // Storage for the in/out test vectors
  reg [DWIDTH-1:0] testPattern1 [0:FFT_SIZE-1];
  reg [DWIDTH-1:0] testPattern2 [0:FFT_SIZE-1];
  wire[DWIDTH-1:0] inp_tstVect;
  wire [DATA_BITS-1:0] inp_tstVect_im;
  wire [DATA_BITS-1:0] inp_tstVect_re;

  reg[2*DATAO_BITS-1:0] testResGold1 [0:FFT_SIZE-1];
  reg[2*DATAO_BITS-1:0] testResGold2 [0:FFT_SIZE-1];
  reg gold_flag_ov1, gold_flag_ov2;

  wire [DATAO_BITS-1:0] test_res_gold1_im, test_res_gold1_re;
  wire [DATAO_BITS-1:0] test_res_gold2_im, test_res_gold2_re;
  wire [DATAO_BITS-1:0] test_res_gold_im, test_res_gold_re;
  wire [DATAO_BITS-1:0] uut_outp_im, uut_outp_re;

  reg initializing_twid, stop_inp_test_vect, may_inc_cycleCnt;
  reg start1, start2, start;
  reg gold_pattern_2;

  wire clkEn = 1'b1;      // To create clkEn
  wire outp_valid, outp_ready, rfs, starti;
  wire ngrst_rising_edge, twid_init_done, tb_read_ov_strobe;

  reg not_eq, failValue, to_end_test, rfs_tick, inverse;
  reg testOn  = 1'b0;

  wire twid_init_over, do_refresh, uut_ov_flag;      //refresh

  reg [NUM_OF_TEST_CYCLES+1:0] cycle_ov;
  reg [NUM_OF_TEST_CYCLES+1:0] cycle_fail_value;
  reg ov_fail = 1'b0;

  // -------- Fill in the in/out test vector arrays ---------
  `include "tb_inc_fft_strm.v"

  always @ (posedge clk or negedge nGrst)    // count FFT cycles
    if (nGrst==1'b0) begin
      cycleCnt <= 0;
      may_inc_cycleCnt <= 1'b0;
    end
    // increment the cycleCnt on the second and other starti
    else
      if(starti) begin
        may_inc_cycleCnt <= 1'b1;
        if(may_inc_cycleCnt)
          cycleCnt <= cycleCnt+1;
      end

  // -------------  Create FFT starts  -----------------
  bhvDelay # (.DELAY(TWID_INIT_TIME+10), .WIDTH(1)) after_twid_init_0 (
    .clkEn(clkEn), .clk(clk), .nGrst(nGrst), .rst(1'b0),
    .inp(ngrst_rising_edge),
    .outp(twid_init_done) );

  // ----------------------------------   //refresh
  bhvEdge # (.REDGE(1)) twid_init_over_0 (
    .clk(clk), .nGrst(nGrst), .rst(1'b0),
    .inp(twid_init_done), .outp(twid_init_over) );

  bhvDelay # (.DELAY(20), .WIDTH(1)) refresh_0 (
    .clkEn(clkEn), .clk(clk), .nGrst(nGrst), .rst(1'b0),
    .inp(twid_init_over),
    .outp(do_refresh) );
  // ----------------------------------   //refresh

  assign starti = start & rfs_tick;

  always @ (posedge clk or negedge nGrst)    // count FFT cycles
    if (nGrst==1'b0) begin
      clkCnt   <= 0;
      start1   <= 1'b0;
      start2   <= 1'b0;
      start    <= 1'b0;
      initializing_twid <= 1'b1;
    end
    else  begin
      if(twid_init_done)
        initializing_twid <= 1'b0;
      if(initializing_twid == 1'b0) begin
        clkCnt <= clkCnt + 1;
        start1 <= (clkCnt == 1) | (clkCnt == NUM_OF_TEST_CYCLES+FFT_SIZE) |
                  (clkCnt > 18+2*FFT_SIZE) & (clkCnt < 25+2*FFT_SIZE) | // 8-clk wide after 4-clk idle time
                  (clkCnt > 32+2*FFT_SIZE);

        start2 <= (clkCnt % (FFT_SIZE+GAP_BTW_FFTS))==1;
        start  <= (DO_GAP==0)? start1 : start2;
      end
    end
  // -------------  FFT start ends   -----------------

  COREFFT_C0_COREFFT_C0_0_COREFFT #(
    .DATA_BITS(DATA_BITS), .TWID_BITS(TWID_BITS),
    .FFT_SIZE(FFT_SIZE),
	.NATIV_AXI4( NATIV_AXI4),		    // 1=AXI4S, 0=Native
	.AXI4S_IN_DATA(AXI4S_IN_DATA),       // for AXI4S byte boundaries
	.AXI4S_OUT_DATA(AXI4S_OUT_DATA),
    .SCALE_ON(SCALE_ON), .SCALE_SCH(SCALE_SCH),
    .FPGA_FAMILY(FPGA_FAMILY),
    .ORDER(ORDER),
    .URAM_MAXDEPTH(URAM_MAXDEPTH),
    .CFG_ARCH     (2),    // streaming FFT
    .INVERSE (0),
    .NO_RAM  (0),
    .SCALE   (0),
    .POINTS  (FFT_SIZE),
    .WIDTH   (18),
    .MEMBUF  (0),
    .SCALE_EXP_ON (0) ) uut_0 (
      .DATAI_IM(inp_tstVect_im),
      .DATAI_RE(inp_tstVect_re),
      .DATAO_IM(uut_outp_im),
      .DATAO_RE(uut_outp_re),
      .CLKEN(clkEn),
      .CLK(clk),
      .SLOWCLK(SLOWCLK),
      .NGRST(nGrst),
      .RST(1'b0),
      .START(start),
      .OUTP_READY(outp_ready),    // short pilot pulse
      .DATAO_VALID(outp_valid),   // long strobe covering the whole FFT frame
      .RFS(rfs),
      .INVERSE_STRM(inverse),
      .OVFLOW_FLAG(uut_ov_flag),
      .REFRESH(1'b0),

	    .DATAI_VALID(1'b0),
	    .BUF_READY(),
	    .READ_OUTP(1'b0),
	    .PONG(),
	    .SCALE_EXP(),
// AXI4S DATA channels
	  .AXI4_S_DATAI_TVALID(1'b0),
	  .AXI4_S_DATAI_TREADY(),
	  .AXI4_S_TDATAI('d0),
	  .AXI4_S_TLASTI(1'b0),
	  
	  .AXI4_M_DATAO_TVALID(),
	  .AXI4_M_DATAO_TREADY(1'b0),
	  .AXI4_M_TDATAO(),
	  .AXI4_M_TLASTO(),
// AXI4S Configuration channels
	  .AXI4_S_CONFIGI_TVALID(1'b0),
	  .AXI4_S_CONFIGI_TREADY(),
	  .AXI4_S_CONFIGI('d0),
	  
	  .AXI4_M_CONFIGO_TVALID(),
	  .AXI4_M_CONFIGO_TREADY(1'b0),
	  .AXI4_M_CONFIGO()	);


  // -------------------  Read inp test vector from fft_tb_inc32  -------------
  // Input test vector count
  always @ (negedge nGrst or posedge clk)
    if(nGrst==1'b0) begin
      inVectIndex         <= 0;
      stop_inp_test_vect  <= 1'b1;
      to_end_test         <= 1'b0;
      rfs_tick            <= 1'b0;
      inverse             <= 1'b0;
    end
    else
      if(clkEn==1'b1) begin
        if(cycleCnt>NUM_OF_TEST_CYCLES) to_end_test <= 1'b1;
        if(rfs) rfs_tick <= 1'b1;

        if(starti) begin
          inVectIndex <= 0;
          stop_inp_test_vect   <= 1'b0;
          to_end_test <= 1'b0;
          rfs_tick <= 1'b0;
          inverse <= ~inverse;
        end
        else
          if(inVectIndex==FFT_SIZE-1) begin
            stop_inp_test_vect <= 1'b1;
            inVectIndex <= 0;
          end
          else if (stop_inp_test_vect == 1'b0 )
            inVectIndex <= inVectIndex + 1;
        end

  assign inp_tstVect =
        stop_inp_test_vect ? 'b0 : (cycleCnt[0])? testPattern2[inVectIndex] : testPattern1[inVectIndex];
  assign inp_tstVect_re = inp_tstVect[DATA_BITS-1:0];
  assign inp_tstVect_im = inp_tstVect[2*DATA_BITS-1:DATA_BITS];
  // -------------------  Inp test vector ends  -----------------


  // -------------------  Read Golden test vector from fft_tb_inc32  -------------
  assign test_res_gold1_im = testResGold1[output_sample_count][2*DATAO_BITS-1:DATAO_BITS];
  assign test_res_gold1_re = testResGold1[output_sample_count][DATAO_BITS-1:0];
  assign test_res_gold2_im = testResGold2[output_sample_count][2*DATAO_BITS-1:DATAO_BITS];
  assign test_res_gold2_re = testResGold2[output_sample_count][DATAO_BITS-1:0];

  assign test_res_gold_re = gold_pattern_2 ? test_res_gold2_re : test_res_gold1_re;
  assign test_res_gold_im = gold_pattern_2 ? test_res_gold2_im : test_res_gold1_im;

  assign gold_ov_flag     = gold_pattern_2 ? gold_flag_ov2 : gold_flag_ov1;

  //  ----------------  Read the UUT ov_flag  ----------------
  //Create a strobe at the last clk of the DATAO_VALID signal
  bhvDelay # (.DELAY(FFT_SIZE), .WIDTH(1)) read_ov_strobe_0 (
    .nGrst(nGrst), .rst(1'b0), .clk(clk), .clkEn(clkEn),
      .inp(outp_ready),
      .outp(tb_read_ov_strobe) );
  //  ----------------  Read the UUT ov_flag ends  ----------------

  initial begin
    for(i=0; i<=NUM_OF_TEST_CYCLES+1; i=i+1)
      cycle_ov[i] = 'b0;
    cycle_fail_value = 'b0;
  end

  always @ (posedge clk) begin
    if(nGrst==1'b0)   begin
      failValue <= 1'b0;
      ov_fail   <= 1'b0;
      not_eq    <= 1'b0;
      gold_pattern_2 <= 1'b1;
      output_sample_count <= 0;
    end
    else begin
      if(outp_ready) begin          // Short pilot pulse
        output_sample_count <= 0;
        gold_pattern_2 <= ~gold_pattern_2;
        not_eq <= 1'b0;
        if(not_eq) begin
          cycle_fail_value[cycleCnt] <= 1'b1;
          failValue <= 1'b1;
        end

        if(to_end_test==1'b1) begin
          for(i=2; i<=NUM_OF_TEST_CYCLES; i=i+1) begin
            $display ("---------------------------------");
            $display ("-------  Running test cycle%d", i-2);
            if(cycle_fail_value[i]==1'b1)
              $display ("  FFT result does not match Golden vector.  Test failed!!!");
            else
              if(cycle_ov[i] == 1'b1)
                $display ("  Overflow flag failed!  ");
              else
                $display ("  FFT result matches Golden vector.  Test passed");
          end
          $display ("---------------------------------");

          if(failValue==1'b1)
              $display ("!!!!!   At least one test cycle failed   !!!!!");
          else
            if(|cycle_ov==1'b1)
              $display ("FFT test passed but overflow occurred");
            else
              $display ("  FFT test passed  ");
          $display ("-----------------------------------------");
          $stop;
        end
      end     //if(outp_ready)

      else begin
        output_sample_count <= output_sample_count+1;
        if(outp_valid) begin
          // Select proper gold pattern
          if(gold_pattern_2)  begin
            if(uut_outp_im!==test_res_gold2_im) not_eq <= 1'b1;
            if(uut_outp_re!==test_res_gold2_re) not_eq <= 1'b1;
          end
          else                begin
            if(uut_outp_im!==test_res_gold1_im) not_eq <= 1'b1;
            if(uut_outp_re!==test_res_gold1_re) not_eq <= 1'b1;
          end
        end
      end

      if(tb_read_ov_strobe==1'b1)
        if(uut_ov_flag != gold_ov_flag) cycle_ov[cycleCnt] <= 1'b1;

    end
  end

  //---------------------------------------------------------------------------
  bhvClockGen # (.CLKPERIOD (10),
                 .NGRSTLASTS (24)  ) clock_0 (
                    .clk(clk),
                    .nGrst (nGrst),
                    .ngrst_rising_edge(ngrst_rising_edge) );
					
  bhvClockGen # (.CLKPERIOD (40),
                 .NGRSTLASTS (24)  ) slowclock_0 (
                    .clk(SLOWCLK),
                    .nGrst (),
                    .ngrst_rising_edge() );

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

  function [31:0] ceil_log4;
      input integer x;
      integer tmp, res;
    begin
      tmp = 1;
      res = 0;
      while (tmp < x) begin
        tmp = tmp * 4;
        res = res + 1;
      end
      ceil_log4 = res;
    end
  endfunction

  function [31:0] floor_log4;
      input integer x;
      integer tmp, res;
    begin
      tmp = 1;
      res = 0;
      while (tmp < x) begin
        tmp = tmp * 4;
        if (tmp <= x)
          res = res + 1;
      end
      floor_log4 = res;
    end
  endfunction

/*  To test functions
  initial begin
    for(pts=16; pts<=1024; pts=pts*2) begin
      $display("ceil_l2=%d", ceil_log2(pts));
      $display("ceil_l4=%d", ceil_log4(pts));
      $display("floor_l4=%d", floor_log4(pts));
    end
  end
*/

endmodule
