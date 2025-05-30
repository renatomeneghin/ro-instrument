//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Mar 17 14:00:37 2025
// Version: 2023.2 2023.2.0.8
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// CAPE
module CAPE(
    // Inputs
    APB_SLAVE_SLAVE_PADDR,
    APB_SLAVE_SLAVE_PENABLE,
    APB_SLAVE_SLAVE_PSEL,
    APB_SLAVE_SLAVE_PWDATA,
    APB_SLAVE_SLAVE_PWRITE,
    GPIO_OE,
    GPIO_OUT,
    PCLK,
    PRESETN,
    // Outputs
    APB_SLAVE_SLAVE_PRDATA,
    APB_SLAVE_SLAVE_PREADY,
    APB_SLAVE_SLAVE_PSLVERR,
    GPIO_IN,
    INT_A,
    INT_B,
    INT_C,
    INT_D,
    INT_E,
    P8_PIN13_USER_LED_10,
    P8_PIN19,
    P9_PIN14,
    P9_PIN16,
    P9_PIN42,
    // Inouts
    P8_PIN10_USER_LED_7,
    P8_PIN11_USER_LED_8,
    P8_PIN12_USER_LED_9,
    P8_PIN14_USER_LED_11,
    P8_PIN15,
    P8_PIN16,
    P8_PIN17,
    P8_PIN18,
    P8_PIN20,
    P8_PIN21,
    P8_PIN22,
    P8_PIN23,
    P8_PIN24,
    P8_PIN25,
    P8_PIN26,
    P8_PIN27,
    P8_PIN28,
    P8_PIN29,
    P8_PIN30,
    P8_PIN31,
    P8_PIN32,
    P8_PIN33,
    P8_PIN34,
    P8_PIN35,
    P8_PIN36,
    P8_PIN37,
    P8_PIN38,
    P8_PIN39,
    P8_PIN3_USER_LED_0,
    P8_PIN40,
    P8_PIN41,
    P8_PIN42,
    P8_PIN43,
    P8_PIN44,
    P8_PIN45,
    P8_PIN46,
    P8_PIN4_USER_LED_1,
    P8_PIN5_USER_LED_2,
    P8_PIN6_USER_LED_3,
    P8_PIN7_USER_LED_4,
    P8_PIN8_USER_LED_5,
    P8_PIN9_USER_LED_6,
    P9_PIN12,
    P9_PIN15,
    P9_PIN23,
    P9_PIN25,
    P9_PIN27,
    P9_PIN30,
    P9_PIN41
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [31:0] APB_SLAVE_SLAVE_PADDR;
input         APB_SLAVE_SLAVE_PENABLE;
input         APB_SLAVE_SLAVE_PSEL;
input  [31:0] APB_SLAVE_SLAVE_PWDATA;
input         APB_SLAVE_SLAVE_PWRITE;
input  [27:0] GPIO_OE;
input  [27:0] GPIO_OUT;
input         PCLK;
input         PRESETN;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] APB_SLAVE_SLAVE_PRDATA;
output        APB_SLAVE_SLAVE_PREADY;
output        APB_SLAVE_SLAVE_PSLVERR;
output [27:0] GPIO_IN;
output [7:0]  INT_A;
output [7:0]  INT_B;
output [7:0]  INT_C;
output [7:0]  INT_D;
output [7:0]  INT_E;
output        P8_PIN13_USER_LED_10;
output        P8_PIN19;
output        P9_PIN14;
output        P9_PIN16;
output        P9_PIN42;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout         P8_PIN10_USER_LED_7;
inout         P8_PIN11_USER_LED_8;
inout         P8_PIN12_USER_LED_9;
inout         P8_PIN14_USER_LED_11;
inout         P8_PIN15;
inout         P8_PIN16;
inout         P8_PIN17;
inout         P8_PIN18;
inout         P8_PIN20;
inout         P8_PIN21;
inout         P8_PIN22;
inout         P8_PIN23;
inout         P8_PIN24;
inout         P8_PIN25;
inout         P8_PIN26;
inout         P8_PIN27;
inout         P8_PIN28;
inout         P8_PIN29;
inout         P8_PIN30;
inout         P8_PIN31;
inout         P8_PIN32;
inout         P8_PIN33;
inout         P8_PIN34;
inout         P8_PIN35;
inout         P8_PIN36;
inout         P8_PIN37;
inout         P8_PIN38;
inout         P8_PIN39;
inout         P8_PIN3_USER_LED_0;
inout         P8_PIN40;
inout         P8_PIN41;
inout         P8_PIN42;
inout         P8_PIN43;
inout         P8_PIN44;
inout         P8_PIN45;
inout         P8_PIN46;
inout         P8_PIN4_USER_LED_1;
inout         P8_PIN5_USER_LED_2;
inout         P8_PIN6_USER_LED_3;
inout         P8_PIN7_USER_LED_4;
inout         P8_PIN8_USER_LED_5;
inout         P8_PIN9_USER_LED_6;
inout         P9_PIN12;
inout         P9_PIN15;
inout         P9_PIN23;
inout         P9_PIN25;
inout         P9_PIN27;
inout         P9_PIN30;
inout         P9_PIN41;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0]  APB_BUS_CONVERTER_0_APB_MASTER_PADDR;
wire           APB_BUS_CONVERTER_0_APB_MASTER_PENABLE;
wire   [31:0]  APB_BUS_CONVERTER_0_APB_MASTER_PRDATA;
wire           APB_BUS_CONVERTER_0_APB_MASTER_PREADY;
wire           APB_BUS_CONVERTER_0_APB_MASTER_PSELx;
wire           APB_BUS_CONVERTER_0_APB_MASTER_PSLVERR;
wire   [31:0]  APB_BUS_CONVERTER_0_APB_MASTER_PWDATA;
wire           APB_BUS_CONVERTER_0_APB_MASTER_PWRITE;
wire   [31:0]  APB_SLAVE_SLAVE_PADDR;
wire           APB_SLAVE_SLAVE_PENABLE;
wire   [31:0]  APB_SLAVE_PRDATA;
wire           APB_SLAVE_PREADY;
wire           APB_SLAVE_SLAVE_PSEL;
wire           APB_SLAVE_PSLVERR;
wire   [31:0]  APB_SLAVE_SLAVE_PWDATA;
wire           APB_SLAVE_SLAVE_PWRITE;
wire           CoreAPB3_CAPE_0_APBmslave0_PENABLE;
wire   [31:0]  CoreAPB3_CAPE_0_APBmslave0_PRDATA;
wire           CoreAPB3_CAPE_0_APBmslave0_PREADY;
wire           CoreAPB3_CAPE_0_APBmslave0_PSELx;
wire           CoreAPB3_CAPE_0_APBmslave0_PSLVERR;
wire   [31:0]  CoreAPB3_CAPE_0_APBmslave0_PWDATA;
wire           CoreAPB3_CAPE_0_APBmslave0_PWRITE;
wire   [31:0]  CoreAPB3_CAPE_0_APBmslave1_PRDATA;
wire           CoreAPB3_CAPE_0_APBmslave1_PREADY;
wire           CoreAPB3_CAPE_0_APBmslave1_PSELx;
wire           CoreAPB3_CAPE_0_APBmslave1_PSLVERR;
wire   [31:0]  CoreAPB3_CAPE_0_APBmslave2_PRDATA;
wire           CoreAPB3_CAPE_0_APBmslave2_PREADY;
wire           CoreAPB3_CAPE_0_APBmslave2_PSELx;
wire           CoreAPB3_CAPE_0_APBmslave2_PSLVERR;
wire   [31:0]  CoreAPB3_CAPE_0_APBmslave4_PRDATA;
wire           CoreAPB3_CAPE_0_APBmslave4_PREADY;
wire           CoreAPB3_CAPE_0_APBmslave4_PSELx;
wire           CoreAPB3_CAPE_0_APBmslave4_PSLVERR;
wire   [31:0]  CoreAPB3_CAPE_0_APBmslave5_PRDATA;
wire           CoreAPB3_CAPE_0_APBmslave5_PREADY;
wire           CoreAPB3_CAPE_0_APBmslave5_PSELx;
wire           CoreAPB3_CAPE_0_APBmslave5_PSLVERR;
wire   [27:0]  GPIO_IN_net_0;
wire   [27:0]  GPIO_OE;
wire   [27:0]  GPIO_OUT;
wire   [7:0]   INT_A_net_0;
wire   [15:8]  INT_B_net_0;
wire   [7:0]   INT_C_net_0;
wire   [15:8]  INT_D_net_0;
wire   [20:16] INT_E_net_0;
wire           P8_PIN3_USER_LED_0;
wire           P8_PIN4_USER_LED_1;
wire           P8_PIN5_USER_LED_2;
wire           P8_PIN6_USER_LED_3;
wire           P8_PIN7_USER_LED_4;
wire           P8_PIN8_USER_LED_5;
wire           P8_PIN9_USER_LED_6;
wire           P8_PIN10_USER_LED_7;
wire           P8_PIN11_USER_LED_8;
wire           P8_PIN12_USER_LED_9;
wire           P8_PIN13_USER_LED_10_net_0;
wire           P8_PIN14_USER_LED_11;
wire           P8_PIN15;
wire           P8_PIN16;
wire           P8_PIN17;
wire           P8_PIN18;
wire           P8_PIN19_net_0;
wire           P8_PIN20;
wire           P8_PIN21;
wire           P8_PIN22;
wire           P8_PIN23;
wire           P8_PIN24;
wire           P8_PIN25;
wire           P8_PIN26;
wire           P8_PIN27;
wire           P8_PIN28;
wire           P8_PIN29;
wire           P8_PIN30;
wire           P8_PIN31;
wire           P8_PIN32;
wire           P8_PIN33;
wire           P8_PIN34;
wire           P8_PIN35;
wire           P8_PIN36;
wire           P8_PIN37;
wire           P8_PIN38;
wire           P8_PIN39;
wire           P8_PIN40;
wire           P8_PIN41;
wire           P8_PIN42;
wire           P8_PIN43;
wire           P8_PIN44;
wire           P8_PIN45;
wire           P8_PIN46;
wire           P9_PIN12;
wire           P9_PIN14_net_0;
wire           P9_PIN15;
wire           P9_PIN16_net_0;
wire           P9_PIN23;
wire           P9_PIN25;
wire           P9_PIN27;
wire           P9_PIN30;
wire           P9_PIN41;
wire           P9_PIN42_net_0;
wire           PCLK;
wire           PRESETN;
wire           APB_SLAVE_PREADY_net_0;
wire           APB_SLAVE_PSLVERR_net_0;
wire           P8_PIN13_USER_LED_10_net_1;
wire           P8_PIN19_net_1;
wire           P9_PIN14_net_1;
wire           P9_PIN16_net_1;
wire           P9_PIN42_net_1;
wire   [31:0]  APB_SLAVE_PRDATA_net_0;
wire   [27:0]  GPIO_IN_net_1;
wire   [7:0]   INT_A_net_1;
wire   [7:0]   INT_B_net_1;
wire   [7:0]   INT_C_net_1;
wire   [7:0]   INT_D_net_1;
wire   [4:0]   INT_E_net_1;
wire   [15:0]  INT_net_0;
wire   [20:0]  INT_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [7:5]   INT_E_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:0]  CoreAPB3_CAPE_0_APBmslave0_PADDR;
wire   [7:0]   CoreAPB3_CAPE_0_APBmslave0_PADDR_0;
wire   [7:0]   CoreAPB3_CAPE_0_APBmslave0_PADDR_0_7to0;
wire   [7:0]   CoreAPB3_CAPE_0_APBmslave0_PADDR_1;
wire   [7:0]   CoreAPB3_CAPE_0_APBmslave0_PADDR_1_7to0;
wire   [7:0]   CoreAPB3_CAPE_0_APBmslave0_PADDR_2;
wire   [7:0]   CoreAPB3_CAPE_0_APBmslave0_PADDR_2_7to0;
wire   [7:0]   CoreAPB3_CAPE_0_APBmslave0_PADDR_3;
wire   [7:0]   CoreAPB3_CAPE_0_APBmslave0_PADDR_3_7to0;
wire   [7:0]   CoreAPB3_CAPE_0_APBmslave0_PADDR_4;
wire   [7:0]   CoreAPB3_CAPE_0_APBmslave0_PADDR_4_7to0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign INT_E_const_net_0 = 3'h0;
//--------------------------------------------------------------------
// TieOff assignments
//--------------------------------------------------------------------
assign INT_E[7:5]                   = 3'h0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign APB_SLAVE_PREADY_net_0       = APB_SLAVE_PREADY;
assign APB_SLAVE_SLAVE_PREADY       = APB_SLAVE_PREADY_net_0;
assign APB_SLAVE_PSLVERR_net_0      = APB_SLAVE_PSLVERR;
assign APB_SLAVE_SLAVE_PSLVERR      = APB_SLAVE_PSLVERR_net_0;
assign P8_PIN13_USER_LED_10_net_1   = P8_PIN13_USER_LED_10_net_0;
assign P8_PIN13_USER_LED_10         = P8_PIN13_USER_LED_10_net_1;
assign P8_PIN19_net_1               = P8_PIN19_net_0;
assign P8_PIN19                     = P8_PIN19_net_1;
assign P9_PIN14_net_1               = P9_PIN14_net_0;
assign P9_PIN14                     = P9_PIN14_net_1;
assign P9_PIN16_net_1               = P9_PIN16_net_0;
assign P9_PIN16                     = P9_PIN16_net_1;
assign P9_PIN42_net_1               = P9_PIN42_net_0;
assign P9_PIN42                     = P9_PIN42_net_1;
assign APB_SLAVE_PRDATA_net_0       = APB_SLAVE_PRDATA;
assign APB_SLAVE_SLAVE_PRDATA[31:0] = APB_SLAVE_PRDATA_net_0;
assign GPIO_IN_net_1                = GPIO_IN_net_0;
assign GPIO_IN[27:0]                = GPIO_IN_net_1;
assign INT_A_net_1                  = INT_A_net_0;
assign INT_A[7:0]                   = INT_A_net_1;
assign INT_B_net_1                  = INT_B_net_0;
assign INT_B[7:0]                   = INT_B_net_1;
assign INT_C_net_1                  = INT_C_net_0;
assign INT_C[7:0]                   = INT_C_net_1;
assign INT_D_net_1                  = INT_D_net_0;
assign INT_D[7:0]                   = INT_D_net_1;
assign INT_E_net_1                  = INT_E_net_0;
assign INT_E[4:0]                   = INT_E_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign INT_A_net_0 = INT_net_0[7:0];
assign INT_B_net_0 = INT_net_0[15:8];
assign INT_C_net_0 = INT_net_1[7:0];
assign INT_D_net_0 = INT_net_1[15:8];
assign INT_E_net_0 = INT_net_1[20:16];
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAPB3_CAPE_0_APBmslave0_PADDR_0 = { CoreAPB3_CAPE_0_APBmslave0_PADDR_0_7to0 };
assign CoreAPB3_CAPE_0_APBmslave0_PADDR_0_7to0 = CoreAPB3_CAPE_0_APBmslave0_PADDR[7:0];
assign CoreAPB3_CAPE_0_APBmslave0_PADDR_1 = { CoreAPB3_CAPE_0_APBmslave0_PADDR_1_7to0 };
assign CoreAPB3_CAPE_0_APBmslave0_PADDR_1_7to0 = CoreAPB3_CAPE_0_APBmslave0_PADDR[7:0];
assign CoreAPB3_CAPE_0_APBmslave0_PADDR_2 = { CoreAPB3_CAPE_0_APBmslave0_PADDR_2_7to0 };
assign CoreAPB3_CAPE_0_APBmslave0_PADDR_2_7to0 = CoreAPB3_CAPE_0_APBmslave0_PADDR[7:0];
assign CoreAPB3_CAPE_0_APBmslave0_PADDR_3 = { CoreAPB3_CAPE_0_APBmslave0_PADDR_3_7to0 };
assign CoreAPB3_CAPE_0_APBmslave0_PADDR_3_7to0 = CoreAPB3_CAPE_0_APBmslave0_PADDR[7:0];
assign CoreAPB3_CAPE_0_APBmslave0_PADDR_4 = { CoreAPB3_CAPE_0_APBmslave0_PADDR_4_7to0 };
assign CoreAPB3_CAPE_0_APBmslave0_PADDR_4_7to0 = CoreAPB3_CAPE_0_APBmslave0_PADDR[7:0];

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------APB_BUS_CONVERTER
APB_BUS_CONVERTER APB_BUS_CONVERTER_0(
        // Inputs
        .SLAVE_PADDR    ( APB_SLAVE_SLAVE_PADDR ),
        .SLAVE_PENABLE  ( APB_SLAVE_SLAVE_PENABLE ),
        .SLAVE_PSEL     ( APB_SLAVE_SLAVE_PSEL ),
        .SLAVE_PWDATA   ( APB_SLAVE_SLAVE_PWDATA ),
        .SLAVE_PWRITE   ( APB_SLAVE_SLAVE_PWRITE ),
        .MASTER_PSLVERR ( APB_BUS_CONVERTER_0_APB_MASTER_PSLVERR ),
        .MASTER_PRDATA  ( APB_BUS_CONVERTER_0_APB_MASTER_PRDATA ),
        .MASTER_PREADY  ( APB_BUS_CONVERTER_0_APB_MASTER_PREADY ),
        // Outputs
        .SLAVE_PRDATA   ( APB_SLAVE_PRDATA ),
        .SLAVE_PSLVERR  ( APB_SLAVE_PSLVERR ),
        .SLAVE_PREADY   ( APB_SLAVE_PREADY ),
        .MASTER_PADDR   ( APB_BUS_CONVERTER_0_APB_MASTER_PADDR ),
        .MASTER_PENABLE ( APB_BUS_CONVERTER_0_APB_MASTER_PENABLE ),
        .MASTER_PWRITE  ( APB_BUS_CONVERTER_0_APB_MASTER_PWRITE ),
        .MASTER_PSEL    ( APB_BUS_CONVERTER_0_APB_MASTER_PSELx ),
        .MASTER_PWDATA  ( APB_BUS_CONVERTER_0_APB_MASTER_PWDATA ) 
        );

