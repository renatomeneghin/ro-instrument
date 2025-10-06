# Written by Synplify Pro version map202209actsp2, Build 145R. Synopsys Run ID: sid1742230913 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {XCVR_0A_REFCLK_P} [get_ports {XCVR_0A_REFCLK_P}] 
create_clock -period 6.250 -waveform {0.000 3.125} -name {osc_rc160mhz} [get_pins {CLOCKS_AND_RESETS_inst_0/OSCILLATOR_160MHz_inst_0/OSCILLATOR_160MHz_0/I_OSC_160/CLK}] 
create_clock -period 8.000 -waveform {0.000 4.000} -name {CLOCKS_AND_RESETS_inst_0/TRANSMIT_PLL_0/TRANSMIT_PLL_0/txpll_isnt_0/DIV_CLK} [get_pins {CLOCKS_AND_RESETS_inst_0/TRANSMIT_PLL_0/TRANSMIT_PLL_0/txpll_isnt_0/DIV_CLK}] 

# Virtual Clocks 

# Generated Clocks 
create_generated_clock -name {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT0} -multiply_by {25} -divide_by {32} -source [get_pins {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/REF_CLK_0}]  [get_pins {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT0}] 
create_generated_clock -name {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT1} -multiply_by {25} -divide_by {32} -source [get_pins {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/REF_CLK_0}]  [get_pins {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT1}] 
create_generated_clock -name {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT2} -multiply_by {25} -divide_by {32} -source [get_pins {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/REF_CLK_0}]  [get_pins {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT2}] 
create_generated_clock -name {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT3} -multiply_by {5} -divide_by {16} -source [get_pins {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/REF_CLK_0}]  [get_pins {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT3}] 
create_generated_clock -name {CLOCKS_AND_RESETS_inst_0/PF_CCC_ADC_0/PF_CCC_ADC_0/pll_inst_0/OUT0} -multiply_by {1560513} -divide_by {50800000} -source [get_pins {CLOCKS_AND_RESETS_inst_0/PF_CCC_ADC_0/PF_CCC_ADC_0/pll_inst_0/REF_CLK_0}]  [get_pins {CLOCKS_AND_RESETS_inst_0/PF_CCC_ADC_0/PF_CCC_ADC_0/pll_inst_0/OUT0}] 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 
set_false_path -through [get_pins {CLOCKS_AND_RESETS_inst_0/FIC_1_RESET/CORERESET_0/dff_15/Q}] 
set_false_path -through [get_pins {CLOCKS_AND_RESETS_inst_0/FIC_1_RESET/CORERESET_0/dff_15/Q}] 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set_clock_groups -asynchronous -group [get_clocks {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT0}]
set_clock_groups -asynchronous -group [get_clocks {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT1}]
set_clock_groups -asynchronous -group [get_clocks {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT2}]
set_clock_groups -asynchronous -group [get_clocks {CLOCKS_AND_RESETS_inst_0/FPGA_CCC_C0_0/FPGA_CCC_C0_0/pll_inst_0/OUT3}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 
# set_false_path -to [get_pins { M2_INTERFACE_0.PCIE.PF_PCIE_C0_0.PCIE_0.INTERRUPT[0] M2_INTERFACE_0.PCIE.PF_PCIE_C0_0.PCIE_0.INTERRUPT[1] M2_INTERFACE_0.PCIE.PF_PCIE_C0_0.PCIE_0.INTERRUPT[2] M2_INTERFACE_0.PCIE.PF_PCIE_C0_0.PCIE_0.INTERRUPT[3] M2_INTERFACE_0.PCIE.PF_PCIE_C0_0.PCIE_0.INTERRUPT[4] M2_INTERFACE_0.PCIE.PF_PCIE_C0_0.PCIE_0.INTERRUPT[5] M2_INTERFACE_0.PCIE.PF_PCIE_C0_0.PCIE_0.INTERRUPT[6] M2_INTERFACE_0.PCIE.PF_PCIE_C0_0.PCIE_0.INTERRUPT[7] M2_INTERFACE_0.PCIE.PF_PCIE_C0_0.PCIE_0.WAKEREQ M2_INTERFACE_0.PCIE.PF_PCIE_C0_0.PCIE_0.MPERST_N }]
# set_false_path -from [get_pins { M2_INTERFACE_0.PCIE.PF_PCIE_C0_0.PCIE_0.TL_CLK }]


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

