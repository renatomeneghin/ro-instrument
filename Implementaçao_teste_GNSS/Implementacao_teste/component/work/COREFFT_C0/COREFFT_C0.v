//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Jun 16 16:02:05 2025
// Version: 2023.2 2023.2.0.8
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of COREFFT_C0 to TCL
# Family: PolarFireSoC
# Part Number: MPFS025T-FCVG484E
# Create and Configure the core component COREFFT_C0
create_and_configure_core -core_vlnv {Actel:DirectCore:COREFFT:8.1.100} -component_name {COREFFT_C0} -params {\
"AXI4S_IN_DATA:32"  \
"AXI4S_OUT_DATA:32"  \
"CFG_ARCH:2"  \
"DATA_BITS:32"  \
"FFT_SIZE:1024"  \
"FPGA_FAMILY:27"  \
"INVERSE:0"  \
"MEMBUF:0"  \
"NATIV_AXI4:false"  \
"ORDER:0"  \
"POINTS:256"  \
"SCALE:0"  \
"SCALE_EXP_ON:false"  \
"SCALE_ON:true"  \
"SCALE_SCH:683"  \
"STAGE_1:true"  \
"STAGE_2:true"  \
"STAGE_3:false"  \
"STAGE_4:true"  \
"STAGE_5:false"  \
"STAGE_6:true"  \
"STAGE_7:false"  \
"STAGE_8:true"  \
"STAGE_9:false"  \
"STAGE_10:true"  \
"STAGE_11:false"  \
"STAGE_12:false"  \
"TWID_BITS:32"  \
"URAM_MAXDEPTH:512"  \
"WIDTH:18"   }
# Exporting Component Description of COREFFT_C0 to TCL done
*/

// COREFFT_C0
module COREFFT_C0(
    // Inputs
    CLK,
    CLKEN,
    DATAI_IM,
    DATAI_RE,
    INVERSE_STRM,
    NGRST,
    REFRESH,
    RST,
    SLOWCLK,
    START,
    // Outputs
    DATAO_IM,
    DATAO_RE,
    DATAO_VALID,
    OUTP_READY,
    OVFLOW_FLAG,
    RFS
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         CLK;
input         CLKEN;
input  [31:0] DATAI_IM;
input  [31:0] DATAI_RE;
input         INVERSE_STRM;
input         NGRST;
input         REFRESH;
input         RST;
input         SLOWCLK;
input         START;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] DATAO_IM;
output [31:0] DATAO_RE;
output        DATAO_VALID;
output        OUTP_READY;
output        OVFLOW_FLAG;
output        RFS;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLK;
wire          CLKEN;
wire   [31:0] DATAI_IM;
wire   [31:0] DATAI_RE;
wire   [31:0] DATAO_IM_net_0;
wire   [31:0] DATAO_RE_net_0;
wire          DATAO_VALID_net_0;
wire          INVERSE_STRM;
wire          NGRST;
wire          OUTP_READY_net_0;
wire          OVFLOW_FLAG_net_0;
wire          REFRESH;
wire          RFS_net_0;
wire          RST;
wire          SLOWCLK;
wire          START;
wire   [31:0] DATAO_IM_net_1;
wire   [31:0] DATAO_RE_net_1;
wire          DATAO_VALID_net_1;
wire          OUTP_READY_net_1;
wire          OVFLOW_FLAG_net_1;
wire          RFS_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
wire   [63:0] AXI4_S_TDATAI_const_net_0;
wire   [7:0]  AXI4_S_CONFIGI_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net                    = 1'b0;
assign VCC_net                    = 1'b1;
assign AXI4_S_TDATAI_const_net_0  = 64'h0000000000000000;
assign AXI4_S_CONFIGI_const_net_0 = 8'h00;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign DATAO_IM_net_1    = DATAO_IM_net_0;
assign DATAO_IM[31:0]    = DATAO_IM_net_1;
assign DATAO_RE_net_1    = DATAO_RE_net_0;
assign DATAO_RE[31:0]    = DATAO_RE_net_1;
assign DATAO_VALID_net_1 = DATAO_VALID_net_0;
assign DATAO_VALID       = DATAO_VALID_net_1;
assign OUTP_READY_net_1  = OUTP_READY_net_0;
assign OUTP_READY        = OUTP_READY_net_1;
assign OVFLOW_FLAG_net_1 = OVFLOW_FLAG_net_0;
assign OVFLOW_FLAG       = OVFLOW_FLAG_net_1;
assign RFS_net_1         = RFS_net_0;
assign RFS               = RFS_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------COREFFT_C0_COREFFT_C0_0_COREFFT   -   Actel:DirectCore:COREFFT:8.1.100
COREFFT_C0_COREFFT_C0_0_COREFFT #( 
        .AXI4S_IN_DATA  ( 32 ),
        .AXI4S_OUT_DATA ( 32 ),
        .CFG_ARCH       ( 2 ),
        .DATA_BITS      ( 32 ),
        .FFT_SIZE       ( 1024 ),
        .FPGA_FAMILY    ( 27 ),
        .INVERSE        ( 0 ),
        .MEMBUF         ( 0 ),
        .NATIV_AXI4     ( 0 ),
        .ORDER          ( 0 ),
        .POINTS         ( 256 ),
        .SCALE          ( 0 ),
        .SCALE_EXP_ON   ( 0 ),
        .SCALE_ON       ( 1 ),
        .SCALE_SCH      ( 683 ),
        .TWID_BITS      ( 32 ),
        .URAM_MAXDEPTH  ( 512 ),
        .WIDTH          ( 18 ) )
