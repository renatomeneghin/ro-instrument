//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Mar 17 14:00:48 2025
// Version: 2023.2 2023.2.0.8
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of PF_PCIE_C0 to TCL
# Family: PolarFireSoC
# Part Number: MPFS025T-FCVG484E
# Create and Configure the core component PF_PCIE_C0
create_and_configure_core -core_vlnv {Actel:SgCore:PF_PCIE:2.0.121} -component_name {PF_PCIE_C0} -params {\
"EXPOSE_ALL_DEBUG_PORTS:false"  \
"UI_DLL_JITTER_TOLERANCE:Medium_Low"  \
"UI_EXPOSE_LANE_DRI_PORTS:false"  \
"UI_EXPOSE_PCIE_APBLINK_PORTS:true"  \
"UI_GPSS1_LANE0_IS_USED:false"  \
"UI_GPSS1_LANE1_IS_USED:false"  \
"UI_GPSS1_LANE2_IS_USED:false"  \
"UI_GPSS1_LANE3_IS_USED:false"  \
"UI_IS_CONFIGURED:true"  \
"UI_PCIE_0_BAR_MODE:Custom"  \
"UI_PCIE_0_CDR_REF_CLK_NUMBER:1"  \
"UI_PCIE_0_CDR_REF_CLK_SOURCE:Dedicated"  \
"UI_PCIE_0_CLASS_CODE:0x060400"  \
"UI_PCIE_0_CONTROLLER_ENABLED:Enabled"  \
"UI_PCIE_0_DE_EMPHASIS:-3.5 dB"  \
"UI_PCIE_0_DEVICE_ID:0x1556"  \
"UI_PCIE_0_EXPOSE_WAKE_SIG:Disabled"  \
"UI_PCIE_0_INTERRUPTS:MSI8"  \
"UI_PCIE_0_L0_ACC_LATENCY:No limit"  \
"UI_PCIE_0_L0_EXIT_LATENCY:64 ns to less than 128 ns"  \
"UI_PCIE_0_L1_ACC_LATENCY:No limit"  \
"UI_PCIE_0_L1_ENABLE:Disabled"  \
"UI_PCIE_0_L1_EXIT_LATENCY:16 us to less than 32 us"  \
"UI_PCIE_0_LANE_RATE:Gen2 (5.0 Gbps)"  \
"UI_PCIE_0_MASTER_SIZE_BAR_0_TABLE:2 GB"  \
"UI_PCIE_0_MASTER_SIZE_BAR_1_TABLE:4 KB"  \
"UI_PCIE_0_MASTER_SIZE_BAR_2_TABLE:4 KB"  \
"UI_PCIE_0_MASTER_SIZE_BAR_3_TABLE:4 KB"  \
"UI_PCIE_0_MASTER_SIZE_BAR_4_TABLE:4 KB"  \
"UI_PCIE_0_MASTER_SIZE_BAR_5_TABLE:4 KB"  \
"UI_PCIE_0_MASTER_SOURCE_ADDRESS_BAR_0_TABLE:0x0000"  \
"UI_PCIE_0_MASTER_SOURCE_ADDRESS_BAR_1_TABLE:0x0000"  \
"UI_PCIE_0_MASTER_SOURCE_ADDRESS_BAR_2_TABLE:0x0000"  \
"UI_PCIE_0_MASTER_SOURCE_ADDRESS_BAR_3_TABLE:0x0000"  \
"UI_PCIE_0_MASTER_SOURCE_ADDRESS_BAR_4_TABLE:0x0000"  \
"UI_PCIE_0_MASTER_SOURCE_ADDRESS_BAR_5_TABLE:0x0000"  \
"UI_PCIE_0_MASTER_TABLE_SIZE_BAR_0_TABLE:4 KB"  \
"UI_PCIE_0_MASTER_TABLE_SIZE_BAR_1_TABLE:4 KB"  \
"UI_PCIE_0_MASTER_TABLE_SIZE_BAR_2_TABLE:4 KB"  \
"UI_PCIE_0_MASTER_TABLE_SIZE_BAR_3_TABLE:4 KB"  \
"UI_PCIE_0_MASTER_TABLE_SIZE_BAR_4_TABLE:4 KB"  \
"UI_PCIE_0_MASTER_TABLE_SIZE_BAR_5_TABLE:4 KB"  \
"UI_PCIE_0_MASTER_TRANS_ADDRESS_BAR_0_TABLE:0x0000"  \
"UI_PCIE_0_MASTER_TRANS_ADDRESS_BAR_1_TABLE:0x0000"  \
"UI_PCIE_0_MASTER_TRANS_ADDRESS_BAR_2_TABLE:0x0000"  \
"UI_PCIE_0_MASTER_TRANS_ADDRESS_BAR_3_TABLE:0x0000"  \
"UI_PCIE_0_MASTER_TRANS_ADDRESS_BAR_4_TABLE:0x0000"  \
"UI_PCIE_0_MASTER_TRANS_ADDRESS_BAR_5_TABLE:0x0000"  \
"UI_PCIE_0_MASTER_TYPE_BAR_0_TABLE:64-bit prefetchable memory"  \
"UI_PCIE_0_MASTER_TYPE_BAR_1_TABLE:Disabled"  \
"UI_PCIE_0_MASTER_TYPE_BAR_2_TABLE:Disabled"  \
"UI_PCIE_0_MASTER_TYPE_BAR_3_TABLE:Disabled"  \
"UI_PCIE_0_MASTER_TYPE_BAR_4_TABLE:Disabled"  \
"UI_PCIE_0_MASTER_TYPE_BAR_5_TABLE:Disabled"  \
"UI_PCIE_0_NUM_FTS:63"  \
"UI_PCIE_0_NUMBER_OF_LANES:x1"  \
"UI_PCIE_0_PHY_REF_CLK_SLOT:Slot"  \
"UI_PCIE_0_PORT_TYPE:Root Port"  \
"UI_PCIE_0_REF_CLK_FREQ:100"  \
"UI_PCIE_0_REVISION_ID:0x0000"  \
"UI_PCIE_0_SLAVE_SIZE_TABLE_0:4 KB"  \
"UI_PCIE_0_SLAVE_SIZE_TABLE_1:4 KB"  \
"UI_PCIE_0_SLAVE_SIZE_TABLE_2:4 KB"  \
"UI_PCIE_0_SLAVE_SIZE_TABLE_3:4 KB"  \
"UI_PCIE_0_SLAVE_SIZE_TABLE_4:4 KB"  \
"UI_PCIE_0_SLAVE_SIZE_TABLE_5:4 KB"  \
"UI_PCIE_0_SLAVE_SIZE_TABLE_6:4 KB"  \
"UI_PCIE_0_SLAVE_SIZE_TABLE_7:4 KB"  \
"UI_PCIE_0_SLAVE_SOURCE_ADDRESS_TABLE_0:0x0000"  \
"UI_PCIE_0_SLAVE_SOURCE_ADDRESS_TABLE_1:0x0000"  \
"UI_PCIE_0_SLAVE_SOURCE_ADDRESS_TABLE_2:0x0000"  \
"UI_PCIE_0_SLAVE_SOURCE_ADDRESS_TABLE_3:0x0000"  \
"UI_PCIE_0_SLAVE_SOURCE_ADDRESS_TABLE_4:0x0000"  \
"UI_PCIE_0_SLAVE_SOURCE_ADDRESS_TABLE_5:0x0000"  \
"UI_PCIE_0_SLAVE_SOURCE_ADDRESS_TABLE_6:0x0000"  \
"UI_PCIE_0_SLAVE_SOURCE_ADDRESS_TABLE_7:0x0000"  \
"UI_PCIE_0_SLAVE_STATE_TABLE_0:Enabled"  \
"UI_PCIE_0_SLAVE_STATE_TABLE_1:Disabled"  \
"UI_PCIE_0_SLAVE_STATE_TABLE_2:Disabled"  \
"UI_PCIE_0_SLAVE_STATE_TABLE_3:Disabled"  \
"UI_PCIE_0_SLAVE_STATE_TABLE_4:Disabled"  \
"UI_PCIE_0_SLAVE_STATE_TABLE_5:Disabled"  \
"UI_PCIE_0_SLAVE_STATE_TABLE_6:Disabled"  \
"UI_PCIE_0_SLAVE_STATE_TABLE_7:Disabled"  \
"UI_PCIE_0_SLAVE_TRANS_ADDRESS_TABLE_0:0x0000"  \
"UI_PCIE_0_SLAVE_TRANS_ADDRESS_TABLE_1:0x0000"  \
"UI_PCIE_0_SLAVE_TRANS_ADDRESS_TABLE_2:0x0000"  \
"UI_PCIE_0_SLAVE_TRANS_ADDRESS_TABLE_3:0x0000"  \
"UI_PCIE_0_SLAVE_TRANS_ADDRESS_TABLE_4:0x0000"  \
"UI_PCIE_0_SLAVE_TRANS_ADDRESS_TABLE_5:0x0000"  \
"UI_PCIE_0_SLAVE_TRANS_ADDRESS_TABLE_6:0x0000"  \
"UI_PCIE_0_SLAVE_TRANS_ADDRESS_TABLE_7:0x0000"  \
"UI_PCIE_0_SUB_SYSTEM_ID:0x0000"  \
"UI_PCIE_0_SUB_VENDOR_ID:0x0000"  \
"UI_PCIE_0_TRANSMIT_SWING:Full Swing"  \
"UI_PCIE_0_VENDOR_ID:0x11AA"  \
"UI_PCIE_1_BAR_MODE:Custom"  \
"UI_PCIE_1_CDR_REF_CLK_NUMBER:1"  \
"UI_PCIE_1_CDR_REF_CLK_SOURCE:Dedicated"  \
"UI_PCIE_1_CLASS_CODE:0x0000"  \
"UI_PCIE_1_CONTROLLER_ENABLED:Disabled"  \
"UI_PCIE_1_DE_EMPHASIS:-3.5 dB"  \
"UI_PCIE_1_DEVICE_ID:0x1556"  \
"UI_PCIE_1_EXPOSE_WAKE_SIG:Disabled"  \
"UI_PCIE_1_INTERRUPTS:MSI1"  \
"UI_PCIE_1_L0_ACC_LATENCY:No limit"  \
"UI_PCIE_1_L0_EXIT_LATENCY:64 ns to less than 128 ns"  \
"UI_PCIE_1_L1_ACC_LATENCY:No limit"  \
"UI_PCIE_1_L1_ENABLE:Disabled"  \
"UI_PCIE_1_L1_EXIT_LATENCY:16 us to less than 32 us"  \
"UI_PCIE_1_LANE_RATE:Gen2 (5.0 Gbps)"  \
"UI_PCIE_1_MASTER_SIZE_BAR_0_TABLE:4 KB"  \
"UI_PCIE_1_MASTER_SIZE_BAR_1_TABLE:4 KB"  \
"UI_PCIE_1_MASTER_SIZE_BAR_2_TABLE:4 KB"  \
"UI_PCIE_1_MASTER_SIZE_BAR_3_TABLE:4 KB"  \
"UI_PCIE_1_MASTER_SIZE_BAR_4_TABLE:4 KB"  \
"UI_PCIE_1_MASTER_SIZE_BAR_5_TABLE:4 KB"  \
"UI_PCIE_1_MASTER_SOURCE_ADDRESS_BAR_0_TABLE:0x0000"  \
"UI_PCIE_1_MASTER_SOURCE_ADDRESS_BAR_1_TABLE:0x0000"  \
"UI_PCIE_1_MASTER_SOURCE_ADDRESS_BAR_2_TABLE:0x0000"  \
"UI_PCIE_1_MASTER_SOURCE_ADDRESS_BAR_3_TABLE:0x0000"  \
"UI_PCIE_1_MASTER_SOURCE_ADDRESS_BAR_4_TABLE:0x0000"  \
"UI_PCIE_1_MASTER_SOURCE_ADDRESS_BAR_5_TABLE:0x0000"  \
"UI_PCIE_1_MASTER_TABLE_SIZE_BAR_0_TABLE:4 KB"  \
"UI_PCIE_1_MASTER_TABLE_SIZE_BAR_1_TABLE:4 KB"  \
"UI_PCIE_1_MASTER_TABLE_SIZE_BAR_2_TABLE:4 KB"  \
"UI_PCIE_1_MASTER_TABLE_SIZE_BAR_3_TABLE:4 KB"  \
"UI_PCIE_1_MASTER_TABLE_SIZE_BAR_4_TABLE:4 KB"  \
"UI_PCIE_1_MASTER_TABLE_SIZE_BAR_5_TABLE:4 KB"  \
"UI_PCIE_1_MASTER_TRANS_ADDRESS_BAR_0_TABLE:0x0000"  \
"UI_PCIE_1_MASTER_TRANS_ADDRESS_BAR_1_TABLE:0x0000"  \
"UI_PCIE_1_MASTER_TRANS_ADDRESS_BAR_2_TABLE:0x0000"  \
"UI_PCIE_1_MASTER_TRANS_ADDRESS_BAR_3_TABLE:0x0000"  \
"UI_PCIE_1_MASTER_TRANS_ADDRESS_BAR_4_TABLE:0x0000"  \
"UI_PCIE_1_MASTER_TRANS_ADDRESS_BAR_5_TABLE:0x0000"  \
"UI_PCIE_1_MASTER_TYPE_BAR_0_TABLE:64-bit prefetchable memory"  \
"UI_PCIE_1_MASTER_TYPE_BAR_1_TABLE:Disabled"  \
"UI_PCIE_1_MASTER_TYPE_BAR_2_TABLE:Disabled"  \
"UI_PCIE_1_MASTER_TYPE_BAR_3_TABLE:Disabled"  \
"UI_PCIE_1_MASTER_TYPE_BAR_4_TABLE:Disabled"  \
"UI_PCIE_1_MASTER_TYPE_BAR_5_TABLE:Disabled"  \
"UI_PCIE_1_NUM_FTS:63"  \
"UI_PCIE_1_NUMBER_OF_LANES:x4"  \
"UI_PCIE_1_PHY_REF_CLK_SLOT:Slot"  \
"UI_PCIE_1_PORT_TYPE:Root Port"  \
"UI_PCIE_1_REF_CLK_FREQ:100"  \
"UI_PCIE_1_REVISION_ID:0x0000"  \
"UI_PCIE_1_SLAVE_SIZE_TABLE_0:4 KB"  \
"UI_PCIE_1_SLAVE_SIZE_TABLE_1:4 KB"  \
"UI_PCIE_1_SLAVE_SIZE_TABLE_2:4 KB"  \
"UI_PCIE_1_SLAVE_SIZE_TABLE_3:4 KB"  \
"UI_PCIE_1_SLAVE_SIZE_TABLE_4:4 KB"  \
"UI_PCIE_1_SLAVE_SIZE_TABLE_5:4 KB"  \
"UI_PCIE_1_SLAVE_SIZE_TABLE_6:4 KB"  \
"UI_PCIE_1_SLAVE_SIZE_TABLE_7:4 KB"  \
"UI_PCIE_1_SLAVE_SOURCE_ADDRESS_TABLE_0:0x0000"  \
"UI_PCIE_1_SLAVE_SOURCE_ADDRESS_TABLE_1:0x0000"  \
"UI_PCIE_1_SLAVE_SOURCE_ADDRESS_TABLE_2:0x0000"  \
"UI_PCIE_1_SLAVE_SOURCE_ADDRESS_TABLE_3:0x0000"  \
"UI_PCIE_1_SLAVE_SOURCE_ADDRESS_TABLE_4:0x0000"  \
"UI_PCIE_1_SLAVE_SOURCE_ADDRESS_TABLE_5:0x0000"  \
"UI_PCIE_1_SLAVE_SOURCE_ADDRESS_TABLE_6:0x0000"  \
"UI_PCIE_1_SLAVE_SOURCE_ADDRESS_TABLE_7:0x0000"  \
"UI_PCIE_1_SLAVE_STATE_TABLE_0:Disabled"  \
"UI_PCIE_1_SLAVE_STATE_TABLE_1:Disabled"  \
"UI_PCIE_1_SLAVE_STATE_TABLE_2:Disabled"  \
"UI_PCIE_1_SLAVE_STATE_TABLE_3:Disabled"  \
"UI_PCIE_1_SLAVE_STATE_TABLE_4:Disabled"  \
"UI_PCIE_1_SLAVE_STATE_TABLE_5:Disabled"  \
"UI_PCIE_1_SLAVE_STATE_TABLE_6:Disabled"  \
"UI_PCIE_1_SLAVE_STATE_TABLE_7:Disabled"  \
"UI_PCIE_1_SLAVE_TRANS_ADDRESS_TABLE_0:0x0000"  \
"UI_PCIE_1_SLAVE_TRANS_ADDRESS_TABLE_1:0x0000"  \
"UI_PCIE_1_SLAVE_TRANS_ADDRESS_TABLE_2:0x0000"  \
"UI_PCIE_1_SLAVE_TRANS_ADDRESS_TABLE_3:0x0000"  \
"UI_PCIE_1_SLAVE_TRANS_ADDRESS_TABLE_4:0x0000"  \
"UI_PCIE_1_SLAVE_TRANS_ADDRESS_TABLE_5:0x0000"  \
"UI_PCIE_1_SLAVE_TRANS_ADDRESS_TABLE_6:0x0000"  \
"UI_PCIE_1_SLAVE_TRANS_ADDRESS_TABLE_7:0x0000"  \
"UI_PCIE_1_SUB_SYSTEM_ID:0x0000"  \
"UI_PCIE_1_SUB_VENDOR_ID:0x0000"  \
"UI_PCIE_1_TRANSMIT_SWING:Full Swing"  \
"UI_PCIE_1_VENDOR_ID:0x11AA"  \
"UI_PCIESS_LANE0_IS_USED:true"  \
"UI_PCIESS_LANE1_IS_USED:false"  \
"UI_PCIESS_LANE2_IS_USED:false"  \
"UI_PCIESS_LANE3_IS_USED:false"  \
"UI_PROTOCOL_PRESET_USED:PCIe"  \
"UI_SIMULATION_LEVEL:RTL"  \
"UI_TX_CLK_DIV_FACTOR:1"  \
"UI_USE_EMBEDDED_DLL:true"  \
"XT_ES_DEVICE:false"   }
# Exporting Component Description of PF_PCIE_C0 to TCL done
*/

