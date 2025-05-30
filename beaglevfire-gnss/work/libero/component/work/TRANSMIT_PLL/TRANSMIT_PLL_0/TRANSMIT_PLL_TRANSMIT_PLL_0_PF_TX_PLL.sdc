set_component TRANSMIT_PLL_TRANSMIT_PLL_0_PF_TX_PLL
# Microsemi Corp.
# Date: 2025-Mar-17 14:00:17
#

create_clock -period 10 [ get_pins { txpll_isnt_0/REF_CLK_P } ]
create_clock -period 8 [ get_pins { txpll_isnt_0/DIV_CLK } ]