COREFFT_C0_0(
        // Inputs
        .CLK                   ( CLK ),
        .SLOWCLK               ( SLOWCLK ),
        .NGRST                 ( NGRST ),
        .DATAI_IM              ( DATAI_IM ),
        .DATAI_RE              ( DATAI_RE ),
        .DATAI_VALID           ( GND_net ), // tied to 1'b0 from definition
        .READ_OUTP             ( VCC_net ), // tied to 1'b1 from definition
        .START                 ( START ),
        .INVERSE_STRM          ( INVERSE_STRM ),
        .REFRESH               ( REFRESH ),
        .CLKEN                 ( CLKEN ),
        .RST                   ( RST ),
        .AXI4_S_DATAI_TVALID   ( GND_net ), // tied to 1'b0 from definition
        .AXI4_S_TLASTI         ( GND_net ), // tied to 1'b0 from definition
        .AXI4_S_TDATAI         ( AXI4_S_TDATAI_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .AXI4_M_DATAO_TREADY   ( VCC_net ), // tied to 1'b1 from definition
        .AXI4_S_CONFIGI_TVALID ( GND_net ), // tied to 1'b0 from definition
        .AXI4_S_CONFIGI        ( AXI4_S_CONFIGI_const_net_0 ), // tied to 8'h00 from definition
        .AXI4_M_CONFIGO_TREADY ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DATAO_IM              ( DATAO_IM_net_0 ),
        .DATAO_RE              ( DATAO_RE_net_0 ),
        .DATAO_VALID           ( DATAO_VALID_net_0 ),
        .BUF_READY             (  ),
        .OUTP_READY            ( OUTP_READY_net_0 ),
        .PONG                  (  ),
        .SCALE_EXP             (  ),
        .OVFLOW_FLAG           ( OVFLOW_FLAG_net_0 ),
        .RFS                   ( RFS_net_0 ),
        .AXI4_S_DATAI_TREADY   (  ),
        .AXI4_M_DATAO_TVALID   (  ),
        .AXI4_M_TDATAO         (  ),
        .AXI4_M_TLASTO         (  ),
        .AXI4_S_CONFIGI_TREADY (  ),
        .AXI4_M_CONFIGO_TVALID (  ),
        .AXI4_M_CONFIGO        (  ) 
        );


endmodule
