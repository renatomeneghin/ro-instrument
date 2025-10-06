# Microsemi Corp.
# Date: 2025-Mar-17 14:01:17
# This file was generated based on the following SDC source files:
#   /home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/component/work/PF_SOC_MSS/PF_SOC_MSS.sdc
#   /home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/component/work/CLK_DIV/CLK_DIV_0/CLK_DIV_CLK_DIV_0_PF_CLK_DIV.sdc
#   /home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/component/work/FPGA_CCC_C0/FPGA_CCC_C0_0/FPGA_CCC_C0_FPGA_CCC_C0_0_PF_CCC.sdc
#   /home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/component/work/PF_CCC_ADC/PF_CCC_ADC_0/PF_CCC_ADC_PF_CCC_ADC_0_PF_CCC.sdc
#   /home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/component/work/TRANSMIT_PLL/TRANSMIT_PLL_0/TRANSMIT_PLL_TRANSMIT_PLL_0_PF_TX_PLL.sdc
#   /home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/component/work/FIC_1_INITIATOR/FIC_1_INITIATOR_0/FIC_1_INITIATOR.sdc
#   /home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/component/work/PF_PCIE_C0/PF_PCIE_C0_0/PF_PCIE_C0_PF_PCIE_C0_0_PF_PCIE.sdc
#   /home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/component/work/PCIE_INITIATOR/PCIE_INITIATOR_0/PCIE_INITIATOR.sdc
#   /home/arthur/Microchip/Libero_SoC_v2023.2/Libero/data/aPA5M/cores/constraints/osc_rc160mhz.sdc
# *** Any modifications to this file will be lost if derived constraints is re-run. ***
#

create_clock -name {CLOCKS_AND_RESETS_inst_0/OSCILLATOR_160MHz_inst_0/OSCILLATOR_160MHz_0/I_OSC_160/CLK} -period 6.25 [ get_pins { CLOCKS_AND_RESETS_inst_0/OSCILLATOR_160MHz_inst_0/OSCILLATOR_160MHz_0/I_OSC_160/CLK } ]
create_clock -name {XCVR_0A_REFCLK_P} -period 10 [ get_ports { XCVR_0A_REFCLK_P } ]
create_clock -name {CLOCKS_AND_RESETS_inst_0/TRANSMIT_PLL_0/TRANSMIT_PLL_0/txpll_isnt_0/DIV_CLK} -period 8 [ get_pins { CLOCKS_AND_RESETS_inst_0/TRANSMIT_PLL_0/TRANSMIT_PLL_0/txpll_isnt_0/DIV_CLK } ]
create_clock -name {osc_rc160mhz} -period 6.25 [ get_pins { CLOCKS_AND_RESETS_inst_0/OSCILLATOR_160MHz_inst_0/OSCILLATOR_160MHz_0/I_OSC_160/CLK } ]
create_generated_clock -name {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT0} -multiply_by 25 -divide_by 32 -source [ get_pins { CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT0 } ]
create_generated_clock -name {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT1} -multiply_by 25 -divide_by 32 -source [ get_pins { CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT1 } ]
create_generated_clock -name {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT2} -multiply_by 25 -divide_by 32 -source [ get_pins { CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT2 } ]
create_generated_clock -name {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT3} -multiply_by 5 -divide_by 16 -source [ get_pins { CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT3 } ]
create_generated_clock -name {CLOCKS_AND_RESETS_inst_0/PF_CCC_ADC_0/PF_CCC_ADC_0/pll_inst_0/OUT0} -multiply_by 1560513 -divide_by 50800000 -source [ get_pins { CLOCKS_AND_RESETS_inst_0/PF_CCC_ADC_0/PF_CCC_ADC_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { CLOCKS_AND_RESETS_inst_0/PF_CCC_ADC_0/PF_CCC_ADC_0/pll_inst_0/OUT0 } ]
set_false_path -through [ get_nets { M2_INTERFACE_0/FIC1_INITIATOR/ARESETN* } ]
set_false_path -to [ get_pins { M2_INTERFACE_0/PCIE/PF_PCIE_C0_0/PCIE_0/INTERRUPT[0] M2_INTERFACE_0/PCIE/PF_PCIE_C0_0/PCIE_0/INTERRUPT[1] M2_INTERFACE_0/PCIE/PF_PCIE_C0_0/PCIE_0/INTERRUPT[2] M2_INTERFACE_0/PCIE/PF_PCIE_C0_0/PCIE_0/INTERRUPT[3] M2_INTERFACE_0/PCIE/PF_PCIE_C0_0/PCIE_0/INTERRUPT[4] M2_INTERFACE_0/PCIE/PF_PCIE_C0_0/PCIE_0/INTERRUPT[5] M2_INTERFACE_0/PCIE/PF_PCIE_C0_0/PCIE_0/INTERRUPT[6] M2_INTERFACE_0/PCIE/PF_PCIE_C0_0/PCIE_0/INTERRUPT[7] M2_INTERFACE_0/PCIE/PF_PCIE_C0_0/PCIE_0/WAKEREQ M2_INTERFACE_0/PCIE/PF_PCIE_C0_0/PCIE_0/MPERST_N } ]
set_false_path -from [ get_pins { M2_INTERFACE_0/PCIE/PF_PCIE_C0_0/PCIE_0/TL_CLK } ]
set_false_path -through [ get_nets { M2_INTERFACE_0/PCIE_INITIATOR_inst_0/ARESETN* } ]