//--------CAPE_DEFAULT_GPIOS
CAPE_DEFAULT_GPIOS CAPE_DEFAULT_GPIOS_inst_0(
        // Inputs
        .GPIO_OUT    ( GPIO_OUT ),
        .GPIO_OE     ( GPIO_OE ),
        // Outputs
        .GPIO_IN     ( GPIO_IN_net_0 ),
        // Inouts
        .GPIO_0_PAD  ( P8_PIN3_USER_LED_0 ),
        .GPIO_1_PAD  ( P8_PIN4_USER_LED_1 ),
        .GPIO_2_PAD  ( P8_PIN5_USER_LED_2 ),
        .GPIO_3_PAD  ( P8_PIN6_USER_LED_3 ),
        .GPIO_4_PAD  ( P8_PIN7_USER_LED_4 ),
        .GPIO_5_PAD  ( P8_PIN8_USER_LED_5 ),
        .GPIO_6_PAD  ( P8_PIN9_USER_LED_6 ),
        .GPIO_7_PAD  ( P8_PIN10_USER_LED_7 ),
        .GPIO_8_PAD  ( P8_PIN11_USER_LED_8 ),
        .GPIO_9_PAD  ( P8_PIN12_USER_LED_9 ),
        .GPIO_11_PAD ( P8_PIN14_USER_LED_11 ),
        .GPIO_12_PAD ( P8_PIN15 ),
        .GPIO_13_PAD ( P8_PIN16 ),
        .GPIO_14_PAD ( P8_PIN17 ),
        .GPIO_15_PAD ( P8_PIN18 ),
        .GPIO_17_PAD ( P8_PIN20 ),
        .GPIO_18_PAD ( P8_PIN21 ),
        .GPIO_19_PAD ( P8_PIN22 ),
        .GPIO_20_PAD ( P8_PIN23 ),
        .GPIO_21_PAD ( P8_PIN24 ),
        .GPIO_22_PAD ( P8_PIN25 ),
        .GPIO_23_PAD ( P8_PIN26 ),
        .GPIO_24_PAD ( P8_PIN27 ),
        .GPIO_25_PAD ( P8_PIN28 ),
        .GPIO_26_PAD ( P8_PIN29 ),
        .GPIO_27_PAD ( P8_PIN30 ) 
        );