// PF_PCIE_C0
module PF_PCIE_C0(
    // Inputs
    APB_S_PADDR,
    APB_S_PCLK,
    APB_S_PENABLE,
    APB_S_PRESET_N,
    APB_S_PSEL,
    APB_S_PWDATA,
    APB_S_PWRITE,
    AXI_CLK,
    AXI_CLK_STABLE,
    INIT_DONE,
    PCIESS_AXI_0_M_ARREADY,
    PCIESS_AXI_0_M_AWREADY,
    PCIESS_AXI_0_M_BID,
    PCIESS_AXI_0_M_BRESP,
    PCIESS_AXI_0_M_BVALID,
    PCIESS_AXI_0_M_RDATA,
    PCIESS_AXI_0_M_RID,
    PCIESS_AXI_0_M_RLAST,
    PCIESS_AXI_0_M_RRESP,
    PCIESS_AXI_0_M_RVALID,
    PCIESS_AXI_0_M_WREADY,
    PCIESS_AXI_0_S_ARADDR,
    PCIESS_AXI_0_S_ARBURST,
    PCIESS_AXI_0_S_ARID,
    PCIESS_AXI_0_S_ARLEN,
    PCIESS_AXI_0_S_ARSIZE,
    PCIESS_AXI_0_S_ARVALID,
    PCIESS_AXI_0_S_AWADDR,
    PCIESS_AXI_0_S_AWBURST,
    PCIESS_AXI_0_S_AWID,
    PCIESS_AXI_0_S_AWLEN,
    PCIESS_AXI_0_S_AWSIZE,
    PCIESS_AXI_0_S_AWVALID,
    PCIESS_AXI_0_S_BREADY,
    PCIESS_AXI_0_S_RREADY,
    PCIESS_AXI_0_S_WDATA,
    PCIESS_AXI_0_S_WLAST,
    PCIESS_AXI_0_S_WSTRB,
    PCIESS_AXI_0_S_WVALID,
    PCIESS_LANE0_CDR_REF_CLK_0,
    PCIESS_LANE_RXD0_N,
    PCIESS_LANE_RXD0_P,
    PCIE_0_INTERRUPT,
    PCIE_0_M_RDERR,
    PCIE_0_S_WDERR,
    PCIE_0_TL_CLK_125MHz,
    PCIE_0_TX_BIT_CLK,
    PCIE_0_TX_PLL_LOCK,
    PCIE_0_TX_PLL_REF_CLK,
    // Outputs
    APB_S_PRDATA,
    APB_S_PREADY,
    APB_S_PSLVERR,
    PCIESS_AXI_0_M_ARADDR,
    PCIESS_AXI_0_M_ARBURST,
    PCIESS_AXI_0_M_ARID,
    PCIESS_AXI_0_M_ARLEN,
    PCIESS_AXI_0_M_ARSIZE,
    PCIESS_AXI_0_M_ARVALID,
    PCIESS_AXI_0_M_AWADDR,
    PCIESS_AXI_0_M_AWBURST,
    PCIESS_AXI_0_M_AWID,
    PCIESS_AXI_0_M_AWLEN,
    PCIESS_AXI_0_M_AWSIZE,
    PCIESS_AXI_0_M_AWVALID,
    PCIESS_AXI_0_M_BREADY,
    PCIESS_AXI_0_M_RREADY,
    PCIESS_AXI_0_M_WDATA,
    PCIESS_AXI_0_M_WLAST,
    PCIESS_AXI_0_M_WSTRB,
    PCIESS_AXI_0_M_WVALID,
    PCIESS_AXI_0_S_ARREADY,
    PCIESS_AXI_0_S_AWREADY,
    PCIESS_AXI_0_S_BID,
    PCIESS_AXI_0_S_BRESP,
    PCIESS_AXI_0_S_BVALID,
    PCIESS_AXI_0_S_RDATA,
    PCIESS_AXI_0_S_RID,
    PCIESS_AXI_0_S_RLAST,
    PCIESS_AXI_0_S_RRESP,
    PCIESS_AXI_0_S_RVALID,
    PCIESS_AXI_0_S_WREADY,
    PCIESS_LANE_TXD0_N,
    PCIESS_LANE_TXD0_P,
    PCIE_0_DLUP_EXIT,
    PCIE_0_HOT_RST_EXIT,
    PCIE_0_INTERRUPT_OUT,
    PCIE_0_LTSSM,
    PCIE_0_M_WDERR,
    PCIE_0_PERST_OUT_N,
    PCIE_0_S_RDERR
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [25:0] APB_S_PADDR;
input         APB_S_PCLK;
input         APB_S_PENABLE;
input         APB_S_PRESET_N;
input         APB_S_PSEL;
input  [31:0] APB_S_PWDATA;
input         APB_S_PWRITE;
input         AXI_CLK;
input         AXI_CLK_STABLE;
input         INIT_DONE;
input         PCIESS_AXI_0_M_ARREADY;
input         PCIESS_AXI_0_M_AWREADY;
input  [3:0]  PCIESS_AXI_0_M_BID;
input  [1:0]  PCIESS_AXI_0_M_BRESP;
input         PCIESS_AXI_0_M_BVALID;
input  [63:0] PCIESS_AXI_0_M_RDATA;
input  [3:0]  PCIESS_AXI_0_M_RID;
input         PCIESS_AXI_0_M_RLAST;
input  [1:0]  PCIESS_AXI_0_M_RRESP;
input         PCIESS_AXI_0_M_RVALID;
input         PCIESS_AXI_0_M_WREADY;
input  [31:0] PCIESS_AXI_0_S_ARADDR;
input  [1:0]  PCIESS_AXI_0_S_ARBURST;
input  [3:0]  PCIESS_AXI_0_S_ARID;
input  [7:0]  PCIESS_AXI_0_S_ARLEN;
input  [1:0]  PCIESS_AXI_0_S_ARSIZE;
input         PCIESS_AXI_0_S_ARVALID;
input  [31:0] PCIESS_AXI_0_S_AWADDR;
input  [1:0]  PCIESS_AXI_0_S_AWBURST;
input  [3:0]  PCIESS_AXI_0_S_AWID;
input  [7:0]  PCIESS_AXI_0_S_AWLEN;
input  [1:0]  PCIESS_AXI_0_S_AWSIZE;
input         PCIESS_AXI_0_S_AWVALID;
input         PCIESS_AXI_0_S_BREADY;
input         PCIESS_AXI_0_S_RREADY;
input  [63:0] PCIESS_AXI_0_S_WDATA;
input         PCIESS_AXI_0_S_WLAST;
input  [7:0]  PCIESS_AXI_0_S_WSTRB;
input         PCIESS_AXI_0_S_WVALID;
input         PCIESS_LANE0_CDR_REF_CLK_0;
input         PCIESS_LANE_RXD0_N;
input         PCIESS_LANE_RXD0_P;
input  [7:0]  PCIE_0_INTERRUPT;
input         PCIE_0_M_RDERR;
input         PCIE_0_S_WDERR;
input         PCIE_0_TL_CLK_125MHz;
input         PCIE_0_TX_BIT_CLK;
input         PCIE_0_TX_PLL_LOCK;
input         PCIE_0_TX_PLL_REF_CLK;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] APB_S_PRDATA;
output        APB_S_PREADY;
output        APB_S_PSLVERR;
output [31:0] PCIESS_AXI_0_M_ARADDR;
output [1:0]  PCIESS_AXI_0_M_ARBURST;
output [3:0]  PCIESS_AXI_0_M_ARID;
output [7:0]  PCIESS_AXI_0_M_ARLEN;
output [1:0]  PCIESS_AXI_0_M_ARSIZE;
output        PCIESS_AXI_0_M_ARVALID;
output [31:0] PCIESS_AXI_0_M_AWADDR;
output [1:0]  PCIESS_AXI_0_M_AWBURST;
output [3:0]  PCIESS_AXI_0_M_AWID;
output [7:0]  PCIESS_AXI_0_M_AWLEN;
output [1:0]  PCIESS_AXI_0_M_AWSIZE;
output        PCIESS_AXI_0_M_AWVALID;
output        PCIESS_AXI_0_M_BREADY;
output        PCIESS_AXI_0_M_RREADY;
output [63:0] PCIESS_AXI_0_M_WDATA;
output        PCIESS_AXI_0_M_WLAST;
output [7:0]  PCIESS_AXI_0_M_WSTRB;
output        PCIESS_AXI_0_M_WVALID;
output        PCIESS_AXI_0_S_ARREADY;
output        PCIESS_AXI_0_S_AWREADY;
output [3:0]  PCIESS_AXI_0_S_BID;
output [1:0]  PCIESS_AXI_0_S_BRESP;
output        PCIESS_AXI_0_S_BVALID;
output [63:0] PCIESS_AXI_0_S_RDATA;
output [3:0]  PCIESS_AXI_0_S_RID;
output        PCIESS_AXI_0_S_RLAST;
output [1:0]  PCIESS_AXI_0_S_RRESP;
output        PCIESS_AXI_0_S_RVALID;
output        PCIESS_AXI_0_S_WREADY;
output        PCIESS_LANE_TXD0_N;
output        PCIESS_LANE_TXD0_P;
output        PCIE_0_DLUP_EXIT;
output        PCIE_0_HOT_RST_EXIT;
output        PCIE_0_INTERRUPT_OUT;
output [4:0]  PCIE_0_LTSSM;
output        PCIE_0_M_WDERR;
output        PCIE_0_PERST_OUT_N;
output        PCIE_0_S_RDERR;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          APB_S_PCLK;
wire          APB_S_PRESET_N;
wire   [31:0] AXI_0_MASTER_ARADDR;
wire   [1:0]  AXI_0_MASTER_ARBURST;
wire   [3:0]  AXI_0_MASTER_ARID;
wire   [7:0]  AXI_0_MASTER_ARLEN;
wire          PCIESS_AXI_0_M_ARREADY;
wire   [1:0]  AXI_0_MASTER_ARSIZE;
wire          AXI_0_MASTER_ARVALID;
wire   [31:0] AXI_0_MASTER_AWADDR;
wire   [1:0]  AXI_0_MASTER_AWBURST;
wire   [3:0]  AXI_0_MASTER_AWID;
wire   [7:0]  AXI_0_MASTER_AWLEN;
wire          PCIESS_AXI_0_M_AWREADY;
wire   [1:0]  AXI_0_MASTER_AWSIZE;
wire          AXI_0_MASTER_AWVALID;
wire   [3:0]  PCIESS_AXI_0_M_BID;
wire          AXI_0_MASTER_BREADY;
wire   [1:0]  PCIESS_AXI_0_M_BRESP;
wire          PCIESS_AXI_0_M_BVALID;
wire   [63:0] PCIESS_AXI_0_M_RDATA;
wire   [3:0]  PCIESS_AXI_0_M_RID;
wire          PCIESS_AXI_0_M_RLAST;
wire          AXI_0_MASTER_RREADY;
wire   [1:0]  PCIESS_AXI_0_M_RRESP;
wire          PCIESS_AXI_0_M_RVALID;
wire   [63:0] AXI_0_MASTER_WDATA;
wire          AXI_0_MASTER_WLAST;
wire          PCIESS_AXI_0_M_WREADY;
wire   [7:0]  AXI_0_MASTER_WSTRB;
wire          AXI_0_MASTER_WVALID;
wire   [31:0] PCIESS_AXI_0_S_ARADDR;
wire   [1:0]  PCIESS_AXI_0_S_ARBURST;
wire   [3:0]  PCIESS_AXI_0_S_ARID;
wire   [7:0]  PCIESS_AXI_0_S_ARLEN;
wire          AXI_0_SLAVE_ARREADY;
wire   [1:0]  PCIESS_AXI_0_S_ARSIZE;
wire          PCIESS_AXI_0_S_ARVALID;
wire   [31:0] PCIESS_AXI_0_S_AWADDR;
wire   [1:0]  PCIESS_AXI_0_S_AWBURST;
wire   [3:0]  PCIESS_AXI_0_S_AWID;
wire   [7:0]  PCIESS_AXI_0_S_AWLEN;
wire          AXI_0_SLAVE_AWREADY;
wire   [1:0]  PCIESS_AXI_0_S_AWSIZE;
wire          PCIESS_AXI_0_S_AWVALID;
wire   [3:0]  AXI_0_SLAVE_BID;
wire          PCIESS_AXI_0_S_BREADY;
wire   [1:0]  AXI_0_SLAVE_BRESP;
wire          AXI_0_SLAVE_BVALID;
wire   [63:0] AXI_0_SLAVE_RDATA;
wire   [3:0]  AXI_0_SLAVE_RID;
wire          AXI_0_SLAVE_RLAST;
wire          PCIESS_AXI_0_S_RREADY;
wire   [1:0]  AXI_0_SLAVE_RRESP;
wire          AXI_0_SLAVE_RVALID;
wire   [63:0] PCIESS_AXI_0_S_WDATA;
wire          PCIESS_AXI_0_S_WLAST;
wire          AXI_0_SLAVE_WREADY;
wire   [7:0]  PCIESS_AXI_0_S_WSTRB;
wire          PCIESS_AXI_0_S_WVALID;
wire          AXI_CLK;
wire          AXI_CLK_STABLE;
wire          PCIE_0_TX_BIT_CLK;
wire          PCIE_0_TX_PLL_LOCK;
wire          PCIE_0_TX_PLL_REF_CLK;
wire          INIT_DONE;
wire          PCIE_0_DLUP_EXIT_net_0;
wire          PCIE_0_HOT_RST_EXIT_net_0;
wire   [7:0]  PCIE_0_INTERRUPT;
wire          PCIE_0_INTERRUPT_OUT_net_0;
wire   [4:0]  PCIE_0_LTSSM_net_0;
wire          PCIE_0_M_RDERR;
wire          PCIE_0_M_WDERR_net_0;
wire          PCIE_0_PERST_OUT_N_net_0;
wire          PCIE_0_S_RDERR_net_0;
wire          PCIE_0_S_WDERR;
wire          PCIE_0_TL_CLK_125MHz;
wire   [25:0] APB_S_PADDR;
wire          APB_S_PENABLE;
wire   [31:0] PCIE_APB_SLAVE_PRDATA;
wire          PCIE_APB_SLAVE_PREADY;
wire          APB_S_PSEL;
wire          PCIE_APB_SLAVE_PSLVERR;
wire   [31:0] APB_S_PWDATA;
wire          APB_S_PWRITE;
wire          PCIESS_LANE0_CDR_REF_CLK_0;
wire          PCIESS_LANE_RXD0_N;
wire          PCIESS_LANE_RXD0_P;
wire          PCIESS_LANE_TXD0_N_net_0;
wire          PCIESS_LANE_TXD0_P_net_0;
wire          AXI_0_SLAVE_ARREADY_net_0;
wire          AXI_0_SLAVE_AWREADY_net_0;
wire   [3:0]  AXI_0_SLAVE_BID_net_0;
wire   [1:0]  AXI_0_SLAVE_BRESP_net_0;
wire          AXI_0_SLAVE_BVALID_net_0;
wire   [3:0]  AXI_0_SLAVE_RID_net_0;
wire   [1:0]  AXI_0_SLAVE_RRESP_net_0;
wire          AXI_0_SLAVE_RLAST_net_0;
wire          AXI_0_SLAVE_RVALID_net_0;
wire          AXI_0_SLAVE_WREADY_net_0;
wire   [63:0] AXI_0_SLAVE_RDATA_net_0;
wire   [1:0]  AXI_0_MASTER_ARBURST_net_0;
wire   [7:0]  AXI_0_MASTER_ARLEN_net_0;
wire   [1:0]  AXI_0_MASTER_ARSIZE_net_0;
wire          AXI_0_MASTER_ARVALID_net_0;
wire   [1:0]  AXI_0_MASTER_AWBURST_net_0;
wire   [7:0]  AXI_0_MASTER_AWLEN_net_0;
wire   [1:0]  AXI_0_MASTER_AWSIZE_net_0;
wire          AXI_0_MASTER_AWVALID_net_0;
wire          AXI_0_MASTER_BREADY_net_0;
wire          AXI_0_MASTER_RREADY_net_0;
wire   [7:0]  AXI_0_MASTER_WSTRB_net_0;
wire          AXI_0_MASTER_WLAST_net_0;
wire          AXI_0_MASTER_WVALID_net_0;
wire   [3:0]  AXI_0_MASTER_ARID_net_0;
wire   [31:0] AXI_0_MASTER_AWADDR_net_0;
wire   [63:0] AXI_0_MASTER_WDATA_net_0;
wire   [3:0]  AXI_0_MASTER_AWID_net_0;
wire   [31:0] AXI_0_MASTER_ARADDR_net_0;
wire          PCIE_APB_SLAVE_PREADY_net_0;
wire   [31:0] PCIE_APB_SLAVE_PRDATA_net_0;
wire          PCIE_APB_SLAVE_PSLVERR_net_0;
wire          PCIESS_LANE_TXD0_P_net_1;
wire          PCIESS_LANE_TXD0_N_net_1;
wire   [4:0]  PCIE_0_LTSSM_net_1;
wire          PCIE_0_INTERRUPT_OUT_net_1;
wire          PCIE_0_M_WDERR_net_1;
wire          PCIE_0_S_RDERR_net_1;
wire          PCIE_0_HOT_RST_EXIT_net_1;
wire          PCIE_0_DLUP_EXIT_net_1;
wire          PCIE_0_PERST_OUT_N_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire   [7:0]  PCIE_1_INTERRUPT_const_net_0;
wire   [3:0]  PCIESS_AXI_1_M_BID_const_net_0;
wire   [1:0]  PCIESS_AXI_1_M_BRESP_const_net_0;
wire   [3:0]  PCIESS_AXI_1_M_RID_const_net_0;
wire   [1:0]  PCIESS_AXI_1_M_RRESP_const_net_0;
wire   [1:0]  PCIESS_AXI_1_S_ARBURST_const_net_0;
wire   [3:0]  PCIESS_AXI_1_S_ARID_const_net_0;
wire   [7:0]  PCIESS_AXI_1_S_ARLEN_const_net_0;
wire   [1:0]  PCIESS_AXI_1_S_ARSIZE_const_net_0;
wire   [1:0]  PCIESS_AXI_1_S_AWBURST_const_net_0;
wire   [3:0]  PCIESS_AXI_1_S_AWID_const_net_0;
wire   [7:0]  PCIESS_AXI_1_S_AWLEN_const_net_0;
wire   [1:0]  PCIESS_AXI_1_S_AWSIZE_const_net_0;
wire   [7:0]  PCIESS_AXI_1_S_WSTRB_const_net_0;
wire   [63:0] PCIESS_AXI_1_M_RDATA_const_net_0;
wire   [31:0] PCIESS_AXI_1_S_AWADDR_const_net_0;
wire   [63:0] PCIESS_AXI_1_S_WDATA_const_net_0;
wire   [31:0] PCIESS_AXI_1_S_ARADDR_const_net_0;
wire   [10:0] PCIESS_LANE0_DRI_CTRL_const_net_0;
wire   [32:0] PCIESS_LANE0_DRI_WDATA_const_net_0;
wire   [10:0] PCIESS_LANE1_DRI_CTRL_const_net_0;
wire   [32:0] PCIESS_LANE1_DRI_WDATA_const_net_0;
wire   [10:0] PCIESS_LANE2_DRI_CTRL_const_net_0;
wire   [32:0] PCIESS_LANE2_DRI_WDATA_const_net_0;
wire   [10:0] PCIESS_LANE3_DRI_CTRL_const_net_0;
wire   [32:0] PCIESS_LANE3_DRI_WDATA_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net                            = 1'b0;
assign PCIE_1_INTERRUPT_const_net_0       = 8'h00;
assign PCIESS_AXI_1_M_BID_const_net_0     = 4'h0;
assign PCIESS_AXI_1_M_BRESP_const_net_0   = 2'h0;
assign PCIESS_AXI_1_M_RID_const_net_0     = 4'h0;
assign PCIESS_AXI_1_M_RRESP_const_net_0   = 2'h0;
assign PCIESS_AXI_1_S_ARBURST_const_net_0 = 2'h0;
assign PCIESS_AXI_1_S_ARID_const_net_0    = 4'h0;
assign PCIESS_AXI_1_S_ARLEN_const_net_0   = 8'h00;
assign PCIESS_AXI_1_S_ARSIZE_const_net_0  = 2'h0;
assign PCIESS_AXI_1_S_AWBURST_const_net_0 = 2'h0;
assign PCIESS_AXI_1_S_AWID_const_net_0    = 4'h0;
assign PCIESS_AXI_1_S_AWLEN_const_net_0   = 8'h00;
assign PCIESS_AXI_1_S_AWSIZE_const_net_0  = 2'h0;
assign PCIESS_AXI_1_S_WSTRB_const_net_0   = 8'h00;
assign PCIESS_AXI_1_M_RDATA_const_net_0   = 64'h0000000000000000;
assign PCIESS_AXI_1_S_AWADDR_const_net_0  = 32'h00000000;
assign PCIESS_AXI_1_S_WDATA_const_net_0   = 64'h0000000000000000;
assign PCIESS_AXI_1_S_ARADDR_const_net_0  = 32'h00000000;
assign PCIESS_LANE0_DRI_CTRL_const_net_0  = 11'h000;
assign PCIESS_LANE0_DRI_WDATA_const_net_0 = 33'h000000000;
assign PCIESS_LANE1_DRI_CTRL_const_net_0  = 11'h000;
assign PCIESS_LANE1_DRI_WDATA_const_net_0 = 33'h000000000;
assign PCIESS_LANE2_DRI_CTRL_const_net_0  = 11'h000;
assign PCIESS_LANE2_DRI_WDATA_const_net_0 = 33'h000000000;
assign PCIESS_LANE3_DRI_CTRL_const_net_0  = 11'h000;
assign PCIESS_LANE3_DRI_WDATA_const_net_0 = 33'h000000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign AXI_0_SLAVE_ARREADY_net_0    = AXI_0_SLAVE_ARREADY;
assign PCIESS_AXI_0_S_ARREADY       = AXI_0_SLAVE_ARREADY_net_0;
assign AXI_0_SLAVE_AWREADY_net_0    = AXI_0_SLAVE_AWREADY;
assign PCIESS_AXI_0_S_AWREADY       = AXI_0_SLAVE_AWREADY_net_0;
assign AXI_0_SLAVE_BID_net_0        = AXI_0_SLAVE_BID;
assign PCIESS_AXI_0_S_BID[3:0]      = AXI_0_SLAVE_BID_net_0;
assign AXI_0_SLAVE_BRESP_net_0      = AXI_0_SLAVE_BRESP;
assign PCIESS_AXI_0_S_BRESP[1:0]    = AXI_0_SLAVE_BRESP_net_0;
assign AXI_0_SLAVE_BVALID_net_0     = AXI_0_SLAVE_BVALID;
assign PCIESS_AXI_0_S_BVALID        = AXI_0_SLAVE_BVALID_net_0;
assign AXI_0_SLAVE_RID_net_0        = AXI_0_SLAVE_RID;
assign PCIESS_AXI_0_S_RID[3:0]      = AXI_0_SLAVE_RID_net_0;
assign AXI_0_SLAVE_RRESP_net_0      = AXI_0_SLAVE_RRESP;
assign PCIESS_AXI_0_S_RRESP[1:0]    = AXI_0_SLAVE_RRESP_net_0;
assign AXI_0_SLAVE_RLAST_net_0      = AXI_0_SLAVE_RLAST;
assign PCIESS_AXI_0_S_RLAST         = AXI_0_SLAVE_RLAST_net_0;
assign AXI_0_SLAVE_RVALID_net_0     = AXI_0_SLAVE_RVALID;
assign PCIESS_AXI_0_S_RVALID        = AXI_0_SLAVE_RVALID_net_0;
assign AXI_0_SLAVE_WREADY_net_0     = AXI_0_SLAVE_WREADY;
assign PCIESS_AXI_0_S_WREADY        = AXI_0_SLAVE_WREADY_net_0;
assign AXI_0_SLAVE_RDATA_net_0      = AXI_0_SLAVE_RDATA;
assign PCIESS_AXI_0_S_RDATA[63:0]   = AXI_0_SLAVE_RDATA_net_0;
assign AXI_0_MASTER_ARBURST_net_0   = AXI_0_MASTER_ARBURST;
assign PCIESS_AXI_0_M_ARBURST[1:0]  = AXI_0_MASTER_ARBURST_net_0;
assign AXI_0_MASTER_ARLEN_net_0     = AXI_0_MASTER_ARLEN;
assign PCIESS_AXI_0_M_ARLEN[7:0]    = AXI_0_MASTER_ARLEN_net_0;
assign AXI_0_MASTER_ARSIZE_net_0    = AXI_0_MASTER_ARSIZE;
assign PCIESS_AXI_0_M_ARSIZE[1:0]   = AXI_0_MASTER_ARSIZE_net_0;
assign AXI_0_MASTER_ARVALID_net_0   = AXI_0_MASTER_ARVALID;
assign PCIESS_AXI_0_M_ARVALID       = AXI_0_MASTER_ARVALID_net_0;
assign AXI_0_MASTER_AWBURST_net_0   = AXI_0_MASTER_AWBURST;
assign PCIESS_AXI_0_M_AWBURST[1:0]  = AXI_0_MASTER_AWBURST_net_0;
assign AXI_0_MASTER_AWLEN_net_0     = AXI_0_MASTER_AWLEN;
assign PCIESS_AXI_0_M_AWLEN[7:0]    = AXI_0_MASTER_AWLEN_net_0;
assign AXI_0_MASTER_AWSIZE_net_0    = AXI_0_MASTER_AWSIZE;
assign PCIESS_AXI_0_M_AWSIZE[1:0]   = AXI_0_MASTER_AWSIZE_net_0;
assign AXI_0_MASTER_AWVALID_net_0   = AXI_0_MASTER_AWVALID;
assign PCIESS_AXI_0_M_AWVALID       = AXI_0_MASTER_AWVALID_net_0;
assign AXI_0_MASTER_BREADY_net_0    = AXI_0_MASTER_BREADY;
assign PCIESS_AXI_0_M_BREADY        = AXI_0_MASTER_BREADY_net_0;
assign AXI_0_MASTER_RREADY_net_0    = AXI_0_MASTER_RREADY;
assign PCIESS_AXI_0_M_RREADY        = AXI_0_MASTER_RREADY_net_0;
assign AXI_0_MASTER_WSTRB_net_0     = AXI_0_MASTER_WSTRB;
assign PCIESS_AXI_0_M_WSTRB[7:0]    = AXI_0_MASTER_WSTRB_net_0;
assign AXI_0_MASTER_WLAST_net_0     = AXI_0_MASTER_WLAST;
assign PCIESS_AXI_0_M_WLAST         = AXI_0_MASTER_WLAST_net_0;
assign AXI_0_MASTER_WVALID_net_0    = AXI_0_MASTER_WVALID;
assign PCIESS_AXI_0_M_WVALID        = AXI_0_MASTER_WVALID_net_0;
assign AXI_0_MASTER_ARID_net_0      = AXI_0_MASTER_ARID;
assign PCIESS_AXI_0_M_ARID[3:0]     = AXI_0_MASTER_ARID_net_0;
assign AXI_0_MASTER_AWADDR_net_0    = AXI_0_MASTER_AWADDR;
assign PCIESS_AXI_0_M_AWADDR[31:0]  = AXI_0_MASTER_AWADDR_net_0;
assign AXI_0_MASTER_WDATA_net_0     = AXI_0_MASTER_WDATA;
assign PCIESS_AXI_0_M_WDATA[63:0]   = AXI_0_MASTER_WDATA_net_0;
assign AXI_0_MASTER_AWID_net_0      = AXI_0_MASTER_AWID;
assign PCIESS_AXI_0_M_AWID[3:0]     = AXI_0_MASTER_AWID_net_0;
assign AXI_0_MASTER_ARADDR_net_0    = AXI_0_MASTER_ARADDR;
assign PCIESS_AXI_0_M_ARADDR[31:0]  = AXI_0_MASTER_ARADDR_net_0;
assign PCIE_APB_SLAVE_PREADY_net_0  = PCIE_APB_SLAVE_PREADY;
assign APB_S_PREADY                 = PCIE_APB_SLAVE_PREADY_net_0;
assign PCIE_APB_SLAVE_PRDATA_net_0  = PCIE_APB_SLAVE_PRDATA;
assign APB_S_PRDATA[31:0]           = PCIE_APB_SLAVE_PRDATA_net_0;
assign PCIE_APB_SLAVE_PSLVERR_net_0 = PCIE_APB_SLAVE_PSLVERR;
assign APB_S_PSLVERR                = PCIE_APB_SLAVE_PSLVERR_net_0;
assign PCIESS_LANE_TXD0_P_net_1     = PCIESS_LANE_TXD0_P_net_0;
assign PCIESS_LANE_TXD0_P           = PCIESS_LANE_TXD0_P_net_1;
assign PCIESS_LANE_TXD0_N_net_1     = PCIESS_LANE_TXD0_N_net_0;
assign PCIESS_LANE_TXD0_N           = PCIESS_LANE_TXD0_N_net_1;
assign PCIE_0_LTSSM_net_1           = PCIE_0_LTSSM_net_0;
assign PCIE_0_LTSSM[4:0]            = PCIE_0_LTSSM_net_1;
assign PCIE_0_INTERRUPT_OUT_net_1   = PCIE_0_INTERRUPT_OUT_net_0;
assign PCIE_0_INTERRUPT_OUT         = PCIE_0_INTERRUPT_OUT_net_1;
assign PCIE_0_M_WDERR_net_1         = PCIE_0_M_WDERR_net_0;
assign PCIE_0_M_WDERR               = PCIE_0_M_WDERR_net_1;
assign PCIE_0_S_RDERR_net_1         = PCIE_0_S_RDERR_net_0;
assign PCIE_0_S_RDERR               = PCIE_0_S_RDERR_net_1;
assign PCIE_0_HOT_RST_EXIT_net_1    = PCIE_0_HOT_RST_EXIT_net_0;
assign PCIE_0_HOT_RST_EXIT          = PCIE_0_HOT_RST_EXIT_net_1;
assign PCIE_0_DLUP_EXIT_net_1       = PCIE_0_DLUP_EXIT_net_0;
assign PCIE_0_DLUP_EXIT             = PCIE_0_DLUP_EXIT_net_1;
assign PCIE_0_PERST_OUT_N_net_1     = PCIE_0_PERST_OUT_N_net_0;
assign PCIE_0_PERST_OUT_N           = PCIE_0_PERST_OUT_N_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------PF_PCIE_C0_PF_PCIE_C0_0_PF_PCIE   -   Actel:SgCore:PF_PCIE:2.0.121
PF_PCIE_C0_PF_PCIE_C0_0_PF_PCIE PF_PCIE_C0_0(
        // Inputs
        .PCIESS_LANE0_CDR_REF_CLK_0 ( PCIESS_LANE0_CDR_REF_CLK_0 ),
        .AXI_CLK                    ( AXI_CLK ),
        .AXI_CLK_STABLE             ( AXI_CLK_STABLE ),
        .PCIE_0_TL_CLK_125MHz       ( PCIE_0_TL_CLK_125MHz ),
        .PCIE_0_INTERRUPT           ( PCIE_0_INTERRUPT ),
        .PCIE_0_M_RDERR             ( PCIE_0_M_RDERR ),
        .PCIE_0_S_WDERR             ( PCIE_0_S_WDERR ),
        .INIT_DONE                  ( INIT_DONE ),
        .APB_S_PRESET_N             ( APB_S_PRESET_N ),
        .APB_S_PCLK                 ( APB_S_PCLK ),
        .PCIESS_AXI_0_M_ARREADY     ( PCIESS_AXI_0_M_ARREADY ),
        .PCIESS_AXI_0_M_AWREADY     ( PCIESS_AXI_0_M_AWREADY ),
        .PCIESS_AXI_0_M_BID         ( PCIESS_AXI_0_M_BID ),
        .PCIESS_AXI_0_M_BRESP       ( PCIESS_AXI_0_M_BRESP ),
        .PCIESS_AXI_0_M_BVALID      ( PCIESS_AXI_0_M_BVALID ),
        .PCIESS_AXI_0_M_RID         ( PCIESS_AXI_0_M_RID ),
        .PCIESS_AXI_0_M_RLAST       ( PCIESS_AXI_0_M_RLAST ),
        .PCIESS_AXI_0_M_RRESP       ( PCIESS_AXI_0_M_RRESP ),
        .PCIESS_AXI_0_M_RVALID      ( PCIESS_AXI_0_M_RVALID ),
        .PCIESS_AXI_0_M_WREADY      ( PCIESS_AXI_0_M_WREADY ),
        .PCIESS_AXI_0_S_ARBURST     ( PCIESS_AXI_0_S_ARBURST ),
        .PCIESS_AXI_0_S_ARID        ( PCIESS_AXI_0_S_ARID ),
        .PCIESS_AXI_0_S_ARLEN       ( PCIESS_AXI_0_S_ARLEN ),
        .PCIESS_AXI_0_S_ARSIZE      ( PCIESS_AXI_0_S_ARSIZE ),
        .PCIESS_AXI_0_S_ARVALID     ( PCIESS_AXI_0_S_ARVALID ),
        .PCIESS_AXI_0_S_AWBURST     ( PCIESS_AXI_0_S_AWBURST ),
        .PCIESS_AXI_0_S_AWID        ( PCIESS_AXI_0_S_AWID ),
        .PCIESS_AXI_0_S_AWLEN       ( PCIESS_AXI_0_S_AWLEN ),
        .PCIESS_AXI_0_S_AWSIZE      ( PCIESS_AXI_0_S_AWSIZE ),
        .PCIESS_AXI_0_S_AWVALID     ( PCIESS_AXI_0_S_AWVALID ),
        .PCIESS_AXI_0_S_BREADY      ( PCIESS_AXI_0_S_BREADY ),
        .PCIESS_AXI_0_S_RREADY      ( PCIESS_AXI_0_S_RREADY ),
        .PCIESS_AXI_0_S_WLAST       ( PCIESS_AXI_0_S_WLAST ),
        .PCIESS_AXI_0_S_WSTRB       ( PCIESS_AXI_0_S_WSTRB ),
        .PCIESS_AXI_0_S_WVALID      ( PCIESS_AXI_0_S_WVALID ),
        .PCIESS_AXI_0_M_RDATA       ( PCIESS_AXI_0_M_RDATA ),
        .PCIESS_AXI_0_S_AWADDR      ( PCIESS_AXI_0_S_AWADDR ),
        .PCIESS_AXI_0_S_WDATA       ( PCIESS_AXI_0_S_WDATA ),
        .PCIESS_AXI_0_S_ARADDR      ( PCIESS_AXI_0_S_ARADDR ),
        .APB_S_PADDR                ( APB_S_PADDR ),
        .APB_S_PENABLE              ( APB_S_PENABLE ),
        .APB_S_PSEL                 ( APB_S_PSEL ),
        .APB_S_PWDATA               ( APB_S_PWDATA ),
        .APB_S_PWRITE               ( APB_S_PWRITE ),
        .PCIE_0_TX_PLL_LOCK         ( PCIE_0_TX_PLL_LOCK ),
        .PCIE_0_TX_BIT_CLK          ( PCIE_0_TX_BIT_CLK ),
        .PCIE_0_TX_PLL_REF_CLK      ( PCIE_0_TX_PLL_REF_CLK ),
        .PCIESS_LANE_RXD0_P         ( PCIESS_LANE_RXD0_P ),
        .PCIESS_LANE_RXD0_N         ( PCIESS_LANE_RXD0_N ),
        // Outputs
        .PCIE_0_LTSSM               ( PCIE_0_LTSSM_net_0 ),
        .PCIE_0_INTERRUPT_OUT       ( PCIE_0_INTERRUPT_OUT_net_0 ),
        .PCIE_0_PERST_OUT_N         ( PCIE_0_PERST_OUT_N_net_0 ),
        .PCIE_0_M_WDERR             ( PCIE_0_M_WDERR_net_0 ),
        .PCIE_0_S_RDERR             ( PCIE_0_S_RDERR_net_0 ),
        .PCIE_0_HOT_RST_EXIT        ( PCIE_0_HOT_RST_EXIT_net_0 ),
        .PCIE_0_DLUP_EXIT           ( PCIE_0_DLUP_EXIT_net_0 ),
        .PCIESS_AXI_0_M_ARBURST     ( AXI_0_MASTER_ARBURST ),
        .PCIESS_AXI_0_M_ARLEN       ( AXI_0_MASTER_ARLEN ),
        .PCIESS_AXI_0_M_ARSIZE      ( AXI_0_MASTER_ARSIZE ),
        .PCIESS_AXI_0_M_ARVALID     ( AXI_0_MASTER_ARVALID ),
        .PCIESS_AXI_0_M_AWBURST     ( AXI_0_MASTER_AWBURST ),
        .PCIESS_AXI_0_M_AWLEN       ( AXI_0_MASTER_AWLEN ),
        .PCIESS_AXI_0_M_AWSIZE      ( AXI_0_MASTER_AWSIZE ),
        .PCIESS_AXI_0_M_AWVALID     ( AXI_0_MASTER_AWVALID ),
        .PCIESS_AXI_0_M_BREADY      ( AXI_0_MASTER_BREADY ),
        .PCIESS_AXI_0_M_RREADY      ( AXI_0_MASTER_RREADY ),
        .PCIESS_AXI_0_M_WLAST       ( AXI_0_MASTER_WLAST ),
        .PCIESS_AXI_0_M_WSTRB       ( AXI_0_MASTER_WSTRB ),
        .PCIESS_AXI_0_M_WVALID      ( AXI_0_MASTER_WVALID ),
        .PCIESS_AXI_0_S_ARREADY     ( AXI_0_SLAVE_ARREADY ),
        .PCIESS_AXI_0_S_AWREADY     ( AXI_0_SLAVE_AWREADY ),
        .PCIESS_AXI_0_S_BID         ( AXI_0_SLAVE_BID ),
        .PCIESS_AXI_0_S_BRESP       ( AXI_0_SLAVE_BRESP ),
        .PCIESS_AXI_0_S_BVALID      ( AXI_0_SLAVE_BVALID ),
        .PCIESS_AXI_0_S_RID         ( AXI_0_SLAVE_RID ),
        .PCIESS_AXI_0_S_RLAST       ( AXI_0_SLAVE_RLAST ),
        .PCIESS_AXI_0_S_RRESP       ( AXI_0_SLAVE_RRESP ),
        .PCIESS_AXI_0_S_RVALID      ( AXI_0_SLAVE_RVALID ),
        .PCIESS_AXI_0_S_WREADY      ( AXI_0_SLAVE_WREADY ),
        .PCIESS_AXI_0_M_ARID        ( AXI_0_MASTER_ARID ),
        .PCIESS_AXI_0_M_AWADDR      ( AXI_0_MASTER_AWADDR ),
        .PCIESS_AXI_0_M_WDATA       ( AXI_0_MASTER_WDATA ),
        .PCIESS_AXI_0_M_AWID        ( AXI_0_MASTER_AWID ),
        .PCIESS_AXI_0_M_ARADDR      ( AXI_0_MASTER_ARADDR ),
        .PCIESS_AXI_0_S_RDATA       ( AXI_0_SLAVE_RDATA ),
        .APB_S_PRDATA               ( PCIE_APB_SLAVE_PRDATA ),
        .APB_S_PREADY               ( PCIE_APB_SLAVE_PREADY ),
        .APB_S_PSLVERR              ( PCIE_APB_SLAVE_PSLVERR ),
        .PCIESS_LANE_TXD0_P         ( PCIESS_LANE_TXD0_P_net_0 ),
        .PCIESS_LANE_TXD0_N         ( PCIESS_LANE_TXD0_N_net_0 ) 
        );


endmodule
