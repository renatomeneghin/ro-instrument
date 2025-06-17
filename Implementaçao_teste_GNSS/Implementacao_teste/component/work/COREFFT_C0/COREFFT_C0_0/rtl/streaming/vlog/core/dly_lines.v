// ***************************************************************************/
//Microsemi Corporation Proprietary and Confidential
//Copyright 2016 Microsemi Corporation. All rights reserved.
//
//ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
//ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
//IN ADVANCE IN WRITING.
//
//Description:  CoreFFT
//              Streaming FFT delay lines
//
//Revision Information:
//Date         Description
//31May2016    Initial Release
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
//Created from modules_fft_strm.v to better organize code for different families

`timescale 1 ns/100 ps
//        ____  ____  __      __   _  _    __    ____  _  _  ____  ___
//       (  _ \( ___)(  )    /__\ ( \/ )  (  )  (_  _)( \( )( ___)/ __)
//        )(_) ))__)  )(__  /(__)\ \  /    )(__  _)(_  )  (  )__) \__ \
//       (____/(____)(____)(__)(__)(__)   (____)(____)(_)\_)(____)(___/


// Simulation (Fabric-based) Shift Regs
module simul_dly_fft_strm ( inp_im, inp_re, clkEn, outp_im, outp_re,
                      clk, nGrst, rst);
  parameter WIDTH       = 16;
  parameter LOGDLY      = 7;
  parameter MINUS_PIPE  = 2;  //Num of pipe regs used in bfly
  parameter FPGA_FAMILY = 19;
  // Max memory depth to build it out of uRAM's.  Above it, LSRAM's are used
  parameter URAM_MAXDEPTH = 0;
  parameter NO_RAM      = 0;   // Can be used for debugging
  parameter NOMINAL_DLY = 128;

  input[WIDTH-1:0] inp_im, inp_re;
  input nGrst, rst;
  input clk, clkEn;
  output [WIDTH-1:0] outp_im, outp_re;

  wire[WIDTH-1:0] ram_dout_im, ram_dout_re;
  wire[LOGDLY-1:0] wA, rA;

  // rA generator
  kitCountS_fft_strm # ( .WIDTH(LOGDLY), .DCVALUE({LOGDLY{1'bx}}),
                .BUILD_DC(0) ) rA_gen_0 (
    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .cntEn(1'b1), .Q(rA), .dc() );

  // The delay is a difference btw Write and Read addr modulo RAM size.
  // E.g. for the delay of 125 the rA = wA + 3 at RAM size of 128:
  // wA - rA = -3 mod 128 = 125.  Thus the wA is 3 clk behind the rA
  // To increase the delay line, reduce the following reg delay
  kitDelay_reg_fft_strm # (.BITWIDTH(LOGDLY), .DELAY(MINUS_PIPE+3) )
    wA_gen_0 (.nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .inp(rA), .outp(wA)  );

  RAM_fabric_fft_strm # (.BITWIDTH(WIDTH),
            .RAM_DEPTH(NOMINAL_DLY),
            .RAM_LOGDEPTH(LOGDLY) ) simul_RAM_im_0  (
    .nGrst(nGrst),
    .RCLOCK(clk),
    .WCLOCK(clk),
    .WRB   (clkEn),
    .RDB   (clkEn),
    .DI    (inp_im),
    .RADDR (rA),
    .WADDR (wA),
    .DO    (ram_dout_im)   );

  RAM_fabric_fft_strm # (.BITWIDTH(WIDTH),
            .RAM_DEPTH(NOMINAL_DLY),
            .RAM_LOGDEPTH(LOGDLY) ) simul_RAM_re_0  (
    .nGrst(nGrst),
    .RCLOCK(clk),
    .WCLOCK(clk),
    .WRB   (clkEn),
    .RDB   (clkEn),
    .DI    (inp_re),
    .RADDR (rA),
    .WADDR (wA),
    .DO    (ram_dout_re)   );

  // Fabric regs inferred btw RAM and adder/sub for speed
  kitDelay_reg_fft_strm # (
      .BITWIDTH(WIDTH),
      .DELAY(1) ) ram_im_outp_reg_0 (  //speed
        .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
        .inp(ram_dout_im), .outp(outp_im)  );
  kitDelay_reg_fft_strm # (.BITWIDTH(WIDTH),
      .DELAY(1) ) ram_re_outp_reg_0 (  //speed
        .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
        .inp(ram_dout_re), .outp(outp_re)  );

endmodule


//  ---------------------------------------------------------------------------
//  ------------------  G5 LSRAM or uRAM-based shift reg  ---------------------
//  ---------------------------------------------------------------------------
module COREFFT_C0_COREFFT_C0_0_g5_ram_dly_fft_strm ( inp_im, inp_re, clkEn, outp_im, outp_re,
                      clk, nGrst, rst);
  parameter WIDTH       = 16;
  parameter LOGDLY      = 7;
  parameter MINUS_PIPE  = 2;  //Num of pipe regs used in bfly
  parameter FPGA_FAMILY = 19;
  // Max memory depth to build it out of uRAM's.  Above it, LSRAM's are used
  parameter URAM_MAXDEPTH = 0;
  parameter NO_RAM      = 0;   // Can be used for debugging
  parameter NOMINAL_DLY = 128;

  input[WIDTH-1:0] inp_im, inp_re;
  input nGrst, rst;
  input clk, clkEn;
  output [WIDTH-1:0] outp_im, outp_re;

  wire[2*WIDTH-1:0] ram_din, ram_dout;
  wire[LOGDLY-1:0] wA, rA;

  wire[LOGDLY-1:0] one = {LOGDLY{1'b1}};    //uram

  kitCountS_fft_strm # ( .WIDTH(LOGDLY), .DCVALUE({LOGDLY{1'bx}}),
                .BUILD_DC(0) ) counter_0 (
    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .cntEn(1'b1), .Q(rA), .dc() );

  // The delay is a difference btw Write and Read addr modulo RAM size.
  // E.g. for the delay of 125 the rA = wA + 3 at RAM size of 128:
  // wA - rA = -3 mod 128 = 125.  Thus the wA is 3 clk behind the rA
  // Thus to increase the delay line, reduce the following reg delay
  kitDelay_reg_fft_strm # (.BITWIDTH(LOGDLY), .DELAY(MINUS_PIPE+3) )
    wA_to_rA_dly0 (.nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .inp(rA), .outp(wA)  );

  assign ram_din = {inp_im, inp_re};
  //--------------------------  G5 RAM depths 2048  --------------------------
  generate if (LOGDLY==11)  begin: g5_lsram_2048
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_2048_g5_L dly_2048_L(     //mad 4k
      .RCLOCK(clk),
      .WCLOCK(clk),
      .WRB   (clkEn),
      .RDB   (1'b1),
      .DI    (ram_din),
      .RADDR (rA),
      .WADDR (wA),
      .DO    (ram_dout) );
    end
  endgenerate
  
  //--------------------------  G5 RAM depths 1024  --------------------------
  generate if(LOGDLY==10)  begin: g5_lsram_1024
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_1024_g5_L dly_1024_L(      //mad 4k
      .RCLOCK(clk),
      .WCLOCK(clk),
      .WRB   (clkEn),
      .RDB   (1'b1),
      .DI    (ram_din),
      .RADDR (rA),
      .WADDR (wA),
      .DO    (ram_dout) );
    end
  endgenerate

  //--------------------------  G5 RAM depths 512  --------------------------
  generate if( (LOGDLY==9) && (URAM_MAXDEPTH<512) ) begin: g5_lsram_512
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_512_g5_L dly_512_L(
      .RCLOCK(clk),
      .WCLOCK(clk),
      .WRB   (clkEn),
      .RDB   (1'b1),
      .DI    (ram_din),
      .RADDR (rA),
      .WADDR (wA),
      .DO    (ram_dout) );
    end
  endgenerate

  generate if( (LOGDLY==9) && (URAM_MAXDEPTH>=512) ) begin: g5_uram_512
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_512_g5_u dly_512_u (
      .rD(ram_dout),
      .wD(ram_din),
      .rAddr(rA),
      .wAddr(wA),
      .rClk(clk),
      .wClk(clk),
      .wEn(clkEn)   );
    end
  endgenerate

  //--------------------------  G5 RAM depths 256  --------------------------
  generate if( (LOGDLY==8) && (URAM_MAXDEPTH<256) ) begin: g5_lsram_256
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_L dly_256_L(
      .RCLOCK(clk),
      .WCLOCK(clk),
      .WRB   (clkEn),
      .RDB   (1'b1),
      .DI    (ram_din),
      .RADDR (rA),
      .WADDR (wA),
      .DO    (ram_dout) );
    end
  endgenerate

  generate if( (LOGDLY==8) && (URAM_MAXDEPTH>=256) ) begin: g5_uram_256
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u dly_256_u (
      .rD(ram_dout),
      .wD(ram_din),
      .rAddr(rA),
      .wAddr(wA),
      .rClk(clk),
      .wClk(clk),
      .wEn(clkEn)   );
    end
  endgenerate

  //--------------------------  G5 RAM depths 128  --------------------------
  generate if( (LOGDLY==7) && (URAM_MAXDEPTH<128) ) begin: g5_lsram_128
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g5_L dly_128_L(
      .RCLOCK(clk),
      .WCLOCK(clk),
      .WRB   (clkEn),
      .RDB   (1'b1),
      .DI    (ram_din),
      .RADDR (rA),
      .WADDR (wA),
      .DO    (ram_dout) );
    end
  endgenerate

  generate if( (LOGDLY==7) && (URAM_MAXDEPTH>=128) ) begin: g5_uram_128
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g5_u dly_128_u (
      .rD(ram_dout),
      .wD(ram_din),
      .rAddr(rA),
      .wAddr(wA),
      .rClk(clk),
      .wClk(clk),
      .wEn(clkEn)   );
    end
  endgenerate

  //--------------------------  G5 RAM depths 64  --------------------------
  generate if( (LOGDLY==6) && (URAM_MAXDEPTH<64) ) begin: g5_lsram_64
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_64_g5_L dly_64_L(
      .RCLOCK(clk),
      .WCLOCK(clk),
      .WRB   (clkEn),
      .RDB   (1'b1),
      .DI    (ram_din),
      .RADDR (rA),
      .WADDR (wA),
      .DO    (ram_dout) );
    end
  endgenerate

  generate if( (LOGDLY==6) && (URAM_MAXDEPTH>=64) ) begin: g5_uram_64
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_64_g5_u dly_64_u (
      .rD(ram_dout),
      .wD(ram_din),
      .rAddr(rA),
      .wAddr(wA),
      .rClk(clk),
      .wClk(clk),
      .wEn(clkEn)   );
    end
  endgenerate

  //--------------------------  G5 RAM depths 32  --------------------------
  generate if( (LOGDLY==5) && (URAM_MAXDEPTH<32) ) begin: g5_lsram_32
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_32_g5_L dly_32_L(
      .RCLOCK(clk),
      .WCLOCK(clk),
      .WRB   (clkEn),
      .RDB   (1'b1),
      .DI    (ram_din),
      .RADDR (rA),
      .WADDR (wA),
      .DO    (ram_dout) );
    end
  endgenerate

  generate if( (LOGDLY==5) && (URAM_MAXDEPTH>=32) ) begin: g5_uram_32
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_32_g5_u dly_32_u (
      .rD(ram_dout),
      .wD(ram_din),
      .rAddr(rA),
      .wAddr(wA),
      .rClk(clk),
      .wClk(clk),
      .wEn(clkEn)   );
    end
  endgenerate

  //--------------------------  G5 RAM depths 16  --------------------------
  generate if( (LOGDLY==4) && (URAM_MAXDEPTH<16) ) begin: g5_lsram_16
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_16_g5_L dly_16_L(
      .RCLOCK(clk),
      .WCLOCK(clk),
      .WRB   (clkEn),
      .RDB   (1'b1),
      .DI    (ram_din),
      .RADDR (rA),
      .WADDR (wA),
      .DO    (ram_dout) );
    end
  endgenerate

  generate if( (LOGDLY==4) && (URAM_MAXDEPTH>=16) ) begin: g5_uram_16
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_16_g5_u dly_16_u (
      .rD(ram_dout),
      .wD(ram_din),
      .rAddr(rA),
      .wAddr(wA),
      .rClk(clk),
      .wClk(clk),
      .wEn(clkEn)   );
    end
  endgenerate

  //--------------  G5 RAM depths 8 uses either uRAM or fabric  ----------------
  generate if( (LOGDLY==3) && (URAM_MAXDEPTH>=8) ) begin: g5_uram_8
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_8_g5_u dly_8_u (
      .rD(ram_dout),
      .wD(ram_din),
      .rAddr(rA),
      .wAddr(wA),
      .rClk(clk),
      .wClk(clk),
      .wEn(clkEn)   );
    end
  endgenerate

  //--------------  G5 RAM depths 4 uses either uRAM or fabric  ----------------
  generate if( (LOGDLY==2) && (URAM_MAXDEPTH>=4) ) begin: g5_uram_4
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_4_g5_u dly_4_u (
      .rD(ram_dout),
      .wD(ram_din),
      .rAddr(rA),
      .wAddr(wA),
      .rClk(clk),
      .wClk(clk),
      .wEn(clkEn)   );
    end
  endgenerate

  // Fabric regs inferred btw RAM and adder/sub for speed
  kitDelay_reg_fft_strm # (.BITWIDTH(WIDTH), .DELAY(1) ) ram_re_outp_reg_0 (
    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .inp(ram_dout[WIDTH-1:0]), .outp(outp_re)  );

  kitDelay_reg_fft_strm # (.BITWIDTH(WIDTH), .DELAY(1) ) ram_im_outp_reg_0 (
    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .inp(ram_dout[2*WIDTH-1:WIDTH]), .outp(outp_im)  );

endmodule



//  ---------------------------------------------------------------------------
//  ------------------  G4 LSRAM or uRAM-based shift reg  ---------------------
//  ---------------------------------------------------------------------------
module COREFFT_C0_COREFFT_C0_0_g4_ram_dly_fft_strm ( inp_im, inp_re, clkEn, outp_im, outp_re,
                      clk, nGrst, rst);
  parameter WIDTH       = 16;
  parameter LOGDLY      = 7;
  parameter MINUS_PIPE  = 2;  //Num of pipe regs used in bfly
  parameter FPGA_FAMILY = 19;
  // Max memory depth to build it out of uRAM's.  Above it, LSRAM's are used
  parameter URAM_MAXDEPTH = 0;
  parameter NO_RAM      = 0;   // Can be used for debugging
  parameter NOMINAL_DLY = 128;

  input[WIDTH-1:0] inp_im, inp_re;
  input nGrst, rst;
  input clk, clkEn;
  output [WIDTH-1:0] outp_im, outp_re;

  wire[WIDTH-1:0] ram_dout_im, ram_dout_re;
  wire[2*WIDTH-1:0] ram_din, ram_dout;
  wire[LOGDLY-1:0] wA, rA;

  wire[LOGDLY-1:0] one = {LOGDLY{1'b1}};    //uram

  kitCountS_fft_strm # ( .WIDTH(LOGDLY), .DCVALUE({LOGDLY{1'bx}}),
                .BUILD_DC(0) ) counter_0 (
    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .cntEn(1'b1), .Q(rA), .dc() );

  // The delay is a difference btw Write and Read addr modulo RAM size.
  // E.g. for the delay of 125 the rA = wA + 3 at RAM size of 128:
  // wA - rA = -3 mod 128 = 125.  Thus the wA is 3 clk behind the rA
  // Thus to increase the delay line, reduce the following reg delay
  kitDelay_reg_fft_strm # (.BITWIDTH(LOGDLY), .DELAY(MINUS_PIPE+3) )
    wA_to_rA_dly0 (.nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .inp(rA), .outp(wA)  );

  assign ram_din = {inp_im, inp_re};
  
  //--------------------------  G4 RAM depths 2048  --------------------------
  generate if(LOGDLY==11) begin: g4_lsram_2048
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_2048_g4_L dly_2048_L(       // mad 4k
      .RCLOCK(clk),
      .WCLOCK(clk),
      .WRB   (clkEn),
      .RDB   (1'b1),
      .DI    (ram_din),
      .RADDR (rA),
      .WADDR (wA),
      .DO    (ram_dout) );
    end
  endgenerate
  
  //--------------------------  G4 RAM depths 1024  --------------------------
  generate if(LOGDLY==10)  begin: g4_lsram_1024
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_1024_g4_L dly_1024_L(    // mad 4k
      .RCLOCK(clk),
      .WCLOCK(clk),
      .WRB   (clkEn),
      .RDB   (1'b1),
      .DI    (ram_din),
      .RADDR (rA),
      .WADDR (wA),
      .DO    (ram_dout) );
    end
  endgenerate

  //--------------------------  G4 RAM depths 512  --------------------------
  generate if( (LOGDLY==9) && (URAM_MAXDEPTH<512) ) begin: g4_lsram_512
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_512_g4_L dly_512_L(
      .RCLOCK(clk),
      .WCLOCK(clk),
      .WRB   (clkEn),
      .RDB   (1'b1),
      .DI    (ram_din),
      .RADDR (rA),
      .WADDR (wA),
      .DO    (ram_dout) );
    end
  endgenerate

  generate if( (LOGDLY==9) && (URAM_MAXDEPTH>=512) ) begin: g4_uram_512
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_512_g4_u dly_512_u (
      .rD(ram_dout),
      .B_DOUT(),
      .wD(ram_din),
      .rAddr(rA),
      .B_ADDR(one),
      .wAddr(wA),
      .rBlk(1'b1),
      .B_BLK(1'b0),
      .wBlk(1'b1),
      .A_CLK (clk),       //actgen
      .wClk(clk),
      .wEn(clkEn)   );
    end
  endgenerate

  //--------------------------  G4 RAM depths 256  --------------------------
  generate if( (LOGDLY==8) && (URAM_MAXDEPTH<256) ) begin: g4_lsram_256
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g4_L dly_256_L(
      .RCLOCK(clk),
      .WCLOCK(clk),
      .WRB   (clkEn),
      .RDB   (1'b1),
      .DI    (ram_din),
      .RADDR (rA),
      .WADDR (wA),
      .DO    (ram_dout) );
    end
  endgenerate

  generate if( (LOGDLY==8) && (URAM_MAXDEPTH>=256) ) begin: g4_uram_256
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g4_u dly_256_u (
      .rD(ram_dout),
      .B_DOUT(),
      .wD(ram_din),
      .rAddr(rA),
      .B_ADDR(one),
      .wAddr(wA),
      .rBlk(1'b1),
      .B_BLK(1'b0),
      .wBlk(1'b1),
      .A_CLK (clk),       //actgen
      .wClk(clk),
      .wEn(clkEn)   );
    end
  endgenerate

  //--------------------------  G4 RAM depths 128  --------------------------
  generate if( (LOGDLY==7) && (URAM_MAXDEPTH<128) ) begin: g4_lsram_128
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g4_L dly_128_L(
      .RCLOCK(clk),
      .WCLOCK(clk),
      .WRB   (clkEn),
      .RDB   (1'b1),
      .DI    (ram_din),
      .RADDR (rA),
      .WADDR (wA),
      .DO    (ram_dout) );
    end
  endgenerate

  generate if( (LOGDLY==7) && (URAM_MAXDEPTH>=128) ) begin: g4_uram_128
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g4_u dly_128_u (
      .rD(ram_dout),
      .B_DOUT(),
      .wD(ram_din),
      .rAddr(rA),
      .B_ADDR(one),
      .wAddr(wA),
      .rBlk(1'b1),
      .B_BLK(1'b0),
      .wBlk(1'b1),
      .A_CLK (clk),       //actgen
      .wClk(clk),
      .wEn(clkEn)   );
    end
  endgenerate

  //--------------------------  G4 RAM depths 64  --------------------------
  generate if( (LOGDLY==6) && (URAM_MAXDEPTH<64) ) begin: g4_lsram_64
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_64_g4_L dly_64_L(
      .RCLOCK(clk),
      .WCLOCK(clk),
      .WRB   (clkEn),
      .RDB   (1'b1),
      .DI    (ram_din),
      .RADDR (rA),
      .WADDR (wA),
      .DO    (ram_dout) );
    end
  endgenerate

  generate if( (LOGDLY==6) && (URAM_MAXDEPTH>=64) ) begin: g4_uram_64
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_64_g4_u dly_64_u (
      .rD(ram_dout),
      .B_DOUT(),
      .wD(ram_din),
      .rAddr(rA),
      .B_ADDR(one),
      .wAddr(wA),
      .rBlk(1'b1),
      .B_BLK(1'b0),
      .wBlk(1'b1),
      .A_CLK (clk),       //actgen
      .wClk(clk),
      .wEn(clkEn)   );
    end
  endgenerate

  //--------------------------  G4 RAM depths 32  --------------------------
  generate if( (LOGDLY==5) && (URAM_MAXDEPTH<32) ) begin: g4_lsram_32
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_32_g4_L dly_32_L(
      .RCLOCK(clk),
      .WCLOCK(clk),
      .WRB   (clkEn),
      .RDB   (1'b1),
      .DI    (ram_din),
      .RADDR (rA),
      .WADDR (wA),
      .DO    (ram_dout) );
    end
  endgenerate

  generate if( (LOGDLY==5) && (URAM_MAXDEPTH>=32) ) begin: g4_uram_32
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_32_g4_u dly_32_u (
      .rD(ram_dout),
      .B_DOUT(),
      .wD(ram_din),
      .rAddr(rA),
      .B_ADDR(one),
      .wAddr(wA),
      .rBlk(1'b1),
      .B_BLK(1'b0),
      .wBlk(1'b1),
      .A_CLK (clk),       //actgen
      .wClk(clk),
      .wEn(clkEn)   );
    end
  endgenerate

  //--------------------------  G4 RAM depths 16  --------------------------
  generate if( (LOGDLY==4) && (URAM_MAXDEPTH<16) ) begin: g4_lsram_16
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_16_g4_L dly_16_L(
      .RCLOCK(clk),
      .WCLOCK(clk),
      .WRB   (clkEn),
      .RDB   (1'b1),
      .DI    (ram_din),
      .RADDR (rA),
      .WADDR (wA),
      .DO    (ram_dout) );
    end
  endgenerate

  generate if( (LOGDLY==4) && (URAM_MAXDEPTH>=16) ) begin: g4_uram_16
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_16_g4_u dly_16_u (
      .rD(ram_dout),
      .B_DOUT(),
      .wD(ram_din),
      .rAddr(rA),
      .B_ADDR(one),
      .wAddr(wA),
      .rBlk(1'b1),
      .B_BLK(1'b0),
      .wBlk(1'b1),
      .A_CLK (clk),       //actgen
      .wClk(clk),
      .wEn(clkEn)   );
    end
  endgenerate

  //--------------  G4 RAM depths 8 uses either uRAM or fabric  ----------------
  generate if( (LOGDLY==3) && (URAM_MAXDEPTH>=8) ) begin: g4_uram_8
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_8_g4_u dly_8_u (
      .rD(ram_dout),
      .B_DOUT(),
      .wD(ram_din),
      .rAddr(rA),
      .B_ADDR(one),
      .wAddr(wA),
      .rBlk(1'b1),
      .B_BLK(1'b0),
      .wBlk(1'b1),
      .A_CLK (clk),       //actgen
      .wClk(clk),
      .wEn(clkEn)   );
    end
  endgenerate

  //--------------  G4 RAM depths 4 uses either uRAM or fabric  ----------------
  generate if( (LOGDLY==2) && (URAM_MAXDEPTH>=4) ) begin: g4_uram_4
    COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_4_g4_u dly_4_u (
      .rD(ram_dout),
      .B_DOUT(),
      .wD(ram_din),
      .rAddr(rA),
      .B_ADDR(one),
      .wAddr(wA),
      .rBlk(1'b1),
      .B_BLK(1'b0),
      .wBlk(1'b1),
      .A_CLK (clk),       //actgen
      .wClk(clk),
      .wEn(clkEn)   );
    end
  endgenerate

  // Fabric regs inferred btw RAM and adder/sub for speed
  kitDelay_reg_fft_strm # (.BITWIDTH(WIDTH), .DELAY(1) ) ram_re_outp_reg_0 (
    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .inp(ram_dout[WIDTH-1:0]), .outp(outp_re)  );

  kitDelay_reg_fft_strm # (.BITWIDTH(WIDTH), .DELAY(1) ) ram_im_outp_reg_0 (
    .nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
    .inp(ram_dout[2*WIDTH-1:WIDTH]), .outp(outp_im)  );

endmodule



//  ---------------------------------------------------------------------------
//  ----------------  Combined Simulation, G5 and G4 RAM's  -------------------
//  ---------------------------------------------------------------------------
module COREFFT_C0_COREFFT_C0_0_ram_dly_line ( inp_im, inp_re, clkEn, outp_im, outp_re,
                      clk, nGrst, rst);
  parameter WIDTH       = 16;
  parameter LOGDLY      = 7;
  parameter MINUS_PIPE  = 2;  //Num of pipe regs used in bfly
  parameter FPGA_FAMILY = 19;
  // Max memory depth to build it out of uRAM's.  Above it, LSRAM's are used
  parameter URAM_MAXDEPTH = 0;
  parameter NO_RAM      = 0;   // Can be used for debugging

  localparam NOMINAL_DLY = 1 << LOGDLY;

  input[WIDTH-1:0] inp_im, inp_re;
  input nGrst, rst;
  input clk, clkEn;
  output [WIDTH-1:0] outp_im, outp_re;

  generate if (NO_RAM==1) begin: simul_sr
    simul_dly_fft_strm # (
        .WIDTH        (WIDTH        ),
        .LOGDLY       (LOGDLY       ),
        .MINUS_PIPE   (MINUS_PIPE   ),
        .FPGA_FAMILY  (FPGA_FAMILY  ),
        .URAM_MAXDEPTH(URAM_MAXDEPTH),
        .NO_RAM       (NO_RAM       ),
        .NOMINAL_DLY  (NOMINAL_DLY  )   ) simul_dly_0 (
      .inp_im (inp_im ),
      .inp_re (inp_re ),
      .clkEn  (clkEn  ),
      .outp_im(outp_im),
      .outp_re(outp_re),
      .clk    (clk    ),
      .nGrst  (nGrst  ),
      .rst    (rst    )   );
    end
  endgenerate

  generate if ((NO_RAM!=1) && ((FPGA_FAMILY==26)||(FPGA_FAMILY==27)))  begin: G5_sr
    COREFFT_C0_COREFFT_C0_0_g5_ram_dly_fft_strm # (
        .WIDTH        (WIDTH        ),
        .LOGDLY       (LOGDLY       ),
        .MINUS_PIPE   (MINUS_PIPE   ),
        .FPGA_FAMILY  (FPGA_FAMILY  ),
        .URAM_MAXDEPTH(URAM_MAXDEPTH),
        .NO_RAM       (NO_RAM       ),
        .NOMINAL_DLY  (NOMINAL_DLY  )   ) g5_dly_0 (
      .inp_im (inp_im ),
      .inp_re (inp_re ),
      .clkEn  (clkEn  ),
      .outp_im(outp_im),
      .outp_re(outp_re),
      .clk    (clk    ),
      .nGrst  (nGrst  ),
      .rst    (rst    )   );
    end
  endgenerate

  generate if ((NO_RAM!=1) && ((FPGA_FAMILY==19) || (FPGA_FAMILY==24) || (FPGA_FAMILY==25)))  begin: G4_sr
    COREFFT_C0_COREFFT_C0_0_g4_ram_dly_fft_strm # (
        .WIDTH        (WIDTH        ),
        .LOGDLY       (LOGDLY       ),
        .MINUS_PIPE   (MINUS_PIPE   ),
        .FPGA_FAMILY  (FPGA_FAMILY  ),
        .URAM_MAXDEPTH(URAM_MAXDEPTH),
        .NO_RAM       (NO_RAM       ),
        .NOMINAL_DLY  (NOMINAL_DLY  )   ) g4_dly_0 (
      .inp_im (inp_im ),
      .inp_re (inp_re ),
      .clkEn  (clkEn  ),
      .outp_im(outp_im),
      .outp_re(outp_re),
      .clk    (clk    ),
      .nGrst  (nGrst  ),
      .rst    (rst    )   );
    end
  endgenerate
endmodule



//  ------------  Combined RAM- and fabric-based shift reg
// A delay line of a streaming butterfly implements the delay of PTS/2, where
// PTS is the current butterfly span.  E.g. for 256-pt FFT the first stage span
// is 256, second - 128, then 64, 32, 16, 8, 4, 2.  (In all cases min span = 2).
// For that example, the nominal delays are 128-64-32-16-8-4-2-1.  The formula
// is as follows:
//    log_delay = log2(N) - stage, where N is the FFT size (256),
//                                 stage is the stage number starting from 1.
// For 256-pt FFT:
// Stage:       1   2   3   4   5   6   7   8
// log_delay:   7   6   5   4   3   2   1   0
// Delay    : 128  64  32  16   8   4   2   1

// The nominal delay is a sum of the delay line plus relevant pipeline regs
// used in the butterfly, e.g. adder output regs.  Therefore a few delay units
// are better used as distributed over the butterfly, e.g. after adders (1),
// after mux (2), and after RAM (3).  Certainly such distributed delay is used
// when the nominal delay is 4 or more.

module COREFFT_C0_COREFFT_C0_0_dly_line ( inp_im, inp_re, clkEn, outp_im, outp_re,
                  clk, nGrst, rst);
  parameter WIDTH       = 16;
  parameter PTS         = 256;   // FFT size
  parameter LOG2PTS     = 8;
  parameter STAGE       = 1;
  parameter NOMINAL_DLY = 128; // 128-64-32-16-8-4-2-1
  parameter MINUS_PIPE  = 2;  // Num of pipe regs used in bfly
  parameter FPGA_FAMILY = 19;
  parameter URAM_MAXDEPTH = 0;
  parameter NO_RAM      = 0;

  localparam FAM_G4 = ((FPGA_FAMILY==19) || (FPGA_FAMILY==24) || (FPGA_FAMILY==25))? 1 : 0;
  localparam FAM_G5 = ((FPGA_FAMILY==26)||(FPGA_FAMILY==27))? 1 : 0;

  input[WIDTH-1:0] inp_im, inp_re;
  input clk, clkEn;
  input nGrst, rst;
  output [WIDTH-1:0] outp_im, outp_re;

  // Delays of depth >= 16 use either LSRAM or uRAM
  generate
    if( NOMINAL_DLY > 8 )      //RAM-based delay
      begin: ram_based
      COREFFT_C0_COREFFT_C0_0_ram_dly_line # (.WIDTH(WIDTH), .LOGDLY(LOG2PTS-STAGE),
              .MINUS_PIPE(MINUS_PIPE), .FPGA_FAMILY(FPGA_FAMILY),
              .URAM_MAXDEPTH(URAM_MAXDEPTH), .NO_RAM(NO_RAM) ) ram_dly_line_0 (
        .nGrst(nGrst), .rst(rst),
        .inp_im   (inp_im   ),
        .inp_re   (inp_re   ),
        .clkEn    (clkEn),
        .outp_im  (outp_im  ),
        .outp_re  (outp_re  ),
        .clk      (clk      )  );
      end
  endgenerate

//  // -----------------  RTAX Delays of depth < 16 use fabric  -----------------
//  generate
//    if( (FPGA_FAMILY==12) && (NOMINAL_DLY>MINUS_PIPE) && (NOMINAL_DLY<=8) ) // fabric shift regs
//      begin: fabric_based
//        kitDelay_reg_fft_strm # (.BITWIDTH(WIDTH), .DELAY(NOMINAL_DLY-MINUS_PIPE) )
//          dly_im_0 (.nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
//                    .inp(inp_im), .outp(outp_im)  );
//
//        kitDelay_reg_fft_strm # (.BITWIDTH(WIDTH), .DELAY(NOMINAL_DLY-MINUS_PIPE) )
//          dly_re_0 (.nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
//                    .inp(inp_re), .outp(outp_re)  );
//      end
//  endgenerate

  // ----------  G4-5 Delays of depth 8 and 4 either use fabric or uRAM  ---------
  generate        // uRAM
    if( ( (FPGA_FAMILY==19) || (FPGA_FAMILY==24) || (FPGA_FAMILY==25) || (FPGA_FAMILY==26) || (FPGA_FAMILY==27)) &&
          (NOMINAL_DLY <= 8) && (NOMINAL_DLY-MINUS_PIPE > 2) &&
          (NOMINAL_DLY-MINUS_PIPE <= URAM_MAXDEPTH) )   //uRAM-based delay
      begin: uram_based
        COREFFT_C0_COREFFT_C0_0_ram_dly_line # (.WIDTH(WIDTH), .LOGDLY(LOG2PTS-STAGE),
             .MINUS_PIPE(MINUS_PIPE), .FPGA_FAMILY(FPGA_FAMILY),
             .URAM_MAXDEPTH(URAM_MAXDEPTH), .NO_RAM(NO_RAM) ) uram_dly_line_0 (
//15/06/16temp!             .URAM_MAXDEPTH(URAM_MAXDEPTH), .NO_RAM(0) ) uram_dly_line_0 (
          .nGrst(nGrst), .rst(rst),
          .inp_im   (inp_im   ),
          .inp_re   (inp_re   ),
          .clkEn(clkEn),
          .outp_im  (outp_im  ),
          .outp_re  (outp_re  ),
          .clk      (clk      )  );
    end
  endgenerate

  generate        // Fabric
    // Use G4-5 fabric delay of depths 8 and/or 4 if:
    //  - NOMINAL_DLY > MINUS_PIPE &&
    //  - no uRAM permit (NOMINAL_DLY - MINUS_PIPE > URAM_MAXDEPTH) || permit
    //    is OK but the required depth <= 2 (NOMINAL_DLY-MINUS_PIPE <= 2)
    if( ( (FPGA_FAMILY==19) || (FPGA_FAMILY==24) || (FPGA_FAMILY==25)  || (FPGA_FAMILY==26) ||(FPGA_FAMILY==27)) &&
          (NOMINAL_DLY <= 8) && (NOMINAL_DLY > MINUS_PIPE) && (
          ((NOMINAL_DLY-MINUS_PIPE)>URAM_MAXDEPTH) ||
           (NOMINAL_DLY-MINUS_PIPE<=2)  ) )  //fabric delay
      begin: fabric_sr
        kitDelay_reg_fft_strm # (.BITWIDTH(WIDTH), .DELAY(NOMINAL_DLY-MINUS_PIPE) )
          dly_im_0 (.nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
                    .inp(inp_im), .outp(outp_im)  );

        kitDelay_reg_fft_strm # (.BITWIDTH(WIDTH), .DELAY(NOMINAL_DLY-MINUS_PIPE) )
          dly_re_0 (.nGrst(nGrst), .rst(rst), .clk(clk), .clkEn(clkEn),
                    .inp(inp_re), .outp(outp_re)  );
      end
  endgenerate

  generate
    if(NOMINAL_DLY<=MINUS_PIPE)    // No delay - only bfly pipes
      begin
        assign outp_im = inp_im;
        assign outp_re = inp_re;
      end
  endgenerate

endmodule



