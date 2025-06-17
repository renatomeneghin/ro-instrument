`timescale 1 ns/100 ps
// Version: 2023.2 2023.2.0.8


module COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_8_g5_u(
       rD,
       wD,
       rAddr,
       wAddr,
       rClk,
       wClk,
       wEn
    );
output [65:0] rD;
input  [65:0] wD;
input  [2:0] rAddr;
input  [2:0] wAddr;
input  rClk;
input  wClk;
input  wEn;

    wire \ACCESS_BUSY[0][0] , \ACCESS_BUSY[0][1] , \ACCESS_BUSY[0][2] , 
        \ACCESS_BUSY[0][3] , \ACCESS_BUSY[0][4] , \ACCESS_BUSY[0][5] , 
        VCC, GND, ADLIB_VCC;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign ADLIB_VCC = VCC_power_net1;
    
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%8%66%SPEED%0%2%MICRO_RAM") )  
        COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_8_g5_u_R0C2 (.BLK_EN(VCC), 
        .BUSY_FB(GND), .R_ADDR({GND, GND, GND, rAddr[2], rAddr[1], 
        rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({GND, GND, GND, 
        wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(wClk), .W_DATA({GND, 
        wD[32], wD[31], wD[30], wD[29], wD[28], wD[27], wD[26], wD[25], 
        wD[24], wD[23], wD[22]}), .W_EN(wEn), .ACCESS_BUSY(
        \ACCESS_BUSY[0][2] ), .R_DATA({nc0, rD[32], rD[31], rD[30], 
        rD[29], rD[28], rD[27], rD[26], rD[25], rD[24], rD[23], rD[22]})
        );
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%8%66%SPEED%0%1%MICRO_RAM") )  
        COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_8_g5_u_R0C1 (.BLK_EN(VCC), 
        .BUSY_FB(GND), .R_ADDR({GND, GND, GND, rAddr[2], rAddr[1], 
        rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({GND, GND, GND, 
        wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(wClk), .W_DATA({GND, 
        wD[21], wD[20], wD[19], wD[18], wD[17], wD[16], wD[15], wD[14], 
        wD[13], wD[12], wD[11]}), .W_EN(wEn), .ACCESS_BUSY(
        \ACCESS_BUSY[0][1] ), .R_DATA({nc1, rD[21], rD[20], rD[19], 
        rD[18], rD[17], rD[16], rD[15], rD[14], rD[13], rD[12], rD[11]})
        );
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%8%66%SPEED%0%0%MICRO_RAM") )  
        COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_8_g5_u_R0C0 (.BLK_EN(VCC), 
        .BUSY_FB(GND), .R_ADDR({GND, GND, GND, rAddr[2], rAddr[1], 
        rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({GND, GND, GND, 
        wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(wClk), .W_DATA({GND, 
        wD[10], wD[9], wD[8], wD[7], wD[6], wD[5], wD[4], wD[3], wD[2], 
        wD[1], wD[0]}), .W_EN(wEn), .ACCESS_BUSY(\ACCESS_BUSY[0][0] ), 
        .R_DATA({nc2, rD[10], rD[9], rD[8], rD[7], rD[6], rD[5], rD[4], 
        rD[3], rD[2], rD[1], rD[0]}));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%8%66%SPEED%0%5%MICRO_RAM") )  
        COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_8_g5_u_R0C5 (.BLK_EN(VCC), 
        .BUSY_FB(GND), .R_ADDR({GND, GND, GND, rAddr[2], rAddr[1], 
        rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({GND, GND, GND, 
        wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(wClk), .W_DATA({GND, 
        wD[65], wD[64], wD[63], wD[62], wD[61], wD[60], wD[59], wD[58], 
        wD[57], wD[56], wD[55]}), .W_EN(wEn), .ACCESS_BUSY(
        \ACCESS_BUSY[0][5] ), .R_DATA({nc3, rD[65], rD[64], rD[63], 
        rD[62], rD[61], rD[60], rD[59], rD[58], rD[57], rD[56], rD[55]})
        );
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%8%66%SPEED%0%4%MICRO_RAM") )  
        COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_8_g5_u_R0C4 (.BLK_EN(VCC), 
        .BUSY_FB(GND), .R_ADDR({GND, GND, GND, rAddr[2], rAddr[1], 
        rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({GND, GND, GND, 
        wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(wClk), .W_DATA({GND, 
        wD[54], wD[53], wD[52], wD[51], wD[50], wD[49], wD[48], wD[47], 
        wD[46], wD[45], wD[44]}), .W_EN(wEn), .ACCESS_BUSY(
        \ACCESS_BUSY[0][4] ), .R_DATA({nc4, rD[54], rD[53], rD[52], 
        rD[51], rD[50], rD[49], rD[48], rD[47], rD[46], rD[45], rD[44]})
        );
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%8%66%SPEED%0%3%MICRO_RAM") )  
        COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_8_g5_u_R0C3 (.BLK_EN(VCC), 
        .BUSY_FB(GND), .R_ADDR({GND, GND, GND, rAddr[2], rAddr[1], 
        rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({GND, GND, GND, 
        wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(wClk), .W_DATA({GND, 
        wD[43], wD[42], wD[41], wD[40], wD[39], wD[38], wD[37], wD[36], 
        wD[35], wD[34], wD[33]}), .W_EN(wEn), .ACCESS_BUSY(
        \ACCESS_BUSY[0][3] ), .R_DATA({nc5, rD[43], rD[42], rD[41], 
        rD[40], rD[39], rD[38], rD[37], rD[36], rD[35], rD[34], rD[33]})
        );
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