//--------CoreAPB3_CAPE
CoreAPB3_CAPE CoreAPB3_CAPE_0(
        // Inputs
        .PADDR     ( APB_BUS_CONVERTER_0_APB_MASTER_PADDR ),
        .PSEL      ( APB_BUS_CONVERTER_0_APB_MASTER_PSELx ),
        .PENABLE   ( APB_BUS_CONVERTER_0_APB_MASTER_PENABLE ),
        .PWRITE    ( APB_BUS_CONVERTER_0_APB_MASTER_PWRITE ),
        .PWDATA    ( APB_BUS_CONVERTER_0_APB_MASTER_PWDATA ),
        .PRDATAS0  ( CoreAPB3_CAPE_0_APBmslave0_PRDATA ),
        .PREADYS0  ( CoreAPB3_CAPE_0_APBmslave0_PREADY ),
        .PSLVERRS0 ( CoreAPB3_CAPE_0_APBmslave0_PSLVERR ),
        .PRDATAS1  ( CoreAPB3_CAPE_0_APBmslave1_PRDATA ),
        .PREADYS1  ( CoreAPB3_CAPE_0_APBmslave1_PREADY ),
        .PSLVERRS1 ( CoreAPB3_CAPE_0_APBmslave1_PSLVERR ),
        .PRDATAS2  ( CoreAPB3_CAPE_0_APBmslave2_PRDATA ),
        .PREADYS2  ( CoreAPB3_CAPE_0_APBmslave2_PREADY ),
        .PSLVERRS2 ( CoreAPB3_CAPE_0_APBmslave2_PSLVERR ),
        .PRDATAS4  ( CoreAPB3_CAPE_0_APBmslave4_PRDATA ),
        .PREADYS4  ( CoreAPB3_CAPE_0_APBmslave4_PREADY ),
        .PSLVERRS4 ( CoreAPB3_CAPE_0_APBmslave4_PSLVERR ),
        .PRDATAS5  ( CoreAPB3_CAPE_0_APBmslave5_PRDATA ),
        .PREADYS5  ( CoreAPB3_CAPE_0_APBmslave5_PREADY ),
        .PSLVERRS5 ( CoreAPB3_CAPE_0_APBmslave5_PSLVERR ),
        // Outputs
        .PRDATA    ( APB_BUS_CONVERTER_0_APB_MASTER_PRDATA ),
        .PREADY    ( APB_BUS_CONVERTER_0_APB_MASTER_PREADY ),
        .PSLVERR   ( APB_BUS_CONVERTER_0_APB_MASTER_PSLVERR ),
        .PADDRS    ( CoreAPB3_CAPE_0_APBmslave0_PADDR ),
        .PSELS0    ( CoreAPB3_CAPE_0_APBmslave0_PSELx ),
        .PENABLES  ( CoreAPB3_CAPE_0_APBmslave0_PENABLE ),
        .PWRITES   ( CoreAPB3_CAPE_0_APBmslave0_PWRITE ),
        .PWDATAS   ( CoreAPB3_CAPE_0_APBmslave0_PWDATA ),
        .PSELS1    ( CoreAPB3_CAPE_0_APBmslave1_PSELx ),
        .PSELS2    ( CoreAPB3_CAPE_0_APBmslave2_PSELx ),
        .PSELS4    ( CoreAPB3_CAPE_0_APBmslave4_PSELx ),
        .PSELS5    ( CoreAPB3_CAPE_0_APBmslave5_PSELx ) 
        );

