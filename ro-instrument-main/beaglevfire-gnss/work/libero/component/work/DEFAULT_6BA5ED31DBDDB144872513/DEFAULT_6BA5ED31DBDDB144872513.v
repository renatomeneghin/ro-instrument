//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Mar 17 14:00:59 2025
// Version: 2023.2 2023.2.0.8
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// DEFAULT_6BA5ED31DBDDB144872513
module DEFAULT_6BA5ED31DBDDB144872513(
    // Inputs
    ADC_IRQn,
    EMMC_STRB,
    M2_PER0_N,
    M2_PER0_P,
    M2_UART_CTS,
    M2_UART_RXD,
    P9_11,
    P9_21,
    P9_26,
    P9_29,
    PHY_INTn,
    REFCLK,
    REFCLK_N,
    SD_DET,
    SGMII_RX0_N,
    SGMII_RX0_P,
    SGMII_RX1_N,
    SGMII_RX1_P,
    UART0_RXD,
    USB0_CLK,
    USB0_DIR,
    USB0_NXT,
    USB0_OCn,
    USER_BUTTON,
    XCVR_0A_REFCLK_N,
    XCVR_0A_REFCLK_P,
    // Outputs
    ADC_CSn,
    ADC_MCLK,
    ADC_SCK,
    CA,
    CK,
    CKE,
    CK_N,
    CS,
    CSI1_PWND,
    DM,
    EMMC_CLK,
    EMMC_RSTN,
    M2_PERST0n,
    M2_PET0_N,
    M2_PET0_P,
    M2_UART_RTS,
    M2_UART_TXD,
    M2_W_DISABLE1,
    M2_W_DISABLE2,
    ODT,
    P8_PIN13_USER_LED_10,
    P8_PIN19,
    P9_13,
    P9_17,
    P9_18,
    P9_22,
    P9_24,
    P9_28,
    P9_31,
    P9_PIN14,
    P9_PIN16,
    P9_PIN42,
    PHY_MDC,
    PHY_RSTn,
    RESET_N,
    SD_CARD_CS,
    SGMII_TX0_N,
    SGMII_TX0_P,
    SGMII_TX1_N,
    SGMII_TX1_P,
    UART0_TXD,
    USB0_RESETB,
    USB0_STP,
    VIO_ENABLE,
    // Inouts
    ADC_MISO,
    ADC_MOSI,
    DQ,
    DQS,
    DQS_N,
    EMMC_CMD,
    EMMC_DATA0,
    EMMC_DATA1,
    EMMC_DATA2,
    EMMC_DATA3,
    EMMC_DATA4,
    EMMC_DATA5,
    EMMC_DATA6,
    EMMC_DATA7,
    I2C_1_SCL,
    I2C_1_SDA,
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
    P9_19,
    P9_20,
    P9_PIN12,
    P9_PIN15,
    P9_PIN23,
    P9_PIN25,
    P9_PIN27,
    P9_PIN30,
    P9_PIN41,
    PHY_MDIO,
    USB0_DATA0,
    USB0_DATA1,
    USB0_DATA2,
    USB0_DATA3,
    USB0_DATA4,
    USB0_DATA5,
    USB0_DATA6,
    USB0_DATA7
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         ADC_IRQn;
input         EMMC_STRB;
input         M2_PER0_N;
input         M2_PER0_P;
input         M2_UART_CTS;
input         M2_UART_RXD;
input         P9_11;
input         P9_21;
input         P9_26;
input         P9_29;
input         PHY_INTn;
input         REFCLK;
input         REFCLK_N;
input         SD_DET;
input         SGMII_RX0_N;
input         SGMII_RX0_P;
input         SGMII_RX1_N;
input         SGMII_RX1_P;
input         UART0_RXD;
input         USB0_CLK;
input         USB0_DIR;
input         USB0_NXT;
input         USB0_OCn;
input         USER_BUTTON;
input         XCVR_0A_REFCLK_N;
input         XCVR_0A_REFCLK_P;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        ADC_CSn;
output        ADC_MCLK;
output        ADC_SCK;
output [5:0]  CA;
output        CK;
output        CKE;
output        CK_N;
output        CS;
output        CSI1_PWND;
output [3:0]  DM;
output        EMMC_CLK;
output        EMMC_RSTN;
output        M2_PERST0n;
output        M2_PET0_N;
output        M2_PET0_P;
output        M2_UART_RTS;
output        M2_UART_TXD;
output        M2_W_DISABLE1;
output        M2_W_DISABLE2;
output        ODT;
output        P8_PIN13_USER_LED_10;
output        P8_PIN19;
output        P9_13;
output        P9_17;
output        P9_18;
output        P9_22;
output        P9_24;
output        P9_28;
output        P9_31;
output        P9_PIN14;
output        P9_PIN16;
output        P9_PIN42;
output        PHY_MDC;
output        PHY_RSTn;
output        RESET_N;
output        SD_CARD_CS;
output        SGMII_TX0_N;
output        SGMII_TX0_P;
output        SGMII_TX1_N;
output        SGMII_TX1_P;
output        UART0_TXD;
output        USB0_RESETB;
output        USB0_STP;
output        VIO_ENABLE;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout         ADC_MISO;
inout         ADC_MOSI;
inout  [31:0] DQ;
inout  [3:0]  DQS;
inout  [3:0]  DQS_N;
inout         EMMC_CMD;
inout         EMMC_DATA0;
inout         EMMC_DATA1;
inout         EMMC_DATA2;
inout         EMMC_DATA3;
inout         EMMC_DATA4;
inout         EMMC_DATA5;
inout         EMMC_DATA6;
inout         EMMC_DATA7;
inout         I2C_1_SCL;
inout         I2C_1_SDA;
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
inout         P9_19;
inout         P9_20;
inout         P9_PIN12;
inout         P9_PIN15;
inout         P9_PIN23;
inout         P9_PIN25;
inout         P9_PIN27;
inout         P9_PIN30;
inout         P9_PIN41;
inout         PHY_MDIO;
inout         USB0_DATA0;
inout         USB0_DATA1;
inout         USB0_DATA2;
inout         USB0_DATA3;
inout         USB0_DATA4;
inout         USB0_DATA5;
inout         USB0_DATA6;
inout         USB0_DATA7;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          ADC_CSn_net_0;
wire          ADC_IRQn;
wire          ADC_MCLK_net_0;
wire          ADC_MISO;
wire          ADC_MOSI;
wire          ADC_SCK_net_0;
wire          BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PENABLE;
wire   [31:0] BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PRDATA;
wire          BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PREADY;
wire          BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PSELx;
wire          BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PSLVERR;
wire   [31:0] BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PWDATA;
wire          BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PWRITE;
wire   [37:0] BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARADDR;
wire   [1:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARBURST;
wire   [3:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARCACHE;
wire   [7:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARID;
wire   [7:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARLEN;
wire   [2:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARPROT;
wire   [3:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARQOS;
wire          BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARREADY;
wire   [2:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARSIZE;
wire          BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARVALID;
wire   [37:0] BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWADDR;
wire   [1:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWBURST;
wire   [3:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWCACHE;
wire   [7:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWID;
wire   [7:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWLEN;
wire   [2:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWPROT;
wire   [3:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWQOS;
wire          BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWREADY;
wire   [2:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWSIZE;
wire          BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWVALID;
wire   [7:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_BID;
wire          BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_BREADY;
wire   [1:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_BRESP;
wire   [0:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_BUSER;
wire          BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_BVALID;
wire   [63:0] BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RDATA;
wire   [7:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RID;
wire          BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RLAST;
wire          BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RREADY;
wire   [1:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RRESP;
wire   [0:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RUSER;
wire          BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RVALID;
wire   [63:0] BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_WDATA;
wire          BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_WLAST;
wire          BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_WREADY;
wire   [7:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_WSTRB;
wire          BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_WVALID;
wire   [27:0] BVF_RISCV_SUBSYSTEM_GPIO_2_M2F;
wire   [27:0] BVF_RISCV_SUBSYSTEM_GPIO_2_OE_M2F;
wire   [31:0] BVF_RISCV_SUBSYSTEM_M2_APB_MTARGET_PRDATA;
wire          BVF_RISCV_SUBSYSTEM_M2_APB_MTARGET_PREADY;
wire          BVF_RISCV_SUBSYSTEM_M2_APB_MTARGET_PSELx;
wire          BVF_RISCV_SUBSYSTEM_M2_APB_MTARGET_PSLVERR;
wire          BVF_RISCV_SUBSYSTEM_MSS_DLL_LOCKS;
wire          BVF_RISCV_SUBSYSTEM_MSS_RESET_N_M2F;
wire   [5:0]  CA_net_0;
wire   [27:0] CAPE_GPIO_IN;
wire   [7:0]  CAPE_INT_A;
wire   [7:0]  CAPE_INT_B;
wire   [7:0]  CAPE_INT_C;
wire   [7:0]  CAPE_INT_D;
wire   [7:0]  CAPE_INT_E;
wire          CK_net_0;
wire          CK_N_net_0;
wire          CKE_net_0;
wire          CLOCKS_AND_RESETS_CLKS_TO_XCVR_BIT_CLK;
wire          CLOCKS_AND_RESETS_CLKS_TO_XCVR_LOCK;
wire          CLOCKS_AND_RESETS_CLKS_TO_XCVR_REF_CLK_TO_LANE;
wire          CLOCKS_AND_RESETS_FIC_0_ACLK;
wire          CLOCKS_AND_RESETS_FIC_1_ACLK;
wire          CLOCKS_AND_RESETS_FIC_1_FABRIC_RESET_N;
wire          CLOCKS_AND_RESETS_FIC_2_ACLK;
wire          CLOCKS_AND_RESETS_FIC_3_FABRIC_RESET_N;
wire          CLOCKS_AND_RESETS_FIC_3_PCLK;
wire          CLOCKS_AND_RESETS_PCIe_CLK_125MHz;
wire          CLOCKS_AND_RESETS_PCIE_INIT_DONE;
wire          CLOCKS_AND_RESETS_PCIe_REFERENCE_CLK;
wire          CS_net_0;
wire   [3:0]  DM_net_0;
wire   [31:0] DQ;
wire   [3:0]  DQS;
wire   [3:0]  DQS_N;
wire          EMMC_CLK_net_0;
wire          EMMC_CMD;
wire          EMMC_DATA0;
wire          EMMC_DATA1;
wire          EMMC_DATA2;
wire          EMMC_DATA3;
wire          EMMC_DATA4;
wire          EMMC_DATA5;
wire          EMMC_DATA6;
wire          EMMC_DATA7;
wire          EMMC_RSTN_net_0;
wire          EMMC_STRB;
wire          I2C_1_SCL;
wire          I2C_1_SDA;
wire   [37:0] M2_INTERFACE_0_AXI4_INITIATOR_ARADDR;
wire   [1:0]  M2_INTERFACE_0_AXI4_INITIATOR_ARBURST;
wire   [3:0]  M2_INTERFACE_0_AXI4_INITIATOR_ARCACHE;
wire   [7:0]  M2_INTERFACE_0_AXI4_INITIATOR_ARLEN;
wire   [2:0]  M2_INTERFACE_0_AXI4_INITIATOR_ARPROT;
wire   [3:0]  M2_INTERFACE_0_AXI4_INITIATOR_ARQOS;
wire          M2_INTERFACE_0_AXI4_INITIATOR_ARREADY;
wire   [3:0]  M2_INTERFACE_0_AXI4_INITIATOR_ARREGION;
wire   [2:0]  M2_INTERFACE_0_AXI4_INITIATOR_ARSIZE;
wire   [0:0]  M2_INTERFACE_0_AXI4_INITIATOR_ARUSER;
wire          M2_INTERFACE_0_AXI4_INITIATOR_ARVALID;
wire   [37:0] M2_INTERFACE_0_AXI4_INITIATOR_AWADDR;
wire   [1:0]  M2_INTERFACE_0_AXI4_INITIATOR_AWBURST;
wire   [3:0]  M2_INTERFACE_0_AXI4_INITIATOR_AWCACHE;
wire   [7:0]  M2_INTERFACE_0_AXI4_INITIATOR_AWLEN;
wire   [2:0]  M2_INTERFACE_0_AXI4_INITIATOR_AWPROT;
wire   [3:0]  M2_INTERFACE_0_AXI4_INITIATOR_AWQOS;
wire          M2_INTERFACE_0_AXI4_INITIATOR_AWREADY;
wire   [3:0]  M2_INTERFACE_0_AXI4_INITIATOR_AWREGION;
wire   [2:0]  M2_INTERFACE_0_AXI4_INITIATOR_AWSIZE;
wire   [0:0]  M2_INTERFACE_0_AXI4_INITIATOR_AWUSER;
wire          M2_INTERFACE_0_AXI4_INITIATOR_AWVALID;
wire          M2_INTERFACE_0_AXI4_INITIATOR_BREADY;
wire   [1:0]  M2_INTERFACE_0_AXI4_INITIATOR_BRESP;
wire          M2_INTERFACE_0_AXI4_INITIATOR_BVALID;
wire   [63:0] M2_INTERFACE_0_AXI4_INITIATOR_RDATA;
wire          M2_INTERFACE_0_AXI4_INITIATOR_RLAST;
wire          M2_INTERFACE_0_AXI4_INITIATOR_RREADY;
wire   [1:0]  M2_INTERFACE_0_AXI4_INITIATOR_RRESP;
wire          M2_INTERFACE_0_AXI4_INITIATOR_RVALID;
wire   [63:0] M2_INTERFACE_0_AXI4_INITIATOR_WDATA;
wire          M2_INTERFACE_0_AXI4_INITIATOR_WLAST;
wire          M2_INTERFACE_0_AXI4_INITIATOR_WREADY;
wire   [7:0]  M2_INTERFACE_0_AXI4_INITIATOR_WSTRB;
wire   [0:0]  M2_INTERFACE_0_AXI4_INITIATOR_WUSER;
wire          M2_INTERFACE_0_AXI4_INITIATOR_WVALID;
wire          M2_INTERFACE_0_PCIE_INTERRUPT;
wire          M2_PER0_N;
wire          M2_PER0_P;
wire          M2_PERST0n_net_0;
wire          M2_PET0_N_net_0;
wire          M2_PET0_P_net_0;
wire          M2_UART_CTS;
wire          M2_UART_RTS_net_0;
wire          M2_UART_RXD;
wire          M2_UART_TXD_net_0;
wire          ODT_net_0;
wire          P8_PIN3_USER_LED_0;
wire          P8_PIN4_USER_LED_1;
wire          P8_PIN5_USER_LED_2;
wire          P8_PIN6_USER_LED_3;
wire          P8_PIN7_USER_LED_4;
wire          P8_PIN8_USER_LED_5;
wire          P8_PIN9_USER_LED_6;
wire          P8_PIN10_USER_LED_7;
wire          P8_PIN11_USER_LED_8;
wire          P8_PIN12_USER_LED_9;
wire          P8_PIN13_USER_LED_10_net_0;
wire          P8_PIN14_USER_LED_11;
wire          P8_PIN15;
wire          P8_PIN16;
wire          P8_PIN17;
wire          P8_PIN18;
wire          P8_PIN19_net_0;
wire          P8_PIN20;
wire          P8_PIN21;
wire          P8_PIN22;
wire          P8_PIN23;
wire          P8_PIN24;
wire          P8_PIN25;
wire          P8_PIN26;
wire          P8_PIN27;
wire          P8_PIN28;
wire          P8_PIN29;
wire          P8_PIN30;
wire          P8_PIN31;
wire          P8_PIN32;
wire          P8_PIN33;
wire          P8_PIN34;
wire          P8_PIN35;
wire          P8_PIN36;
wire          P8_PIN37;
wire          P8_PIN38;
wire          P8_PIN39;
wire          P8_PIN40;
wire          P8_PIN41;
wire          P8_PIN42;
wire          P8_PIN43;
wire          P8_PIN44;
wire          P8_PIN45;
wire          P8_PIN46;
wire          P9_11;
wire          P9_13_net_0;
wire          P9_17_net_0;
wire          P9_18_net_0;
wire          P9_19;
wire          P9_20;
wire          P9_21;
wire          P9_22_net_0;
wire          P9_24_net_0;
wire          P9_26;
wire          P9_28_net_0;
wire          P9_29;
wire          P9_31_net_0;
wire          P9_PIN12;
wire          P9_PIN14_net_0;
wire          P9_PIN15;
wire          P9_PIN16_net_0;
wire          P9_PIN23;
wire          P9_PIN25;
wire          P9_PIN27;
wire          P9_PIN30;
wire          P9_PIN41;
wire          P9_PIN42_net_0;
wire          PHY_INTn;
wire          PHY_MDC_net_0;
wire          PHY_MDIO;
wire          REFCLK;
wire          REFCLK_N;
wire          RESET_N_net_0;
wire          SD_CARD_CS_net_0;
wire          SD_DET;
wire          SGMII_RX0_N;
wire          SGMII_RX0_P;
wire          SGMII_RX1_N;
wire          SGMII_RX1_P;
wire          SGMII_TX0_N_net_0;
wire          SGMII_TX0_P_net_0;
wire          SGMII_TX1_N_net_0;
wire          SGMII_TX1_P_net_0;
wire          UART0_RXD;
wire          UART0_TXD_net_0;
wire          USB0_CLK;
wire          USB0_DATA0;
wire          USB0_DATA1;
wire          USB0_DATA2;
wire          USB0_DATA3;
wire          USB0_DATA4;
wire          USB0_DATA5;
wire          USB0_DATA6;
wire          USB0_DATA7;
wire          USB0_DIR;
wire          USB0_NXT;
wire          USB0_OCn;
wire          USB0_RESETB_net_0;
wire          USB0_STP_net_0;
wire          USER_BUTTON;
wire          VIO_ENABLE_net_0;
wire          XCVR_0A_REFCLK_N;
wire          XCVR_0A_REFCLK_P;
wire          USB0_STP_net_1;
wire          UART0_TXD_net_1;
wire          RESET_N_net_1;
wire          ODT_net_1;
wire          CKE_net_1;
wire          CS_net_1;
wire          CK_net_1;
wire          CK_N_net_1;
wire          USB0_RESETB_net_1;
wire          SGMII_TX0_P_net_1;
wire          SGMII_TX0_N_net_1;
wire          SGMII_TX1_P_net_1;
wire          SGMII_TX1_N_net_1;
wire   [5:0]  CA_net_1;
wire   [3:0]  DM_net_1;
wire          SD_CARD_CS_net_1;
wire          ADC_CSn_net_1;
wire          ADC_SCK_net_1;
wire          ADC_MCLK_net_1;
wire          USB0_RESETB_net_2;
wire          PHY_MDC_net_1;
wire          EMMC_CLK_net_1;
wire          EMMC_RSTN_net_1;
wire          VIO_ENABLE_net_1;
wire          P8_PIN13_USER_LED_10_net_1;
wire          P8_PIN19_net_1;
wire          P9_13_net_1;
wire          P9_PIN14_net_1;
wire          P9_PIN16_net_1;
wire          P9_PIN42_net_1;
wire          P9_24_net_1;
wire          P9_17_net_1;
wire          P9_22_net_1;
wire          P9_18_net_1;
wire          P9_28_net_1;
wire          P9_31_net_1;
wire          M2_UART_TXD_net_1;
wire          M2_UART_RTS_net_1;
wire          M2_PERST0n_net_1;
wire          M2_PET0_N_net_1;
wire          M2_PET0_P_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
wire   [7:3]  MSS_INT_F2M_3_7_const_net_0;
wire   [55:48]MSS_INT_F2M_F_const_net_0;
wire   [58:56]MSS_INT_F2M_56_58_const_net_0;
wire   [3:0]  FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWID_const_net_0;
wire   [37:0] FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWADDR_const_net_0;
wire   [7:0]  FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWLEN_const_net_0;
wire   [2:0]  FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWSIZE_const_net_0;
wire   [1:0]  FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWBURST_const_net_0;
wire   [3:0]  FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWCACHE_const_net_0;
wire   [2:0]  FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWPROT_const_net_0;
wire   [3:0]  FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWQOS_const_net_0;
wire   [63:0] FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WDATA_const_net_0;
wire   [7:0]  FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WSTRB_const_net_0;
wire   [3:0]  FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARID_const_net_0;
wire   [37:0] FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARADDR_const_net_0;
wire   [7:0]  FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARLEN_const_net_0;
wire   [2:0]  FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARSIZE_const_net_0;
wire   [1:0]  FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARBURST_const_net_0;
wire   [3:0]  FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARCACHE_const_net_0;
wire   [2:0]  FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARPROT_const_net_0;
wire   [3:0]  FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARQOS_const_net_0;
wire   [3:0]  FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWID_const_net_0;
wire   [37:0] FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWADDR_const_net_0;
wire   [7:0]  FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWLEN_const_net_0;
wire   [2:0]  FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWSIZE_const_net_0;
wire   [1:0]  FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWBURST_const_net_0;
wire   [3:0]  FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWCACHE_const_net_0;
wire   [2:0]  FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWPROT_const_net_0;
wire   [3:0]  FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWQOS_const_net_0;
wire   [63:0] FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WDATA_const_net_0;
wire   [7:0]  FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WSTRB_const_net_0;
wire   [3:0]  FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARID_const_net_0;
wire   [37:0] FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARADDR_const_net_0;
wire   [7:0]  FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARLEN_const_net_0;
wire   [2:0]  FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARSIZE_const_net_0;
wire   [1:0]  FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARBURST_const_net_0;
wire   [3:0]  FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARCACHE_const_net_0;
wire   [2:0]  FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARPROT_const_net_0;
wire   [3:0]  FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARQOS_const_net_0;
wire   [31:0] CSI_APB_MTARGET_PRDATAS2_const_net_0;
wire   [31:0] HSI_APB_MTARGET_PRDATAS4_const_net_0;
wire   [7:0]  FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BID_const_net_0;
wire   [1:0]  FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BRESP_const_net_0;
wire   [7:0]  FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RID_const_net_0;
wire   [63:0] FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RDATA_const_net_0;
wire   [1:0]  FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RRESP_const_net_0;
wire   [3:0]  AXI_TARGET_MASTER0_AWREGION_const_net_0;
wire   [3:0]  AXI_TARGET_MASTER0_ARREGION_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:0] BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PADDR;
wire   [25:0] BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PADDR_0;
wire   [25:0] BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PADDR_0_25to0;
wire          BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARLOCK;
wire   [1:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARLOCK_0;
wire   [0:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARLOCK_0_0to0;
wire   [1:1]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARLOCK_0_1to1;
wire          BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWLOCK;
wire   [1:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWLOCK_0;
wire   [0:0]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWLOCK_0_0to0;
wire   [1:1]  BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWLOCK_0_1to1;
wire   [4:0]  M2_INTERFACE_0_AXI4_INITIATOR_ARID;
wire   [3:0]  M2_INTERFACE_0_AXI4_INITIATOR_ARID_0;
wire   [3:0]  M2_INTERFACE_0_AXI4_INITIATOR_ARID_0_3to0;
wire   [1:0]  M2_INTERFACE_0_AXI4_INITIATOR_ARLOCK;
wire          M2_INTERFACE_0_AXI4_INITIATOR_ARLOCK_0;
wire   [0:0]  M2_INTERFACE_0_AXI4_INITIATOR_ARLOCK_0_0to0;
wire   [4:0]  M2_INTERFACE_0_AXI4_INITIATOR_AWID;
wire   [3:0]  M2_INTERFACE_0_AXI4_INITIATOR_AWID_0;
wire   [3:0]  M2_INTERFACE_0_AXI4_INITIATOR_AWID_0_3to0;
wire   [1:0]  M2_INTERFACE_0_AXI4_INITIATOR_AWLOCK;
wire          M2_INTERFACE_0_AXI4_INITIATOR_AWLOCK_0;
wire   [0:0]  M2_INTERFACE_0_AXI4_INITIATOR_AWLOCK_0_0to0;
wire   [3:0]  M2_INTERFACE_0_AXI4_INITIATOR_BID;
wire   [4:0]  M2_INTERFACE_0_AXI4_INITIATOR_BID_0;
wire   [3:0]  M2_INTERFACE_0_AXI4_INITIATOR_BID_0_3to0;
wire   [4:4]  M2_INTERFACE_0_AXI4_INITIATOR_BID_0_4to4;
wire   [3:0]  M2_INTERFACE_0_AXI4_INITIATOR_RID;
wire   [4:0]  M2_INTERFACE_0_AXI4_INITIATOR_RID_0;
wire   [3:0]  M2_INTERFACE_0_AXI4_INITIATOR_RID_0_3to0;
wire   [4:4]  M2_INTERFACE_0_AXI4_INITIATOR_RID_0_4to4;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net                                             = 1'b0;
assign VCC_net                                             = 1'b1;
assign MSS_INT_F2M_3_7_const_net_0                         = 5'h00;
assign MSS_INT_F2M_F_const_net_0                           = 8'h00;
assign MSS_INT_F2M_56_58_const_net_0                       = 3'h0;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWID_const_net_0     = 4'h0;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWADDR_const_net_0   = 38'h0000000000;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWLEN_const_net_0    = 8'h00;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWSIZE_const_net_0   = 3'h0;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWBURST_const_net_0  = 2'h3;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWCACHE_const_net_0  = 4'h0;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWPROT_const_net_0   = 3'h0;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWQOS_const_net_0    = 4'h0;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WDATA_const_net_0    = 64'h0000000000000000;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WSTRB_const_net_0    = 8'hFF;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARID_const_net_0     = 4'h0;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARADDR_const_net_0   = 38'h0000000000;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARLEN_const_net_0    = 8'h00;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARSIZE_const_net_0   = 3'h0;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARBURST_const_net_0  = 2'h3;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARCACHE_const_net_0  = 4'h0;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARPROT_const_net_0   = 3'h0;
assign FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARQOS_const_net_0    = 4'h0;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWID_const_net_0     = 4'h0;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWADDR_const_net_0   = 38'h0000000000;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWLEN_const_net_0    = 8'h00;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWSIZE_const_net_0   = 3'h0;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWBURST_const_net_0  = 2'h3;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWCACHE_const_net_0  = 4'h0;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWPROT_const_net_0   = 3'h0;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWQOS_const_net_0    = 4'h0;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WDATA_const_net_0    = 64'h0000000000000000;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WSTRB_const_net_0    = 8'hFF;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARID_const_net_0     = 4'h0;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARADDR_const_net_0   = 38'h0000000000;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARLEN_const_net_0    = 8'h00;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARSIZE_const_net_0   = 3'h0;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARBURST_const_net_0  = 2'h3;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARCACHE_const_net_0  = 4'h0;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARPROT_const_net_0   = 3'h0;
assign FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARQOS_const_net_0    = 4'h0;
assign CSI_APB_MTARGET_PRDATAS2_const_net_0                = 32'h00000000;
assign HSI_APB_MTARGET_PRDATAS4_const_net_0                = 32'h00000000;
assign FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BID_const_net_0   = 8'h00;
assign FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BRESP_const_net_0 = 2'h0;
assign FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RID_const_net_0   = 8'h00;
assign FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RDATA_const_net_0 = 64'h0000000000000000;
assign FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RRESP_const_net_0 = 2'h0;
assign AXI_TARGET_MASTER0_AWREGION_const_net_0             = 4'h0;
assign AXI_TARGET_MASTER0_ARREGION_const_net_0             = 4'h0;
//--------------------------------------------------------------------
// TieOff assignments
//--------------------------------------------------------------------
assign M2_W_DISABLE1              = 1'b0;
assign M2_W_DISABLE2              = 1'b0;
assign CSI1_PWND                  = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign USB0_STP_net_1             = USB0_STP_net_0;
assign USB0_STP                   = USB0_STP_net_1;
assign UART0_TXD_net_1            = UART0_TXD_net_0;
assign UART0_TXD                  = UART0_TXD_net_1;
assign RESET_N_net_1              = RESET_N_net_0;
assign RESET_N                    = RESET_N_net_1;
assign ODT_net_1                  = ODT_net_0;
assign ODT                        = ODT_net_1;
assign CKE_net_1                  = CKE_net_0;
assign CKE                        = CKE_net_1;
assign CS_net_1                   = CS_net_0;
assign CS                         = CS_net_1;
assign CK_net_1                   = CK_net_0;
assign CK                         = CK_net_1;
assign CK_N_net_1                 = CK_N_net_0;
assign CK_N                       = CK_N_net_1;
assign USB0_RESETB_net_1          = USB0_RESETB_net_0;
assign USB0_RESETB                = USB0_RESETB_net_1;
assign SGMII_TX0_P_net_1          = SGMII_TX0_P_net_0;
assign SGMII_TX0_P                = SGMII_TX0_P_net_1;
assign SGMII_TX0_N_net_1          = SGMII_TX0_N_net_0;
assign SGMII_TX0_N                = SGMII_TX0_N_net_1;
assign SGMII_TX1_P_net_1          = SGMII_TX1_P_net_0;
assign SGMII_TX1_P                = SGMII_TX1_P_net_1;
assign SGMII_TX1_N_net_1          = SGMII_TX1_N_net_0;
assign SGMII_TX1_N                = SGMII_TX1_N_net_1;
assign CA_net_1                   = CA_net_0;
assign CA[5:0]                    = CA_net_1;
assign DM_net_1                   = DM_net_0;
assign DM[3:0]                    = DM_net_1;
assign SD_CARD_CS_net_1           = SD_CARD_CS_net_0;
assign SD_CARD_CS                 = SD_CARD_CS_net_1;
assign ADC_CSn_net_1              = ADC_CSn_net_0;
assign ADC_CSn                    = ADC_CSn_net_1;
assign ADC_SCK_net_1              = ADC_SCK_net_0;
assign ADC_SCK                    = ADC_SCK_net_1;
assign ADC_MCLK_net_1             = ADC_MCLK_net_0;
assign ADC_MCLK                   = ADC_MCLK_net_1;
assign USB0_RESETB_net_2          = USB0_RESETB_net_0;
assign PHY_RSTn                   = USB0_RESETB_net_2;
assign PHY_MDC_net_1              = PHY_MDC_net_0;
assign PHY_MDC                    = PHY_MDC_net_1;
assign EMMC_CLK_net_1             = EMMC_CLK_net_0;
assign EMMC_CLK                   = EMMC_CLK_net_1;
assign EMMC_RSTN_net_1            = EMMC_RSTN_net_0;
assign EMMC_RSTN                  = EMMC_RSTN_net_1;
assign VIO_ENABLE_net_1           = VIO_ENABLE_net_0;
assign VIO_ENABLE                 = VIO_ENABLE_net_1;
assign P8_PIN13_USER_LED_10_net_1 = P8_PIN13_USER_LED_10_net_0;
assign P8_PIN13_USER_LED_10       = P8_PIN13_USER_LED_10_net_1;
assign P8_PIN19_net_1             = P8_PIN19_net_0;
assign P8_PIN19                   = P8_PIN19_net_1;
assign P9_13_net_1                = P9_13_net_0;
assign P9_13                      = P9_13_net_1;
assign P9_PIN14_net_1             = P9_PIN14_net_0;
assign P9_PIN14                   = P9_PIN14_net_1;
assign P9_PIN16_net_1             = P9_PIN16_net_0;
assign P9_PIN16                   = P9_PIN16_net_1;
assign P9_PIN42_net_1             = P9_PIN42_net_0;
assign P9_PIN42                   = P9_PIN42_net_1;
assign P9_24_net_1                = P9_24_net_0;
assign P9_24                      = P9_24_net_1;
assign P9_17_net_1                = P9_17_net_0;
assign P9_17                      = P9_17_net_1;
assign P9_22_net_1                = P9_22_net_0;
assign P9_22                      = P9_22_net_1;
assign P9_18_net_1                = P9_18_net_0;
assign P9_18                      = P9_18_net_1;
assign P9_28_net_1                = P9_28_net_0;
assign P9_28                      = P9_28_net_1;
assign P9_31_net_1                = P9_31_net_0;
assign P9_31                      = P9_31_net_1;
assign M2_UART_TXD_net_1          = M2_UART_TXD_net_0;
assign M2_UART_TXD                = M2_UART_TXD_net_1;
assign M2_UART_RTS_net_1          = M2_UART_RTS_net_0;
assign M2_UART_RTS                = M2_UART_RTS_net_1;
assign M2_PERST0n_net_1           = M2_PERST0n_net_0;
assign M2_PERST0n                 = M2_PERST0n_net_1;
assign M2_PET0_N_net_1            = M2_PET0_N_net_0;
assign M2_PET0_N                  = M2_PET0_N_net_1;
assign M2_PET0_P_net_1            = M2_PET0_P_net_0;
assign M2_PET0_P                  = M2_PET0_P_net_1;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PADDR_0 = { BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PADDR_0_25to0 };
assign BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PADDR_0_25to0 = BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PADDR[25:0];

assign BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARLOCK_0 = { BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARLOCK_0_1to1, BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARLOCK_0_0to0 };
assign BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARLOCK_0_0to0 = BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARLOCK;
assign BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARLOCK_0_1to1 = 1'b0;

assign BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWLOCK_0 = { BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWLOCK_0_1to1, BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWLOCK_0_0to0 };
assign BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWLOCK_0_0to0 = BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWLOCK;
assign BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWLOCK_0_1to1 = 1'b0;

assign M2_INTERFACE_0_AXI4_INITIATOR_ARID_0 = { M2_INTERFACE_0_AXI4_INITIATOR_ARID_0_3to0 };
assign M2_INTERFACE_0_AXI4_INITIATOR_ARID_0_3to0 = M2_INTERFACE_0_AXI4_INITIATOR_ARID[3:0];

assign M2_INTERFACE_0_AXI4_INITIATOR_ARLOCK_0 = { M2_INTERFACE_0_AXI4_INITIATOR_ARLOCK_0_0to0 };
assign M2_INTERFACE_0_AXI4_INITIATOR_ARLOCK_0_0to0 = M2_INTERFACE_0_AXI4_INITIATOR_ARLOCK[0:0];

assign M2_INTERFACE_0_AXI4_INITIATOR_AWID_0 = { M2_INTERFACE_0_AXI4_INITIATOR_AWID_0_3to0 };
assign M2_INTERFACE_0_AXI4_INITIATOR_AWID_0_3to0 = M2_INTERFACE_0_AXI4_INITIATOR_AWID[3:0];

assign M2_INTERFACE_0_AXI4_INITIATOR_AWLOCK_0 = { M2_INTERFACE_0_AXI4_INITIATOR_AWLOCK_0_0to0 };
assign M2_INTERFACE_0_AXI4_INITIATOR_AWLOCK_0_0to0 = M2_INTERFACE_0_AXI4_INITIATOR_AWLOCK[0:0];

assign M2_INTERFACE_0_AXI4_INITIATOR_BID_0 = { M2_INTERFACE_0_AXI4_INITIATOR_BID_0_4to4, M2_INTERFACE_0_AXI4_INITIATOR_BID_0_3to0 };
assign M2_INTERFACE_0_AXI4_INITIATOR_BID_0_3to0 = M2_INTERFACE_0_AXI4_INITIATOR_BID[3:0];
assign M2_INTERFACE_0_AXI4_INITIATOR_BID_0_4to4 = 1'b0;

assign M2_INTERFACE_0_AXI4_INITIATOR_RID_0 = { M2_INTERFACE_0_AXI4_INITIATOR_RID_0_4to4, M2_INTERFACE_0_AXI4_INITIATOR_RID_0_3to0 };
assign M2_INTERFACE_0_AXI4_INITIATOR_RID_0_3to0 = M2_INTERFACE_0_AXI4_INITIATOR_RID[3:0];
assign M2_INTERFACE_0_AXI4_INITIATOR_RID_0_4to4 = 1'b0;

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------BVF_RISCV_SUBSYSTEM
BVF_RISCV_SUBSYSTEM BVF_RISCV_SUBSYSTEM_inst_0(
        // Inputs
        .PRESETN                                   ( CLOCKS_AND_RESETS_FIC_3_FABRIC_RESET_N ),
        .REFCLK                                    ( REFCLK ),
        .REFCLK_N                                  ( REFCLK_N ),
        .USB_CLK                                   ( USB0_CLK ),
        .USB_DIR                                   ( USB0_DIR ),
        .USB_NXT                                   ( USB0_NXT ),
        .USB_OCn                                   ( USB0_OCn ),
        .UART0_RXD                                 ( UART0_RXD ),
        .M2_UART_RXD                               ( M2_UART_RXD ),
        .M2_UART_CTS                               ( M2_UART_CTS ),
        .SGMII_RX0_P                               ( SGMII_RX0_P ),
        .SGMII_RX0_N                               ( SGMII_RX0_N ),
        .SGMII_RX1_P                               ( SGMII_RX1_P ),
        .SGMII_RX1_N                               ( SGMII_RX1_N ),
        .FIC_3_PCLK                                ( CLOCKS_AND_RESETS_FIC_3_PCLK ),
        .USER_BUTTON                               ( USER_BUTTON ),
        .SD_DET                                    ( SD_DET ),
        .CAN_0_RXBUS                               ( GND_net ),
        .CAN_1_RXBUS                               ( GND_net ),
        .GPIO_2_F2M                                ( CAPE_GPIO_IN ),
        .ADC_IRQn                                  ( ADC_IRQn ),
        .MMUART_2_RXD                              ( P9_26 ),
        .MMUART_3_RXD                              ( GND_net ),
        .MMUART_4_RXD                              ( P9_11 ),
        .PHY_INTn                                  ( PHY_INTn ),
        .MSS_INT_F2M_3_7                           ( MSS_INT_F2M_3_7_const_net_0 ),
        .MSS_INT_F2M_A                             ( CAPE_INT_A ),
        .MSS_INT_F2M_B                             ( CAPE_INT_B ),
        .MSS_INT_F2M_C                             ( CAPE_INT_C ),
        .MSS_INT_F2M_D                             ( CAPE_INT_D ),
        .MSS_INT_F2M_E                             ( CAPE_INT_E ),
        .MSS_INT_F2M_F                             ( MSS_INT_F2M_F_const_net_0 ),
        .MSS_INT_F2M_56_58                         ( MSS_INT_F2M_56_58_const_net_0 ),
        .MAC_1_MDI_F2M                             ( GND_net ),
        .EMMC_STRB                                 ( EMMC_STRB ),
        .PCIE_INT                                  ( M2_INTERFACE_0_PCIE_INTERRUPT ),
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWID       ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWID_const_net_0 ), // tied to 4'h0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWADDR     ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWADDR_const_net_0 ), // tied to 38'h0000000000 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWLEN      ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWLEN_const_net_0 ), // tied to 8'h00 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWSIZE     ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWSIZE_const_net_0 ), // tied to 3'h0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWBURST    ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWBURST_const_net_0 ), // tied to 2'h3 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWLOCK     ( GND_net ), // tied to 1'b0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWCACHE    ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWCACHE_const_net_0 ), // tied to 4'h0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWQOS      ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWQOS_const_net_0 ), // tied to 4'h0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWPROT     ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWPROT_const_net_0 ), // tied to 3'h0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWVALID    ( GND_net ), // tied to 1'b0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WDATA      ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WSTRB      ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WSTRB_const_net_0 ), // tied to 8'hFF from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WLAST      ( GND_net ), // tied to 1'b0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WVALID     ( GND_net ), // tied to 1'b0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BREADY     ( GND_net ), // tied to 1'b0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARID       ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARID_const_net_0 ), // tied to 4'h0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARADDR     ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARADDR_const_net_0 ), // tied to 38'h0000000000 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARLEN      ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARLEN_const_net_0 ), // tied to 8'h00 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARSIZE     ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARSIZE_const_net_0 ), // tied to 3'h0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARBURST    ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARBURST_const_net_0 ), // tied to 2'h3 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARLOCK     ( GND_net ), // tied to 1'b0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARCACHE    ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARCACHE_const_net_0 ), // tied to 4'h0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARQOS      ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARQOS_const_net_0 ), // tied to 4'h0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARPROT     ( FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARPROT_const_net_0 ), // tied to 3'h0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARVALID    ( GND_net ), // tied to 1'b0 from definition
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RREADY     ( GND_net ), // tied to 1'b0 from definition
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWID       ( M2_INTERFACE_0_AXI4_INITIATOR_AWID_0 ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWADDR     ( M2_INTERFACE_0_AXI4_INITIATOR_AWADDR ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWLEN      ( M2_INTERFACE_0_AXI4_INITIATOR_AWLEN ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWSIZE     ( M2_INTERFACE_0_AXI4_INITIATOR_AWSIZE ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWBURST    ( M2_INTERFACE_0_AXI4_INITIATOR_AWBURST ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWLOCK     ( M2_INTERFACE_0_AXI4_INITIATOR_AWLOCK_0 ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWCACHE    ( M2_INTERFACE_0_AXI4_INITIATOR_AWCACHE ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWQOS      ( M2_INTERFACE_0_AXI4_INITIATOR_AWQOS ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWPROT     ( M2_INTERFACE_0_AXI4_INITIATOR_AWPROT ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWVALID    ( M2_INTERFACE_0_AXI4_INITIATOR_AWVALID ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WDATA      ( M2_INTERFACE_0_AXI4_INITIATOR_WDATA ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WSTRB      ( M2_INTERFACE_0_AXI4_INITIATOR_WSTRB ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WLAST      ( M2_INTERFACE_0_AXI4_INITIATOR_WLAST ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WVALID     ( M2_INTERFACE_0_AXI4_INITIATOR_WVALID ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BREADY     ( M2_INTERFACE_0_AXI4_INITIATOR_BREADY ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARID       ( M2_INTERFACE_0_AXI4_INITIATOR_ARID_0 ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARADDR     ( M2_INTERFACE_0_AXI4_INITIATOR_ARADDR ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARLEN      ( M2_INTERFACE_0_AXI4_INITIATOR_ARLEN ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARSIZE     ( M2_INTERFACE_0_AXI4_INITIATOR_ARSIZE ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARBURST    ( M2_INTERFACE_0_AXI4_INITIATOR_ARBURST ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARQOS      ( M2_INTERFACE_0_AXI4_INITIATOR_ARQOS ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARLOCK     ( M2_INTERFACE_0_AXI4_INITIATOR_ARLOCK_0 ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARCACHE    ( M2_INTERFACE_0_AXI4_INITIATOR_ARCACHE ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARPROT     ( M2_INTERFACE_0_AXI4_INITIATOR_ARPROT ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARVALID    ( M2_INTERFACE_0_AXI4_INITIATOR_ARVALID ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RREADY     ( M2_INTERFACE_0_AXI4_INITIATOR_RREADY ),
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWID       ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWID_const_net_0 ), // tied to 4'h0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWADDR     ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWADDR_const_net_0 ), // tied to 38'h0000000000 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWLEN      ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWLEN_const_net_0 ), // tied to 8'h00 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWSIZE     ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWSIZE_const_net_0 ), // tied to 3'h0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWBURST    ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWBURST_const_net_0 ), // tied to 2'h3 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWQOS      ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWQOS_const_net_0 ), // tied to 4'h0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWLOCK     ( GND_net ), // tied to 1'b0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWCACHE    ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWCACHE_const_net_0 ), // tied to 4'h0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWPROT     ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWPROT_const_net_0 ), // tied to 3'h0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWVALID    ( GND_net ), // tied to 1'b0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WDATA      ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WSTRB      ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WSTRB_const_net_0 ), // tied to 8'hFF from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WLAST      ( GND_net ), // tied to 1'b0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WVALID     ( GND_net ), // tied to 1'b0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BREADY     ( GND_net ), // tied to 1'b0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARID       ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARID_const_net_0 ), // tied to 4'h0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARADDR     ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARADDR_const_net_0 ), // tied to 38'h0000000000 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARLEN      ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARLEN_const_net_0 ), // tied to 8'h00 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARSIZE     ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARSIZE_const_net_0 ), // tied to 3'h0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARBURST    ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARBURST_const_net_0 ), // tied to 2'h3 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARQOS      ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARQOS_const_net_0 ), // tied to 4'h0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARLOCK     ( GND_net ), // tied to 1'b0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARCACHE    ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARCACHE_const_net_0 ), // tied to 4'h0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARPROT     ( FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARPROT_const_net_0 ), // tied to 3'h0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARVALID    ( GND_net ), // tied to 1'b0 from definition
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RREADY     ( GND_net ), // tied to 1'b0 from definition
        .CAPE_APB_MTARGET_PRDATAS1                 ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PRDATA ),
        .CAPE_APB_MTARGET_PREADYS1                 ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PREADY ),
        .CAPE_APB_MTARGET_PSLVERRS1                ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PSLVERR ),
        .CSI_APB_MTARGET_PRDATAS2                  ( CSI_APB_MTARGET_PRDATAS2_const_net_0 ), // tied to 32'h00000000 from definition
        .CSI_APB_MTARGET_PREADYS2                  ( VCC_net ), // tied to 1'b1 from definition
        .CSI_APB_MTARGET_PSLVERRS2                 ( GND_net ), // tied to 1'b0 from definition
        .HSI_APB_MTARGET_PRDATAS4                  ( HSI_APB_MTARGET_PRDATAS4_const_net_0 ), // tied to 32'h00000000 from definition
        .HSI_APB_MTARGET_PREADYS4                  ( VCC_net ), // tied to 1'b1 from definition
        .HSI_APB_MTARGET_PSLVERRS4                 ( GND_net ), // tied to 1'b0 from definition
        .M2_APB_MTARGET_PRDATAS16                  ( BVF_RISCV_SUBSYSTEM_M2_APB_MTARGET_PRDATA ),
        .M2_APB_MTARGET_PREADYS16                  ( BVF_RISCV_SUBSYSTEM_M2_APB_MTARGET_PREADY ),
        .M2_APB_MTARGET_PSLVERRS16                 ( BVF_RISCV_SUBSYSTEM_M2_APB_MTARGET_PSLVERR ),
        .FIC_0_ACLK                                ( CLOCKS_AND_RESETS_FIC_0_ACLK ),
        .FIC_1_ACLK                                ( CLOCKS_AND_RESETS_FIC_1_ACLK ),
        .FIC_2_ACLK                                ( CLOCKS_AND_RESETS_FIC_2_ACLK ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWREADY ( GND_net ), // tied to 1'b0 from definition
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WREADY  ( GND_net ), // tied to 1'b0 from definition
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BID     ( FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BID_const_net_0 ), // tied to 8'h00 from definition
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BRESP   ( FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BVALID  ( GND_net ), // tied to 1'b0 from definition
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARREADY ( GND_net ), // tied to 1'b0 from definition
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RID     ( FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RID_const_net_0 ), // tied to 8'h00 from definition
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RDATA   ( FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RRESP   ( FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RLAST   ( GND_net ), // tied to 1'b0 from definition
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RVALID  ( GND_net ), // tied to 1'b0 from definition
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWREADY ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWREADY ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WREADY  ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_WREADY ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BID     ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_BID ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BRESP   ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_BRESP ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BVALID  ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_BVALID ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARREADY ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARREADY ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RID     ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RID ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RDATA   ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RDATA ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RRESP   ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RRESP ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RLAST   ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RLAST ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RVALID  ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RVALID ),
        .SPI_0_DI                                  ( P9_21 ),
        .SPI_1_DI                                  ( P9_29 ),
        // Outputs
        .USB_STP                                   ( USB0_STP_net_0 ),
        .UART0_TXD                                 ( UART0_TXD_net_0 ),
        .M2_UART_TXD                               ( M2_UART_TXD_net_0 ),
        .M2_UART_RTS                               ( M2_UART_RTS_net_0 ),
        .MSS_DLL_LOCKS                             ( BVF_RISCV_SUBSYSTEM_MSS_DLL_LOCKS ),
        .RESET_N                                   ( RESET_N_net_0 ),
        .ODT                                       ( ODT_net_0 ),
        .CKE                                       ( CKE_net_0 ),
        .CS                                        ( CS_net_0 ),
        .CK                                        ( CK_net_0 ),
        .CK_N                                      ( CK_N_net_0 ),
        .SGMII_TX0_P                               ( SGMII_TX0_P_net_0 ),
        .SGMII_TX0_N                               ( SGMII_TX0_N_net_0 ),
        .SGMII_TX1_P                               ( SGMII_TX1_P_net_0 ),
        .SGMII_TX1_N                               ( SGMII_TX1_N_net_0 ),
        .CA                                        ( CA_net_0 ),
        .DM                                        ( DM_net_0 ),
        .SD_CARD_CS                                ( SD_CARD_CS_net_0 ),
        .CAN_0_TXBUS                               (  ),
        .CAN_0_TX_EBL                              (  ),
        .CAN_1_TXBUS                               (  ),
        .CAN_1_TX_EBL                              (  ),
        .GPIO_2_M2F                                ( BVF_RISCV_SUBSYSTEM_GPIO_2_M2F ),
        .GPIO_2_OE_M2F                             ( BVF_RISCV_SUBSYSTEM_GPIO_2_OE_M2F ),
        .ADC_CSn                                   ( ADC_CSn_net_0 ),
        .ADC_SCK                                   ( ADC_SCK_net_0 ),
        .MMUART_2_TXD                              ( P9_24_net_0 ),
        .MMUART_3_TXD                              (  ),
        .MMUART_4_TXD                              ( P9_13_net_0 ),
        .PHY_MDC                                   ( PHY_MDC_net_0 ),
        .M2_W_DISABLE1                             (  ),
        .M2_W_DISABLE2                             (  ),
        .MAC_1_MDO_OE_M2F                          (  ),
        .MAC_1_MDC_M2F                             (  ),
        .MAC_1_MDO_M2F                             (  ),
        .EMMC_CLK                                  ( EMMC_CLK_net_0 ),
        .EMMC_RSTN                                 ( EMMC_RSTN_net_0 ),
        .VIO_ENABLE                                ( VIO_ENABLE_net_0 ),
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWREADY    (  ),
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WREADY     (  ),
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BID        (  ),
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BRESP      (  ),
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BVALID     (  ),
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARREADY    (  ),
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RID        (  ),
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RDATA      (  ),
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RRESP      (  ),
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RLAST      (  ),
        .FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RVALID     (  ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWREADY    ( M2_INTERFACE_0_AXI4_INITIATOR_AWREADY ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WREADY     ( M2_INTERFACE_0_AXI4_INITIATOR_WREADY ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BID        ( M2_INTERFACE_0_AXI4_INITIATOR_BID ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BRESP      ( M2_INTERFACE_0_AXI4_INITIATOR_BRESP ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BVALID     ( M2_INTERFACE_0_AXI4_INITIATOR_BVALID ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARREADY    ( M2_INTERFACE_0_AXI4_INITIATOR_ARREADY ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RID        ( M2_INTERFACE_0_AXI4_INITIATOR_RID ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RDATA      ( M2_INTERFACE_0_AXI4_INITIATOR_RDATA ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RRESP      ( M2_INTERFACE_0_AXI4_INITIATOR_RRESP ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RLAST      ( M2_INTERFACE_0_AXI4_INITIATOR_RLAST ),
        .FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RVALID     ( M2_INTERFACE_0_AXI4_INITIATOR_RVALID ),
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWREADY    (  ),
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WREADY     (  ),
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BID        (  ),
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BRESP      (  ),
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BVALID     (  ),
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARREADY    (  ),
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RID        (  ),
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RDATA      (  ),
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RRESP      (  ),
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RLAST      (  ),
        .FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RVALID     (  ),
        .CAPE_APB_MTARGET_PADDRS                   ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PADDR ),
        .CAPE_APB_MTARGET_PSELS1                   ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PSELx ),
        .CAPE_APB_MTARGET_PENABLES                 ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PENABLE ),
        .CAPE_APB_MTARGET_PWRITES                  ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PWRITE ),
        .CAPE_APB_MTARGET_PWDATAS                  ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PWDATA ),
        .CSI_APB_MTARGET_PSELS2                    (  ),
        .HSI_APB_MTARGET_PSELS4                    (  ),
        .M2_APB_MTARGET_PSELS16                    ( BVF_RISCV_SUBSYSTEM_M2_APB_MTARGET_PSELx ),
        .MSS_RESET_N_M2F                           ( BVF_RISCV_SUBSYSTEM_MSS_RESET_N_M2F ),
        .FIC_3_APB_M_PSTRB                         (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWID    (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWADDR  (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWLEN   (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWSIZE  (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWBURST (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWLOCK  (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWQOS   (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWCACHE (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWPROT  (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWVALID (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WDATA   (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WSTRB   (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WLAST   (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WVALID  (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BREADY  (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARID    (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARADDR  (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARLEN   (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARSIZE  (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARBURST (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARLOCK  (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARQOS   (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARCACHE (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARPROT  (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARVALID (  ),
        .FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RREADY  (  ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWID    ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWID ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWADDR  ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWADDR ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWLEN   ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWLEN ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWSIZE  ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWSIZE ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWBURST ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWBURST ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWLOCK  ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWLOCK ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWQOS   ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWQOS ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWCACHE ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWCACHE ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWPROT  ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWPROT ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWVALID ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWVALID ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WDATA   ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_WDATA ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WSTRB   ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_WSTRB ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WLAST   ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_WLAST ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WVALID  ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_WVALID ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BREADY  ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_BREADY ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARID    ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARID ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARADDR  ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARADDR ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARLEN   ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARLEN ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARSIZE  ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARSIZE ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARBURST ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARBURST ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARLOCK  ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARLOCK ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARQOS   ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARQOS ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARCACHE ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARCACHE ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARPROT  ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARPROT ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARVALID ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARVALID ),
        .FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RREADY  ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RREADY ),
        .SPI_0_CLK                                 ( P9_22_net_0 ),
        .SPI_0_DO                                  ( P9_18_net_0 ),
        .SPI_0_SS1                                 ( P9_17_net_0 ),
        .SPI_1_SS1                                 ( P9_28_net_0 ),
        .SPI_1_CLK                                 ( P9_31_net_0 ),
        .SPI_1_DO                                  (  ),
        // Inouts
        .USB_DATA0                                 ( USB0_DATA0 ),
        .USB_DATA1                                 ( USB0_DATA1 ),
        .USB_DATA2                                 ( USB0_DATA2 ),
        .USB_DATA3                                 ( USB0_DATA3 ),
        .USB_DATA4                                 ( USB0_DATA4 ),
        .USB_DATA5                                 ( USB0_DATA5 ),
        .USB_DATA6                                 ( USB0_DATA6 ),
        .USB_DATA7                                 ( USB0_DATA7 ),
        .I2C_1_SCL                                 ( I2C_1_SCL ),
        .I2C_1_SDA                                 ( I2C_1_SDA ),
        .DQ                                        ( DQ ),
        .DQS                                       ( DQS ),
        .DQS_N                                     ( DQS_N ),
        .ADC_MOSI                                  ( ADC_MOSI ),
        .ADC_MISO                                  ( ADC_MISO ),
        .I2C0_SCL                                  ( P9_19 ),
        .I2C0_SDA                                  ( P9_20 ),
        .PHY_MDIO                                  ( PHY_MDIO ),
        .EMMC_CMD                                  ( EMMC_CMD ),
        .EMMC_DATA0                                ( EMMC_DATA0 ),
        .EMMC_DATA1                                ( EMMC_DATA1 ),
        .EMMC_DATA2                                ( EMMC_DATA2 ),
        .EMMC_DATA3                                ( EMMC_DATA3 ),
        .EMMC_DATA4                                ( EMMC_DATA4 ),
        .EMMC_DATA5                                ( EMMC_DATA5 ),
        .EMMC_DATA6                                ( EMMC_DATA6 ),
        .EMMC_DATA7                                ( EMMC_DATA7 ) 
        );

//--------CAPE
CAPE CAPE_inst_0(
        // Inputs
        .APB_SLAVE_SLAVE_PENABLE ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PENABLE ),
        .APB_SLAVE_SLAVE_PSEL    ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PSELx ),
        .APB_SLAVE_SLAVE_PWRITE  ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PWRITE ),
        .PCLK                    ( CLOCKS_AND_RESETS_FIC_3_PCLK ),
        .PRESETN                 ( CLOCKS_AND_RESETS_FIC_3_FABRIC_RESET_N ),
        .APB_SLAVE_SLAVE_PADDR   ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PADDR ),
        .APB_SLAVE_SLAVE_PWDATA  ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PWDATA ),
        .GPIO_OE                 ( BVF_RISCV_SUBSYSTEM_GPIO_2_OE_M2F ),
        .GPIO_OUT                ( BVF_RISCV_SUBSYSTEM_GPIO_2_M2F ),
        // Outputs
        .APB_SLAVE_SLAVE_PREADY  ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PREADY ),
        .APB_SLAVE_SLAVE_PSLVERR ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PSLVERR ),
        .P8_PIN13_USER_LED_10    ( P8_PIN13_USER_LED_10_net_0 ),
        .P8_PIN19                ( P8_PIN19_net_0 ),
        .P9_PIN14                ( P9_PIN14_net_0 ),
        .P9_PIN16                ( P9_PIN16_net_0 ),
        .P9_PIN42                ( P9_PIN42_net_0 ),
        .APB_SLAVE_SLAVE_PRDATA  ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PRDATA ),
        .GPIO_IN                 ( CAPE_GPIO_IN ),
        .INT_A                   ( CAPE_INT_A ),
        .INT_B                   ( CAPE_INT_B ),
        .INT_C                   ( CAPE_INT_C ),
        .INT_D                   ( CAPE_INT_D ),
        .INT_E                   ( CAPE_INT_E ),
        // Inouts
        .P8_PIN10_USER_LED_7     ( P8_PIN10_USER_LED_7 ),
        .P8_PIN11_USER_LED_8     ( P8_PIN11_USER_LED_8 ),
        .P8_PIN12_USER_LED_9     ( P8_PIN12_USER_LED_9 ),
        .P8_PIN14_USER_LED_11    ( P8_PIN14_USER_LED_11 ),
        .P8_PIN15                ( P8_PIN15 ),
        .P8_PIN16                ( P8_PIN16 ),
        .P8_PIN17                ( P8_PIN17 ),
        .P8_PIN18                ( P8_PIN18 ),
        .P8_PIN20                ( P8_PIN20 ),
        .P8_PIN21                ( P8_PIN21 ),
        .P8_PIN22                ( P8_PIN22 ),
        .P8_PIN23                ( P8_PIN23 ),
        .P8_PIN24                ( P8_PIN24 ),
        .P8_PIN25                ( P8_PIN25 ),
        .P8_PIN26                ( P8_PIN26 ),
        .P8_PIN27                ( P8_PIN27 ),
        .P8_PIN28                ( P8_PIN28 ),
        .P8_PIN29                ( P8_PIN29 ),
        .P8_PIN30                ( P8_PIN30 ),
        .P8_PIN31                ( P8_PIN31 ),
        .P8_PIN32                ( P8_PIN32 ),
        .P8_PIN33                ( P8_PIN33 ),
        .P8_PIN34                ( P8_PIN34 ),
        .P8_PIN35                ( P8_PIN35 ),
        .P8_PIN36                ( P8_PIN36 ),
        .P8_PIN37                ( P8_PIN37 ),
        .P8_PIN38                ( P8_PIN38 ),
        .P8_PIN39                ( P8_PIN39 ),
        .P8_PIN3_USER_LED_0      ( P8_PIN3_USER_LED_0 ),
        .P8_PIN40                ( P8_PIN40 ),
        .P8_PIN41                ( P8_PIN41 ),
        .P8_PIN42                ( P8_PIN42 ),
        .P8_PIN43                ( P8_PIN43 ),
        .P8_PIN44                ( P8_PIN44 ),
        .P8_PIN45                ( P8_PIN45 ),
        .P8_PIN46                ( P8_PIN46 ),
        .P8_PIN4_USER_LED_1      ( P8_PIN4_USER_LED_1 ),
        .P8_PIN5_USER_LED_2      ( P8_PIN5_USER_LED_2 ),
        .P8_PIN6_USER_LED_3      ( P8_PIN6_USER_LED_3 ),
        .P8_PIN7_USER_LED_4      ( P8_PIN7_USER_LED_4 ),
        .P8_PIN8_USER_LED_5      ( P8_PIN8_USER_LED_5 ),
        .P8_PIN9_USER_LED_6      ( P8_PIN9_USER_LED_6 ),
        .P9_PIN12                ( P9_PIN12 ),
        .P9_PIN15                ( P9_PIN15 ),
        .P9_PIN23                ( P9_PIN23 ),
        .P9_PIN25                ( P9_PIN25 ),
        .P9_PIN27                ( P9_PIN27 ),
        .P9_PIN30                ( P9_PIN30 ),
        .P9_PIN41                ( P9_PIN41 ) 
        );

//--------CLOCKS_AND_RESETS
CLOCKS_AND_RESETS CLOCKS_AND_RESETS_inst_0(
        // Inputs
        .EXT_RST_N            ( BVF_RISCV_SUBSYSTEM_MSS_RESET_N_M2F ),
        .MSS_DLL_LOCKS        ( BVF_RISCV_SUBSYSTEM_MSS_DLL_LOCKS ),
        .XCVR_0A_REFCLK_P     ( XCVR_0A_REFCLK_P ),
        .XCVR_0A_REFCLK_N     ( XCVR_0A_REFCLK_N ),
        // Outputs
        .ADC_MCLK_4_915MHz    ( ADC_MCLK_net_0 ),
        .DEVICE_INIT_DONE     (  ),
        .FIC_0_ACLK           ( CLOCKS_AND_RESETS_FIC_0_ACLK ),
        .FIC_0_FABRIC_RESET_N ( USB0_RESETB_net_0 ),
        .FIC_1_ACLK           ( CLOCKS_AND_RESETS_FIC_1_ACLK ),
        .FIC_1_FABRIC_RESET_N ( CLOCKS_AND_RESETS_FIC_1_FABRIC_RESET_N ),
        .FIC_2_ACLK           ( CLOCKS_AND_RESETS_FIC_2_ACLK ),
        .FIC_2_FABRIC_RESET_N (  ),
        .FIC_3_FABRIC_RESET_N ( CLOCKS_AND_RESETS_FIC_3_FABRIC_RESET_N ),
        .FIC_3_PCLK           ( CLOCKS_AND_RESETS_FIC_3_PCLK ),
        .RCOSC_160MHZ_GL      (  ),
        .XCVR_INIT_DONE       (  ),
        .BIT_CLK              ( CLOCKS_AND_RESETS_CLKS_TO_XCVR_BIT_CLK ),
        .LOCK                 ( CLOCKS_AND_RESETS_CLKS_TO_XCVR_LOCK ),
        .PCIe_CLK_125MHz      ( CLOCKS_AND_RESETS_PCIe_CLK_125MHz ),
        .PCIe_REFERENCE_CLK   ( CLOCKS_AND_RESETS_PCIe_REFERENCE_CLK ),
        .REF_CLK_TO_LANE      ( CLOCKS_AND_RESETS_CLKS_TO_XCVR_REF_CLK_TO_LANE ),
        .PCIE_INIT_DONE       ( CLOCKS_AND_RESETS_PCIE_INIT_DONE ) 
        );

//--------M2_INTERFACE
M2_INTERFACE M2_INTERFACE_0(
        // Inputs
        .ACLK                                            ( CLOCKS_AND_RESETS_FIC_1_ACLK ),
        .APB_TARGET_PENABLE                              ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PENABLE ),
        .APB_TARGET_PSEL                                 ( BVF_RISCV_SUBSYSTEM_M2_APB_MTARGET_PSELx ),
        .APB_TARGET_PWRITE                               ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PWRITE ),
        .ARESETN                                         ( CLOCKS_AND_RESETS_FIC_1_FABRIC_RESET_N ),
        .AXI4_INITIATOR_SLAVE0_ARREADY                   ( M2_INTERFACE_0_AXI4_INITIATOR_ARREADY ),
        .AXI4_INITIATOR_SLAVE0_AWREADY                   ( M2_INTERFACE_0_AXI4_INITIATOR_AWREADY ),
        .AXI4_INITIATOR_SLAVE0_BVALID                    ( M2_INTERFACE_0_AXI4_INITIATOR_BVALID ),
        .AXI4_INITIATOR_SLAVE0_RLAST                     ( M2_INTERFACE_0_AXI4_INITIATOR_RLAST ),
        .AXI4_INITIATOR_SLAVE0_RVALID                    ( M2_INTERFACE_0_AXI4_INITIATOR_RVALID ),
        .AXI4_INITIATOR_SLAVE0_WREADY                    ( M2_INTERFACE_0_AXI4_INITIATOR_WREADY ),
        .AXI_TARGET_MASTER0_ARVALID                      ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARVALID ),
        .AXI_TARGET_MASTER0_AWVALID                      ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWVALID ),
        .AXI_TARGET_MASTER0_BREADY                       ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_BREADY ),
        .AXI_TARGET_MASTER0_RREADY                       ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RREADY ),
        .AXI_TARGET_MASTER0_WLAST                        ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_WLAST ),
        .AXI_TARGET_MASTER0_WVALID                       ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_WVALID ),
        .CLKS_FROM_TXPLL_TO_PCIE_0_PCIE_0_TX_BIT_CLK     ( CLOCKS_AND_RESETS_CLKS_TO_XCVR_BIT_CLK ),
        .CLKS_FROM_TXPLL_TO_PCIE_0_PCIE_0_TX_PLL_LOCK    ( CLOCKS_AND_RESETS_CLKS_TO_XCVR_LOCK ),
        .CLKS_FROM_TXPLL_TO_PCIE_0_PCIE_0_TX_PLL_REF_CLK ( CLOCKS_AND_RESETS_CLKS_TO_XCVR_REF_CLK_TO_LANE ),
        .PCIESS_LANE_RXD0_N                              ( M2_PER0_N ),
        .PCIESS_LANE_RXD0_P                              ( M2_PER0_P ),
        .PCIE_0_TL_CLK_125MHz                            ( CLOCKS_AND_RESETS_PCIe_CLK_125MHz ),
        .PCIE_INIT_DONE                                  ( CLOCKS_AND_RESETS_PCIE_INIT_DONE ),
        .PCIE_REF_CLK                                    ( CLOCKS_AND_RESETS_PCIe_REFERENCE_CLK ),
        .PCLK                                            ( CLOCKS_AND_RESETS_FIC_3_PCLK ),
        .PRESETN                                         ( CLOCKS_AND_RESETS_FIC_3_FABRIC_RESET_N ),
        .APB_TARGET_PADDR                                ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PADDR_0 ),
        .APB_TARGET_PWDATA                               ( BVF_RISCV_SUBSYSTEM_CAPE_APB_MTARGET_PWDATA ),
        .AXI4_INITIATOR_SLAVE0_BID                       ( M2_INTERFACE_0_AXI4_INITIATOR_BID_0 ),
        .AXI4_INITIATOR_SLAVE0_BRESP                     ( M2_INTERFACE_0_AXI4_INITIATOR_BRESP ),
        .AXI4_INITIATOR_SLAVE0_BUSER                     ( GND_net ), // tied to 1'b0 from definition
        .AXI4_INITIATOR_SLAVE0_RDATA                     ( M2_INTERFACE_0_AXI4_INITIATOR_RDATA ),
        .AXI4_INITIATOR_SLAVE0_RID                       ( M2_INTERFACE_0_AXI4_INITIATOR_RID_0 ),
        .AXI4_INITIATOR_SLAVE0_RRESP                     ( M2_INTERFACE_0_AXI4_INITIATOR_RRESP ),
        .AXI4_INITIATOR_SLAVE0_RUSER                     ( GND_net ), // tied to 1'b0 from definition
        .AXI_TARGET_MASTER0_ARADDR                       ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARADDR ),
        .AXI_TARGET_MASTER0_ARBURST                      ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARBURST ),
        .AXI_TARGET_MASTER0_ARCACHE                      ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARCACHE ),
        .AXI_TARGET_MASTER0_ARID                         ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARID ),
        .AXI_TARGET_MASTER0_ARLEN                        ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARLEN ),
        .AXI_TARGET_MASTER0_ARLOCK                       ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARLOCK_0 ),
        .AXI_TARGET_MASTER0_ARPROT                       ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARPROT ),
        .AXI_TARGET_MASTER0_ARQOS                        ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARQOS ),
        .AXI_TARGET_MASTER0_ARREGION                     ( AXI_TARGET_MASTER0_ARREGION_const_net_0 ), // tied to 4'h0 from definition
        .AXI_TARGET_MASTER0_ARSIZE                       ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARSIZE ),
        .AXI_TARGET_MASTER0_ARUSER                       ( GND_net ), // tied to 1'b0 from definition
        .AXI_TARGET_MASTER0_AWADDR                       ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWADDR ),
        .AXI_TARGET_MASTER0_AWBURST                      ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWBURST ),
        .AXI_TARGET_MASTER0_AWCACHE                      ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWCACHE ),
        .AXI_TARGET_MASTER0_AWID                         ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWID ),
        .AXI_TARGET_MASTER0_AWLEN                        ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWLEN ),
        .AXI_TARGET_MASTER0_AWLOCK                       ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWLOCK_0 ),
        .AXI_TARGET_MASTER0_AWPROT                       ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWPROT ),
        .AXI_TARGET_MASTER0_AWQOS                        ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWQOS ),
        .AXI_TARGET_MASTER0_AWREGION                     ( AXI_TARGET_MASTER0_AWREGION_const_net_0 ), // tied to 4'h0 from definition
        .AXI_TARGET_MASTER0_AWSIZE                       ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWSIZE ),
        .AXI_TARGET_MASTER0_AWUSER                       ( GND_net ), // tied to 1'b0 from definition
        .AXI_TARGET_MASTER0_WDATA                        ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_WDATA ),
        .AXI_TARGET_MASTER0_WSTRB                        ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_WSTRB ),
        .AXI_TARGET_MASTER0_WUSER                        ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .APB_TARGET_PREADY                               ( BVF_RISCV_SUBSYSTEM_M2_APB_MTARGET_PREADY ),
        .APB_TARGET_PSLVERR                              ( BVF_RISCV_SUBSYSTEM_M2_APB_MTARGET_PSLVERR ),
        .AXI4_INITIATOR_SLAVE0_ARVALID                   ( M2_INTERFACE_0_AXI4_INITIATOR_ARVALID ),
        .AXI4_INITIATOR_SLAVE0_AWVALID                   ( M2_INTERFACE_0_AXI4_INITIATOR_AWVALID ),
        .AXI4_INITIATOR_SLAVE0_BREADY                    ( M2_INTERFACE_0_AXI4_INITIATOR_BREADY ),
        .AXI4_INITIATOR_SLAVE0_RREADY                    ( M2_INTERFACE_0_AXI4_INITIATOR_RREADY ),
        .AXI4_INITIATOR_SLAVE0_WLAST                     ( M2_INTERFACE_0_AXI4_INITIATOR_WLAST ),
        .AXI4_INITIATOR_SLAVE0_WVALID                    ( M2_INTERFACE_0_AXI4_INITIATOR_WVALID ),
        .AXI_TARGET_MASTER0_ARREADY                      ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_ARREADY ),
        .AXI_TARGET_MASTER0_AWREADY                      ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_AWREADY ),
        .AXI_TARGET_MASTER0_BVALID                       ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_BVALID ),
        .AXI_TARGET_MASTER0_RLAST                        ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RLAST ),
        .AXI_TARGET_MASTER0_RVALID                       ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RVALID ),
        .AXI_TARGET_MASTER0_WREADY                       ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_WREADY ),
        .M2_PERST0n                                      ( M2_PERST0n_net_0 ),
        .PCIESS_LANE_TXD0_N                              ( M2_PET0_N_net_0 ),
        .PCIESS_LANE_TXD0_P                              ( M2_PET0_P_net_0 ),
        .PCIE_INTERRUPT                                  ( M2_INTERFACE_0_PCIE_INTERRUPT ),
        .APB_TARGET_PRDATA                               ( BVF_RISCV_SUBSYSTEM_M2_APB_MTARGET_PRDATA ),
        .AXI4_INITIATOR_SLAVE0_ARADDR                    ( M2_INTERFACE_0_AXI4_INITIATOR_ARADDR ),
        .AXI4_INITIATOR_SLAVE0_ARBURST                   ( M2_INTERFACE_0_AXI4_INITIATOR_ARBURST ),
        .AXI4_INITIATOR_SLAVE0_ARCACHE                   ( M2_INTERFACE_0_AXI4_INITIATOR_ARCACHE ),
        .AXI4_INITIATOR_SLAVE0_ARID                      ( M2_INTERFACE_0_AXI4_INITIATOR_ARID ),
        .AXI4_INITIATOR_SLAVE0_ARLEN                     ( M2_INTERFACE_0_AXI4_INITIATOR_ARLEN ),
        .AXI4_INITIATOR_SLAVE0_ARLOCK                    ( M2_INTERFACE_0_AXI4_INITIATOR_ARLOCK ),
        .AXI4_INITIATOR_SLAVE0_ARPROT                    ( M2_INTERFACE_0_AXI4_INITIATOR_ARPROT ),
        .AXI4_INITIATOR_SLAVE0_ARQOS                     ( M2_INTERFACE_0_AXI4_INITIATOR_ARQOS ),
        .AXI4_INITIATOR_SLAVE0_ARREGION                  ( M2_INTERFACE_0_AXI4_INITIATOR_ARREGION ),
        .AXI4_INITIATOR_SLAVE0_ARSIZE                    ( M2_INTERFACE_0_AXI4_INITIATOR_ARSIZE ),
        .AXI4_INITIATOR_SLAVE0_ARUSER                    ( M2_INTERFACE_0_AXI4_INITIATOR_ARUSER ),
        .AXI4_INITIATOR_SLAVE0_AWADDR                    ( M2_INTERFACE_0_AXI4_INITIATOR_AWADDR ),
        .AXI4_INITIATOR_SLAVE0_AWBURST                   ( M2_INTERFACE_0_AXI4_INITIATOR_AWBURST ),
        .AXI4_INITIATOR_SLAVE0_AWCACHE                   ( M2_INTERFACE_0_AXI4_INITIATOR_AWCACHE ),
        .AXI4_INITIATOR_SLAVE0_AWID                      ( M2_INTERFACE_0_AXI4_INITIATOR_AWID ),
        .AXI4_INITIATOR_SLAVE0_AWLEN                     ( M2_INTERFACE_0_AXI4_INITIATOR_AWLEN ),
        .AXI4_INITIATOR_SLAVE0_AWLOCK                    ( M2_INTERFACE_0_AXI4_INITIATOR_AWLOCK ),
        .AXI4_INITIATOR_SLAVE0_AWPROT                    ( M2_INTERFACE_0_AXI4_INITIATOR_AWPROT ),
        .AXI4_INITIATOR_SLAVE0_AWQOS                     ( M2_INTERFACE_0_AXI4_INITIATOR_AWQOS ),
        .AXI4_INITIATOR_SLAVE0_AWREGION                  ( M2_INTERFACE_0_AXI4_INITIATOR_AWREGION ),
        .AXI4_INITIATOR_SLAVE0_AWSIZE                    ( M2_INTERFACE_0_AXI4_INITIATOR_AWSIZE ),
        .AXI4_INITIATOR_SLAVE0_AWUSER                    ( M2_INTERFACE_0_AXI4_INITIATOR_AWUSER ),
        .AXI4_INITIATOR_SLAVE0_WDATA                     ( M2_INTERFACE_0_AXI4_INITIATOR_WDATA ),
        .AXI4_INITIATOR_SLAVE0_WSTRB                     ( M2_INTERFACE_0_AXI4_INITIATOR_WSTRB ),
        .AXI4_INITIATOR_SLAVE0_WUSER                     ( M2_INTERFACE_0_AXI4_INITIATOR_WUSER ),
        .AXI_TARGET_MASTER0_BID                          ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_BID ),
        .AXI_TARGET_MASTER0_BRESP                        ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_BRESP ),
        .AXI_TARGET_MASTER0_BUSER                        ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_BUSER ),
        .AXI_TARGET_MASTER0_RDATA                        ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RDATA ),
        .AXI_TARGET_MASTER0_RID                          ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RID ),
        .AXI_TARGET_MASTER0_RRESP                        ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RRESP ),
        .AXI_TARGET_MASTER0_RUSER                        ( BVF_RISCV_SUBSYSTEM_FIC_1_AXI4_INITIATOR_RUSER ) 
        );


endmodule
