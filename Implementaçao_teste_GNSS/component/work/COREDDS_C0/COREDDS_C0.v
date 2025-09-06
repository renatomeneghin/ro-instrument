//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Aug  6 15:10:23 2025
// Version: 2023.2 2023.2.0.8
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of COREDDS_C0 to TCL
# Family: PolarFireSoC
# Part Number: MPFS025T-FCVG484E
# Create and Configure the core component COREDDS_C0
create_and_configure_core -core_vlnv {Actel:DirectCore:COREDDS:4.0.108} -component_name {COREDDS_C0} -params {\
"COS_ON:true"  \
"COS_POLARITY:false"  \
"DIE_SIZE:15"  \
"FPGA_FAMILY:27"  \
"FREQ_OFFSET_BITS:3"  \
"LATENCY:0"  \
"MAX_FULL_WAVE_LOGDEPTH:9"  \
"OUTPUT_BITS:18"  \
"PH_ACC_BITS:12"  \
"PH_CORRECTION:0"  \
"PH_INC_LOWER:1000000"  \
"PH_INC_MODE:true"  \
"PH_INC_UPPER:0"  \
"PH_OFFSET_BITS:3"  \
"PH_OFFSET_CONST_LOWER:1"  \
"PH_OFFSET_CONST_UPPER:0"  \
"PH_OFFSET_MODE:0"  \
"QUANTIZER_BITS:12"  \
"SIN_ON:true"  \
"SIN_POLARITY:false"  \
"URAM_MAXDEPTH:0"   }
# Exporting Component Description of COREDDS_C0 to TCL done
*/

// COREDDS_C0
module COREDDS_C0(
    // Inputs
    CLK,
    FREQ_OFFSET,
    FREQ_OFFSET_WE,
    INIT,
    NGRST,
    RSTN,
    // Outputs
    COSINE,
    INIT_OVER,
    SINE
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         CLK;
input  [2:0]  FREQ_OFFSET;
input         FREQ_OFFSET_WE;
input         INIT;
input         NGRST;
input         RSTN;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [17:0] COSINE;
output        INIT_OVER;
output [17:0] SINE;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLK;
wire   [17:0] COSINE_net_0;
wire   [2:0]  FREQ_OFFSET;
wire          FREQ_OFFSET_WE;
wire          INIT;
wire          INIT_OVER_net_0;
wire          NGRST;
wire          RSTN;
wire   [17:0] SINE_net_0;
wire   [17:0] SINE_net_1;
wire   [17:0] COSINE_net_1;
wire          INIT_OVER_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [2:0]  PH_OFFSET_const_net_0;
wire          GND_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign PH_OFFSET_const_net_0 = 3'h0;
assign GND_net               = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign SINE_net_1      = SINE_net_0;
assign SINE[17:0]      = SINE_net_1;
assign COSINE_net_1    = COSINE_net_0;
assign COSINE[17:0]    = COSINE_net_1;
assign INIT_OVER_net_1 = INIT_OVER_net_0;
assign INIT_OVER       = INIT_OVER_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------COREDDS_C0_COREDDS_C0_0_COREDDS   -   Actel:DirectCore:COREDDS:4.0.108
COREDDS_C0_COREDDS_C0_0_COREDDS #( 
        .COS_ON                 ( 1 ),
        .COS_POLARITY           ( 0 ),
        .DIE_SIZE               ( 15 ),
        .FPGA_FAMILY            ( 27 ),
        .FREQ_OFFSET_BITS       ( 3 ),
        .LATENCY                ( 0 ),
        .MAX_FULL_WAVE_LOGDEPTH ( 9 ),
        .OUTPUT_BITS            ( 18 ),
        .PH_ACC_BITS            ( 12 ),
        .PH_CORRECTION          ( 0 ),
        .PH_INC_LOWER           ( 1000000 ),
        .PH_INC_MODE            ( 1 ),
        .PH_INC_UPPER           ( 0 ),
        .PH_OFFSET_BITS         ( 3 ),
        .PH_OFFSET_CONST_LOWER  ( 1 ),
        .PH_OFFSET_CONST_UPPER  ( 0 ),
        .PH_OFFSET_MODE         ( 0 ),
        .QUANTIZER_BITS         ( 12 ),
        .SIN_ON                 ( 1 ),
        .SIN_POLARITY           ( 0 ),
        .URAM_MAXDEPTH          ( 0 ) )
COREDDS_C0_0(
        // Inputs
        .NGRST          ( NGRST ),
        .CLK            ( CLK ),
        .FREQ_OFFSET    ( FREQ_OFFSET ),
        .FREQ_OFFSET_WE ( FREQ_OFFSET_WE ),
        .PH_OFFSET      ( PH_OFFSET_const_net_0 ), // tied to 3'h0 from definition
        .PH_OFFSET_WE   ( GND_net ), // tied to 1'b0 from definition
        .RSTN           ( RSTN ),
        .INIT           ( INIT ),
        // Outputs
        .SINE           ( SINE_net_0 ),
        .COSINE         ( COSINE_net_0 ),
        .INIT_OVER      ( INIT_OVER_net_0 ) 
        );


endmodule