//--------P8_GPIO_UPPER
P8_GPIO_UPPER P8_GPIO_UPPER_0(
        // Inputs
        .APB_bif_PENABLE ( CoreAPB3_CAPE_0_APBmslave0_PENABLE ),
        .APB_bif_PSEL    ( CoreAPB3_CAPE_0_APBmslave1_PSELx ),
        .APB_bif_PWRITE  ( CoreAPB3_CAPE_0_APBmslave0_PWRITE ),
        .PCLK            ( PCLK ),
        .PRESETN         ( PRESETN ),
        .APB_bif_PADDR   ( CoreAPB3_CAPE_0_APBmslave0_PADDR_1 ),
        .APB_bif_PWDATA  ( CoreAPB3_CAPE_0_APBmslave0_PWDATA ),
        // Outputs
        .APB_bif_PREADY  ( CoreAPB3_CAPE_0_APBmslave1_PREADY ),
        .APB_bif_PSLVERR ( CoreAPB3_CAPE_0_APBmslave1_PSLVERR ),
        .APB_bif_PRDATA  ( CoreAPB3_CAPE_0_APBmslave1_PRDATA ),
        .INT             ( INT_net_0 ),
        // Inouts
        .GPIO_0_PAD      ( P8_PIN31 ),
        .GPIO_10_PAD     ( P8_PIN41 ),
        .GPIO_11_PAD     ( P8_PIN42 ),
        .GPIO_12_PAD     ( P8_PIN43 ),
        .GPIO_13_PAD     ( P8_PIN44 ),
        .GPIO_14_PAD     ( P8_PIN45 ),
        .GPIO_15_PAD     ( P8_PIN46 ),
        .GPIO_1_PAD      ( P8_PIN32 ),
        .GPIO_2_PAD      ( P8_PIN33 ),
        .GPIO_3_PAD      ( P8_PIN34 ),
        .GPIO_4_PAD      ( P8_PIN35 ),
        .GPIO_5_PAD      ( P8_PIN36 ),
        .GPIO_6_PAD      ( P8_PIN37 ),
        .GPIO_7_PAD      ( P8_PIN38 ),
        .GPIO_8_PAD      ( P8_PIN39 ),
        .GPIO_9_PAD      ( P8_PIN40 ) 
        );

//--------P9_GPIO
P9_GPIO P9_GPIO_0(
        // Inputs
        .APB_bif_PENABLE ( CoreAPB3_CAPE_0_APBmslave0_PENABLE ),
        .APB_bif_PSEL    ( CoreAPB3_CAPE_0_APBmslave2_PSELx ),
        .APB_bif_PWRITE  ( CoreAPB3_CAPE_0_APBmslave0_PWRITE ),
        .PCLK            ( PCLK ),
        .PRESETN         ( PRESETN ),
        .APB_bif_PADDR   ( CoreAPB3_CAPE_0_APBmslave0_PADDR_2 ),
        .APB_bif_PWDATA  ( CoreAPB3_CAPE_0_APBmslave0_PWDATA ),
        // Outputs
        .APB_bif_PREADY  ( CoreAPB3_CAPE_0_APBmslave2_PREADY ),
        .APB_bif_PSLVERR ( CoreAPB3_CAPE_0_APBmslave2_PSLVERR ),
        .APB_bif_PRDATA  ( CoreAPB3_CAPE_0_APBmslave2_PRDATA ),
        .INT             ( INT_net_1 ),
        // Inouts
        .GPIO_10_PAD     ( P9_PIN23 ),
        .GPIO_12_PAD     ( P9_PIN25 ),
        .GPIO_14_PAD     ( P9_PIN27 ),
        .GPIO_17_PAD     ( P9_PIN30 ),
        .GPIO_19_PAD     ( P9_PIN41 ),
        .GPIO_1_PAD      ( P9_PIN12 ),
        .GPIO_4_PAD      ( P9_PIN15 ) 
        );

//--------CAPE_PWM
CAPE_PWM PWM_0(
        // Inputs
        .APBslave_PENABLE ( CoreAPB3_CAPE_0_APBmslave0_PENABLE ),
        .APBslave_PSEL    ( CoreAPB3_CAPE_0_APBmslave0_PSELx ),
        .APBslave_PWRITE  ( CoreAPB3_CAPE_0_APBmslave0_PWRITE ),
        .PCLK             ( PCLK ),
        .PRESETN          ( PRESETN ),
        .APBslave_PADDR   ( CoreAPB3_CAPE_0_APBmslave0_PADDR_0 ),
        .APBslave_PWDATA  ( CoreAPB3_CAPE_0_APBmslave0_PWDATA ),
        // Outputs
        .APBslave_PREADY  ( CoreAPB3_CAPE_0_APBmslave0_PREADY ),
        .APBslave_PSLVERR ( CoreAPB3_CAPE_0_APBmslave0_PSLVERR ),
        .PWM_0            ( P9_PIN42_net_0 ),
        .PWM_1            (  ),
        .APBslave_PRDATA  ( CoreAPB3_CAPE_0_APBmslave0_PRDATA ) 
        );

//--------CAPE_PWM
CAPE_PWM PWM_1(
        // Inputs
        .APBslave_PENABLE ( CoreAPB3_CAPE_0_APBmslave0_PENABLE ),
        .APBslave_PSEL    ( CoreAPB3_CAPE_0_APBmslave4_PSELx ),
        .APBslave_PWRITE  ( CoreAPB3_CAPE_0_APBmslave0_PWRITE ),
        .PCLK             ( PCLK ),
        .PRESETN          ( PRESETN ),
        .APBslave_PADDR   ( CoreAPB3_CAPE_0_APBmslave0_PADDR_3 ),
        .APBslave_PWDATA  ( CoreAPB3_CAPE_0_APBmslave0_PWDATA ),
        // Outputs
        .APBslave_PREADY  ( CoreAPB3_CAPE_0_APBmslave4_PREADY ),
        .APBslave_PSLVERR ( CoreAPB3_CAPE_0_APBmslave4_PSLVERR ),
        .PWM_0            ( P9_PIN14_net_0 ),
        .PWM_1            ( P9_PIN16_net_0 ),
        .APBslave_PRDATA  ( CoreAPB3_CAPE_0_APBmslave4_PRDATA ) 
        );

//--------CAPE_PWM
CAPE_PWM PWM_2(
        // Inputs
        .APBslave_PENABLE ( CoreAPB3_CAPE_0_APBmslave0_PENABLE ),
        .APBslave_PSEL    ( CoreAPB3_CAPE_0_APBmslave5_PSELx ),
        .APBslave_PWRITE  ( CoreAPB3_CAPE_0_APBmslave0_PWRITE ),
        .PCLK             ( PCLK ),
        .PRESETN          ( PRESETN ),
        .APBslave_PADDR   ( CoreAPB3_CAPE_0_APBmslave0_PADDR_4 ),
        .APBslave_PWDATA  ( CoreAPB3_CAPE_0_APBmslave0_PWDATA ),
        // Outputs
        .APBslave_PREADY  ( CoreAPB3_CAPE_0_APBmslave5_PREADY ),
        .APBslave_PSLVERR ( CoreAPB3_CAPE_0_APBmslave5_PSLVERR ),
        .PWM_0            ( P8_PIN19_net_0 ),
        .PWM_1            ( P8_PIN13_USER_LED_10_net_0 ),
        .APBslave_PRDATA  ( CoreAPB3_CAPE_0_APBmslave5_PRDATA ) 
        );


endmodule
