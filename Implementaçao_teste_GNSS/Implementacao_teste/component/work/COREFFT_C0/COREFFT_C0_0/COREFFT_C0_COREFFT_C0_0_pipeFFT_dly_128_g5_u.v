`timescale 1 ns/100 ps
// Version: 2023.2 2023.2.0.8


module COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g5_u(
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
input  [6:0] rAddr;
input  [6:0] wAddr;
input  rClk;
input  wClk;
input  wEn;

    wire \R_DATA_TEMPR0[0] , \R_DATA_TEMPR1[0] , \R_DATA_TEMPR0[1] , 
        \R_DATA_TEMPR1[1] , \R_DATA_TEMPR0[2] , \R_DATA_TEMPR1[2] , 
        \R_DATA_TEMPR0[3] , \R_DATA_TEMPR1[3] , \R_DATA_TEMPR0[4] , 
        \R_DATA_TEMPR1[4] , \R_DATA_TEMPR0[5] , \R_DATA_TEMPR1[5] , 
        \R_DATA_TEMPR0[6] , \R_DATA_TEMPR1[6] , \R_DATA_TEMPR0[7] , 
        \R_DATA_TEMPR1[7] , \R_DATA_TEMPR0[8] , \R_DATA_TEMPR1[8] , 
        \R_DATA_TEMPR0[9] , \R_DATA_TEMPR1[9] , \R_DATA_TEMPR0[10] , 
        \R_DATA_TEMPR1[10] , \R_DATA_TEMPR0[11] , \R_DATA_TEMPR1[11] , 
        \R_DATA_TEMPR0[12] , \R_DATA_TEMPR1[12] , \R_DATA_TEMPR0[13] , 
        \R_DATA_TEMPR1[13] , \R_DATA_TEMPR0[14] , \R_DATA_TEMPR1[14] , 
        \R_DATA_TEMPR0[15] , \R_DATA_TEMPR1[15] , \R_DATA_TEMPR0[16] , 
        \R_DATA_TEMPR1[16] , \R_DATA_TEMPR0[17] , \R_DATA_TEMPR1[17] , 
        \R_DATA_TEMPR0[18] , \R_DATA_TEMPR1[18] , \R_DATA_TEMPR0[19] , 
        \R_DATA_TEMPR1[19] , \R_DATA_TEMPR0[20] , \R_DATA_TEMPR1[20] , 
        \R_DATA_TEMPR0[21] , \R_DATA_TEMPR1[21] , \R_DATA_TEMPR0[22] , 
        \R_DATA_TEMPR1[22] , \R_DATA_TEMPR0[23] , \R_DATA_TEMPR1[23] , 
        \R_DATA_TEMPR0[24] , \R_DATA_TEMPR1[24] , \R_DATA_TEMPR0[25] , 
        \R_DATA_TEMPR1[25] , \R_DATA_TEMPR0[26] , \R_DATA_TEMPR1[26] , 
        \R_DATA_TEMPR0[27] , \R_DATA_TEMPR1[27] , \R_DATA_TEMPR0[28] , 
        \R_DATA_TEMPR1[28] , \R_DATA_TEMPR0[29] , \R_DATA_TEMPR1[29] , 
        \R_DATA_TEMPR0[30] , \R_DATA_TEMPR1[30] , \R_DATA_TEMPR0[31] , 
        \R_DATA_TEMPR1[31] , \R_DATA_TEMPR0[32] , \R_DATA_TEMPR1[32] , 
        \R_DATA_TEMPR0[33] , \R_DATA_TEMPR1[33] , \R_DATA_TEMPR0[34] , 
        \R_DATA_TEMPR1[34] , \R_DATA_TEMPR0[35] , \R_DATA_TEMPR1[35] , 
        \R_DATA_TEMPR0[36] , \R_DATA_TEMPR1[36] , \R_DATA_TEMPR0[37] , 
        \R_DATA_TEMPR1[37] , \R_DATA_TEMPR0[38] , \R_DATA_TEMPR1[38] , 
        \R_DATA_TEMPR0[39] , \R_DATA_TEMPR1[39] , \R_DATA_TEMPR0[40] , 
        \R_DATA_TEMPR1[40] , \R_DATA_TEMPR0[41] , \R_DATA_TEMPR1[41] , 
        \R_DATA_TEMPR0[42] , \R_DATA_TEMPR1[42] , \R_DATA_TEMPR0[43] , 
        \R_DATA_TEMPR1[43] , \R_DATA_TEMPR0[44] , \R_DATA_TEMPR1[44] , 
        \R_DATA_TEMPR0[45] , \R_DATA_TEMPR1[45] , \R_DATA_TEMPR0[46] , 
        \R_DATA_TEMPR1[46] , \R_DATA_TEMPR0[47] , \R_DATA_TEMPR1[47] , 
        \R_DATA_TEMPR0[48] , \R_DATA_TEMPR1[48] , \R_DATA_TEMPR0[49] , 
        \R_DATA_TEMPR1[49] , \R_DATA_TEMPR0[50] , \R_DATA_TEMPR1[50] , 
        \R_DATA_TEMPR0[51] , \R_DATA_TEMPR1[51] , \R_DATA_TEMPR0[52] , 
        \R_DATA_TEMPR1[52] , \R_DATA_TEMPR0[53] , \R_DATA_TEMPR1[53] , 
        \R_DATA_TEMPR0[54] , \R_DATA_TEMPR1[54] , \R_DATA_TEMPR0[55] , 
        \R_DATA_TEMPR1[55] , \R_DATA_TEMPR0[56] , \R_DATA_TEMPR1[56] , 
        \R_DATA_TEMPR0[57] , \R_DATA_TEMPR1[57] , \R_DATA_TEMPR0[58] , 
        \R_DATA_TEMPR1[58] , \R_DATA_TEMPR0[59] , \R_DATA_TEMPR1[59] , 
        \R_DATA_TEMPR0[60] , \R_DATA_TEMPR1[60] , \R_DATA_TEMPR0[61] , 
        \R_DATA_TEMPR1[61] , \R_DATA_TEMPR0[62] , \R_DATA_TEMPR1[62] , 
        \R_DATA_TEMPR0[63] , \R_DATA_TEMPR1[63] , \R_DATA_TEMPR0[64] , 
        \R_DATA_TEMPR1[64] , \R_DATA_TEMPR0[65] , \R_DATA_TEMPR1[65] , 
        \BLKX0[0] , \BLKX0[1] , \BLKZ0[0] , \BLKZ0[1] , 
        \ACCESS_BUSY[0][0] , \ACCESS_BUSY[0][1] , \ACCESS_BUSY[0][2] , 
        \ACCESS_BUSY[0][3] , \ACCESS_BUSY[0][4] , \ACCESS_BUSY[0][5] , 
        \ACCESS_BUSY[1][0] , \ACCESS_BUSY[1][1] , \ACCESS_BUSY[1][2] , 
        \ACCESS_BUSY[1][3] , \ACCESS_BUSY[1][4] , \ACCESS_BUSY[1][5] , 
        VCC, GND, ADLIB_VCC;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign ADLIB_VCC = VCC_power_net1;
    
    OR2 \OR2_rD[50]  (.A(\R_DATA_TEMPR0[50] ), .B(\R_DATA_TEMPR1[50] ), 
        .Y(rD[50]));
    OR2 \OR2_rD[44]  (.A(\R_DATA_TEMPR0[44] ), .B(\R_DATA_TEMPR1[44] ), 
        .Y(rD[44]));
    OR2 \OR2_rD[10]  (.A(\R_DATA_TEMPR0[10] ), .B(\R_DATA_TEMPR1[10] ), 
        .Y(rD[10]));
    OR2 \OR2_rD[11]  (.A(\R_DATA_TEMPR0[11] ), .B(\R_DATA_TEMPR1[11] ), 
        .Y(rD[11]));
    OR2 \OR2_rD[51]  (.A(\R_DATA_TEMPR0[51] ), .B(\R_DATA_TEMPR1[51] ), 
        .Y(rD[51]));
    OR2 \OR2_rD[25]  (.A(\R_DATA_TEMPR0[25] ), .B(\R_DATA_TEMPR1[25] ), 
        .Y(rD[25]));
    OR2 \OR2_rD[19]  (.A(\R_DATA_TEMPR0[19] ), .B(\R_DATA_TEMPR1[19] ), 
        .Y(rD[19]));
    OR2 \OR2_rD[59]  (.A(\R_DATA_TEMPR0[59] ), .B(\R_DATA_TEMPR1[59] ), 
        .Y(rD[59]));
    OR2 \OR2_rD[1]  (.A(\R_DATA_TEMPR0[1] ), .B(\R_DATA_TEMPR1[1] ), 
        .Y(rD[1]));
    OR2 \OR2_rD[60]  (.A(\R_DATA_TEMPR0[60] ), .B(\R_DATA_TEMPR1[60] ), 
        .Y(rD[60]));
    OR2 \OR2_rD[34]  (.A(\R_DATA_TEMPR0[34] ), .B(\R_DATA_TEMPR1[34] ), 
        .Y(rD[34]));
    OR2 \OR2_rD[15]  (.A(\R_DATA_TEMPR0[15] ), .B(\R_DATA_TEMPR1[15] ), 
        .Y(rD[15]));
    OR2 \OR2_rD[55]  (.A(\R_DATA_TEMPR0[55] ), .B(\R_DATA_TEMPR1[55] ), 
        .Y(rD[55]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%128%66%SPEED%1%0%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g5_u_R1C0 (.BLK_EN(
        \BLKX0[1] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[10], wD[9], wD[8], wD[7], wD[6], wD[5], 
        wD[4], wD[3], wD[2], wD[1], wD[0]}), .W_EN(\BLKZ0[1] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[1][0] ), .R_DATA({nc0, 
        \R_DATA_TEMPR1[10] , \R_DATA_TEMPR1[9] , \R_DATA_TEMPR1[8] , 
        \R_DATA_TEMPR1[7] , \R_DATA_TEMPR1[6] , \R_DATA_TEMPR1[5] , 
        \R_DATA_TEMPR1[4] , \R_DATA_TEMPR1[3] , \R_DATA_TEMPR1[2] , 
        \R_DATA_TEMPR1[1] , \R_DATA_TEMPR1[0] }));
    OR2 \OR2_rD[61]  (.A(\R_DATA_TEMPR0[61] ), .B(\R_DATA_TEMPR1[61] ), 
        .Y(rD[61]));
    OR2 \OR2_rD[40]  (.A(\R_DATA_TEMPR0[40] ), .B(\R_DATA_TEMPR1[40] ), 
        .Y(rD[40]));
    OR2 \OR2_rD[41]  (.A(\R_DATA_TEMPR0[41] ), .B(\R_DATA_TEMPR1[41] ), 
        .Y(rD[41]));
    OR2 \OR2_rD[49]  (.A(\R_DATA_TEMPR0[49] ), .B(\R_DATA_TEMPR1[49] ), 
        .Y(rD[49]));
    OR2 \OR2_rD[65]  (.A(\R_DATA_TEMPR0[65] ), .B(\R_DATA_TEMPR1[65] ), 
        .Y(rD[65]));
    OR2 \OR2_rD[30]  (.A(\R_DATA_TEMPR0[30] ), .B(\R_DATA_TEMPR1[30] ), 
        .Y(rD[30]));
    OR2 \OR2_rD[31]  (.A(\R_DATA_TEMPR0[31] ), .B(\R_DATA_TEMPR1[31] ), 
        .Y(rD[31]));
    OR2 \OR2_rD[45]  (.A(\R_DATA_TEMPR0[45] ), .B(\R_DATA_TEMPR1[45] ), 
        .Y(rD[45]));
    CFG2 #( .INIT(4'h4) )  \CFG2_BLKZ0[0]  (.A(wAddr[6]), .B(wEn), .Y(
        \BLKZ0[0] ));
    OR2 \OR2_rD[39]  (.A(\R_DATA_TEMPR0[39] ), .B(\R_DATA_TEMPR1[39] ), 
        .Y(rD[39]));
    CFG2 #( .INIT(4'h8) )  \CFG2_BLKX0[1]  (.A(rAddr[6]), .B(VCC), .Y(
        \BLKX0[1] ));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%128%66%SPEED%0%2%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g5_u_R0C2 (.BLK_EN(
        \BLKX0[0] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[32], wD[31], wD[30], wD[29], wD[28], 
        wD[27], wD[26], wD[25], wD[24], wD[23], wD[22]}), .W_EN(
        \BLKZ0[0] ), .ACCESS_BUSY(\ACCESS_BUSY[0][2] ), .R_DATA({nc1, 
        \R_DATA_TEMPR0[32] , \R_DATA_TEMPR0[31] , \R_DATA_TEMPR0[30] , 
        \R_DATA_TEMPR0[29] , \R_DATA_TEMPR0[28] , \R_DATA_TEMPR0[27] , 
        \R_DATA_TEMPR0[26] , \R_DATA_TEMPR0[25] , \R_DATA_TEMPR0[24] , 
        \R_DATA_TEMPR0[23] , \R_DATA_TEMPR0[22] }));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%128%66%SPEED%0%5%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g5_u_R0C5 (.BLK_EN(
        \BLKX0[0] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[65], wD[64], wD[63], wD[62], wD[61], 
        wD[60], wD[59], wD[58], wD[57], wD[56], wD[55]}), .W_EN(
        \BLKZ0[0] ), .ACCESS_BUSY(\ACCESS_BUSY[0][5] ), .R_DATA({nc2, 
        \R_DATA_TEMPR0[65] , \R_DATA_TEMPR0[64] , \R_DATA_TEMPR0[63] , 
        \R_DATA_TEMPR0[62] , \R_DATA_TEMPR0[61] , \R_DATA_TEMPR0[60] , 
        \R_DATA_TEMPR0[59] , \R_DATA_TEMPR0[58] , \R_DATA_TEMPR0[57] , 
        \R_DATA_TEMPR0[56] , \R_DATA_TEMPR0[55] }));
    OR2 \OR2_rD[23]  (.A(\R_DATA_TEMPR0[23] ), .B(\R_DATA_TEMPR1[23] ), 
        .Y(rD[23]));
    OR2 \OR2_rD[5]  (.A(\R_DATA_TEMPR0[5] ), .B(\R_DATA_TEMPR1[5] ), 
        .Y(rD[5]));
    OR2 \OR2_rD[9]  (.A(\R_DATA_TEMPR0[9] ), .B(\R_DATA_TEMPR1[9] ), 
        .Y(rD[9]));
    OR2 \OR2_rD[22]  (.A(\R_DATA_TEMPR0[22] ), .B(\R_DATA_TEMPR1[22] ), 
        .Y(rD[22]));
    OR2 \OR2_rD[35]  (.A(\R_DATA_TEMPR0[35] ), .B(\R_DATA_TEMPR1[35] ), 
        .Y(rD[35]));
    OR2 \OR2_rD[53]  (.A(\R_DATA_TEMPR0[53] ), .B(\R_DATA_TEMPR1[53] ), 
        .Y(rD[53]));
    OR2 \OR2_rD[13]  (.A(\R_DATA_TEMPR0[13] ), .B(\R_DATA_TEMPR1[13] ), 
        .Y(rD[13]));
    OR2 \OR2_rD[12]  (.A(\R_DATA_TEMPR0[12] ), .B(\R_DATA_TEMPR1[12] ), 
        .Y(rD[12]));
    OR2 \OR2_rD[52]  (.A(\R_DATA_TEMPR0[52] ), .B(\R_DATA_TEMPR1[52] ), 
        .Y(rD[52]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%128%66%SPEED%1%3%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g5_u_R1C3 (.BLK_EN(
        \BLKX0[1] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[43], wD[42], wD[41], wD[40], wD[39], 
        wD[38], wD[37], wD[36], wD[35], wD[34], wD[33]}), .W_EN(
        \BLKZ0[1] ), .ACCESS_BUSY(\ACCESS_BUSY[1][3] ), .R_DATA({nc3, 
        \R_DATA_TEMPR1[43] , \R_DATA_TEMPR1[42] , \R_DATA_TEMPR1[41] , 
        \R_DATA_TEMPR1[40] , \R_DATA_TEMPR1[39] , \R_DATA_TEMPR1[38] , 
        \R_DATA_TEMPR1[37] , \R_DATA_TEMPR1[36] , \R_DATA_TEMPR1[35] , 
        \R_DATA_TEMPR1[34] , \R_DATA_TEMPR1[33] }));
    OR2 \OR2_rD[6]  (.A(\R_DATA_TEMPR0[6] ), .B(\R_DATA_TEMPR1[6] ), 
        .Y(rD[6]));
    OR2 \OR2_rD[63]  (.A(\R_DATA_TEMPR0[63] ), .B(\R_DATA_TEMPR1[63] ), 
        .Y(rD[63]));
    OR2 \OR2_rD[0]  (.A(\R_DATA_TEMPR0[0] ), .B(\R_DATA_TEMPR1[0] ), 
        .Y(rD[0]));
    OR2 \OR2_rD[43]  (.A(\R_DATA_TEMPR0[43] ), .B(\R_DATA_TEMPR1[43] ), 
        .Y(rD[43]));
    OR2 \OR2_rD[26]  (.A(\R_DATA_TEMPR0[26] ), .B(\R_DATA_TEMPR1[26] ), 
        .Y(rD[26]));
    OR2 \OR2_rD[62]  (.A(\R_DATA_TEMPR0[62] ), .B(\R_DATA_TEMPR1[62] ), 
        .Y(rD[62]));
    OR2 \OR2_rD[28]  (.A(\R_DATA_TEMPR0[28] ), .B(\R_DATA_TEMPR1[28] ), 
        .Y(rD[28]));
    OR2 \OR2_rD[27]  (.A(\R_DATA_TEMPR0[27] ), .B(\R_DATA_TEMPR1[27] ), 
        .Y(rD[27]));
    OR2 \OR2_rD[3]  (.A(\R_DATA_TEMPR0[3] ), .B(\R_DATA_TEMPR1[3] ), 
        .Y(rD[3]));
    OR2 \OR2_rD[42]  (.A(\R_DATA_TEMPR0[42] ), .B(\R_DATA_TEMPR1[42] ), 
        .Y(rD[42]));
    OR2 \OR2_rD[16]  (.A(\R_DATA_TEMPR0[16] ), .B(\R_DATA_TEMPR1[16] ), 
        .Y(rD[16]));
    OR2 \OR2_rD[56]  (.A(\R_DATA_TEMPR0[56] ), .B(\R_DATA_TEMPR1[56] ), 
        .Y(rD[56]));
    OR2 \OR2_rD[18]  (.A(\R_DATA_TEMPR0[18] ), .B(\R_DATA_TEMPR1[18] ), 
        .Y(rD[18]));
    OR2 \OR2_rD[58]  (.A(\R_DATA_TEMPR0[58] ), .B(\R_DATA_TEMPR1[58] ), 
        .Y(rD[58]));
    OR2 \OR2_rD[33]  (.A(\R_DATA_TEMPR0[33] ), .B(\R_DATA_TEMPR1[33] ), 
        .Y(rD[33]));
    OR2 \OR2_rD[17]  (.A(\R_DATA_TEMPR0[17] ), .B(\R_DATA_TEMPR1[17] ), 
        .Y(rD[17]));
    OR2 \OR2_rD[57]  (.A(\R_DATA_TEMPR0[57] ), .B(\R_DATA_TEMPR1[57] ), 
        .Y(rD[57]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%128%66%SPEED%0%4%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g5_u_R0C4 (.BLK_EN(
        \BLKX0[0] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[54], wD[53], wD[52], wD[51], wD[50], 
        wD[49], wD[48], wD[47], wD[46], wD[45], wD[44]}), .W_EN(
        \BLKZ0[0] ), .ACCESS_BUSY(\ACCESS_BUSY[0][4] ), .R_DATA({nc4, 
        \R_DATA_TEMPR0[54] , \R_DATA_TEMPR0[53] , \R_DATA_TEMPR0[52] , 
        \R_DATA_TEMPR0[51] , \R_DATA_TEMPR0[50] , \R_DATA_TEMPR0[49] , 
        \R_DATA_TEMPR0[48] , \R_DATA_TEMPR0[47] , \R_DATA_TEMPR0[46] , 
        \R_DATA_TEMPR0[45] , \R_DATA_TEMPR0[44] }));
    OR2 \OR2_rD[32]  (.A(\R_DATA_TEMPR0[32] ), .B(\R_DATA_TEMPR1[32] ), 
        .Y(rD[32]));
    OR2 \OR2_rD[46]  (.A(\R_DATA_TEMPR0[46] ), .B(\R_DATA_TEMPR1[46] ), 
        .Y(rD[46]));
    CFG2 #( .INIT(4'h4) )  \CFG2_BLKX0[0]  (.A(rAddr[6]), .B(VCC), .Y(
        \BLKX0[0] ));
    OR2 \OR2_rD[48]  (.A(\R_DATA_TEMPR0[48] ), .B(\R_DATA_TEMPR1[48] ), 
        .Y(rD[48]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%128%66%SPEED%1%4%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g5_u_R1C4 (.BLK_EN(
        \BLKX0[1] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[54], wD[53], wD[52], wD[51], wD[50], 
        wD[49], wD[48], wD[47], wD[46], wD[45], wD[44]}), .W_EN(
        \BLKZ0[1] ), .ACCESS_BUSY(\ACCESS_BUSY[1][4] ), .R_DATA({nc5, 
        \R_DATA_TEMPR1[54] , \R_DATA_TEMPR1[53] , \R_DATA_TEMPR1[52] , 
        \R_DATA_TEMPR1[51] , \R_DATA_TEMPR1[50] , \R_DATA_TEMPR1[49] , 
        \R_DATA_TEMPR1[48] , \R_DATA_TEMPR1[47] , \R_DATA_TEMPR1[46] , 
        \R_DATA_TEMPR1[45] , \R_DATA_TEMPR1[44] }));
    OR2 \OR2_rD[47]  (.A(\R_DATA_TEMPR0[47] ), .B(\R_DATA_TEMPR1[47] ), 
        .Y(rD[47]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%128%66%SPEED%1%2%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g5_u_R1C2 (.BLK_EN(
        \BLKX0[1] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[32], wD[31], wD[30], wD[29], wD[28], 
        wD[27], wD[26], wD[25], wD[24], wD[23], wD[22]}), .W_EN(
        \BLKZ0[1] ), .ACCESS_BUSY(\ACCESS_BUSY[1][2] ), .R_DATA({nc6, 
        \R_DATA_TEMPR1[32] , \R_DATA_TEMPR1[31] , \R_DATA_TEMPR1[30] , 
        \R_DATA_TEMPR1[29] , \R_DATA_TEMPR1[28] , \R_DATA_TEMPR1[27] , 
        \R_DATA_TEMPR1[26] , \R_DATA_TEMPR1[25] , \R_DATA_TEMPR1[24] , 
        \R_DATA_TEMPR1[23] , \R_DATA_TEMPR1[22] }));
    OR2 \OR2_rD[24]  (.A(\R_DATA_TEMPR0[24] ), .B(\R_DATA_TEMPR1[24] ), 
        .Y(rD[24]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%128%66%SPEED%0%3%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g5_u_R0C3 (.BLK_EN(
        \BLKX0[0] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[43], wD[42], wD[41], wD[40], wD[39], 
        wD[38], wD[37], wD[36], wD[35], wD[34], wD[33]}), .W_EN(
        \BLKZ0[0] ), .ACCESS_BUSY(\ACCESS_BUSY[0][3] ), .R_DATA({nc7, 
        \R_DATA_TEMPR0[43] , \R_DATA_TEMPR0[42] , \R_DATA_TEMPR0[41] , 
        \R_DATA_TEMPR0[40] , \R_DATA_TEMPR0[39] , \R_DATA_TEMPR0[38] , 
        \R_DATA_TEMPR0[37] , \R_DATA_TEMPR0[36] , \R_DATA_TEMPR0[35] , 
        \R_DATA_TEMPR0[34] , \R_DATA_TEMPR0[33] }));
    OR2 \OR2_rD[8]  (.A(\R_DATA_TEMPR0[8] ), .B(\R_DATA_TEMPR1[8] ), 
        .Y(rD[8]));
    OR2 \OR2_rD[4]  (.A(\R_DATA_TEMPR0[4] ), .B(\R_DATA_TEMPR1[4] ), 
        .Y(rD[4]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%128%66%SPEED%1%1%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g5_u_R1C1 (.BLK_EN(
        \BLKX0[1] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[21], wD[20], wD[19], wD[18], wD[17], 
        wD[16], wD[15], wD[14], wD[13], wD[12], wD[11]}), .W_EN(
        \BLKZ0[1] ), .ACCESS_BUSY(\ACCESS_BUSY[1][1] ), .R_DATA({nc8, 
        \R_DATA_TEMPR1[21] , \R_DATA_TEMPR1[20] , \R_DATA_TEMPR1[19] , 
        \R_DATA_TEMPR1[18] , \R_DATA_TEMPR1[17] , \R_DATA_TEMPR1[16] , 
        \R_DATA_TEMPR1[15] , \R_DATA_TEMPR1[14] , \R_DATA_TEMPR1[13] , 
        \R_DATA_TEMPR1[12] , \R_DATA_TEMPR1[11] }));
    CFG2 #( .INIT(4'h8) )  \CFG2_BLKZ0[1]  (.A(wAddr[6]), .B(wEn), .Y(
        \BLKZ0[1] ));
    OR2 \OR2_rD[7]  (.A(\R_DATA_TEMPR0[7] ), .B(\R_DATA_TEMPR1[7] ), 
        .Y(rD[7]));
    OR2 \OR2_rD[2]  (.A(\R_DATA_TEMPR0[2] ), .B(\R_DATA_TEMPR1[2] ), 
        .Y(rD[2]));
    OR2 \OR2_rD[36]  (.A(\R_DATA_TEMPR0[36] ), .B(\R_DATA_TEMPR1[36] ), 
        .Y(rD[36]));
    OR2 \OR2_rD[14]  (.A(\R_DATA_TEMPR0[14] ), .B(\R_DATA_TEMPR1[14] ), 
        .Y(rD[14]));
    OR2 \OR2_rD[54]  (.A(\R_DATA_TEMPR0[54] ), .B(\R_DATA_TEMPR1[54] ), 
        .Y(rD[54]));
    OR2 \OR2_rD[38]  (.A(\R_DATA_TEMPR0[38] ), .B(\R_DATA_TEMPR1[38] ), 
        .Y(rD[38]));
    OR2 \OR2_rD[37]  (.A(\R_DATA_TEMPR0[37] ), .B(\R_DATA_TEMPR1[37] ), 
        .Y(rD[37]));
    OR2 \OR2_rD[20]  (.A(\R_DATA_TEMPR0[20] ), .B(\R_DATA_TEMPR1[20] ), 
        .Y(rD[20]));
    OR2 \OR2_rD[21]  (.A(\R_DATA_TEMPR0[21] ), .B(\R_DATA_TEMPR1[21] ), 
        .Y(rD[21]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%128%66%SPEED%0%1%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g5_u_R0C1 (.BLK_EN(
        \BLKX0[0] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[21], wD[20], wD[19], wD[18], wD[17], 
        wD[16], wD[15], wD[14], wD[13], wD[12], wD[11]}), .W_EN(
        \BLKZ0[0] ), .ACCESS_BUSY(\ACCESS_BUSY[0][1] ), .R_DATA({nc9, 
        \R_DATA_TEMPR0[21] , \R_DATA_TEMPR0[20] , \R_DATA_TEMPR0[19] , 
        \R_DATA_TEMPR0[18] , \R_DATA_TEMPR0[17] , \R_DATA_TEMPR0[16] , 
        \R_DATA_TEMPR0[15] , \R_DATA_TEMPR0[14] , \R_DATA_TEMPR0[13] , 
        \R_DATA_TEMPR0[12] , \R_DATA_TEMPR0[11] }));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%128%66%SPEED%1%5%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g5_u_R1C5 (.BLK_EN(
        \BLKX0[1] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[65], wD[64], wD[63], wD[62], wD[61], 
        wD[60], wD[59], wD[58], wD[57], wD[56], wD[55]}), .W_EN(
        \BLKZ0[1] ), .ACCESS_BUSY(\ACCESS_BUSY[1][5] ), .R_DATA({nc10, 
        \R_DATA_TEMPR1[65] , \R_DATA_TEMPR1[64] , \R_DATA_TEMPR1[63] , 
        \R_DATA_TEMPR1[62] , \R_DATA_TEMPR1[61] , \R_DATA_TEMPR1[60] , 
        \R_DATA_TEMPR1[59] , \R_DATA_TEMPR1[58] , \R_DATA_TEMPR1[57] , 
        \R_DATA_TEMPR1[56] , \R_DATA_TEMPR1[55] }));
    OR2 \OR2_rD[64]  (.A(\R_DATA_TEMPR0[64] ), .B(\R_DATA_TEMPR1[64] ), 
        .Y(rD[64]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%128%66%SPEED%0%0%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_128_g5_u_R0C0 (.BLK_EN(
        \BLKX0[0] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[10], wD[9], wD[8], wD[7], wD[6], wD[5], 
        wD[4], wD[3], wD[2], wD[1], wD[0]}), .W_EN(\BLKZ0[0] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][0] ), .R_DATA({nc11, 
        \R_DATA_TEMPR0[10] , \R_DATA_TEMPR0[9] , \R_DATA_TEMPR0[8] , 
        \R_DATA_TEMPR0[7] , \R_DATA_TEMPR0[6] , \R_DATA_TEMPR0[5] , 
        \R_DATA_TEMPR0[4] , \R_DATA_TEMPR0[3] , \R_DATA_TEMPR0[2] , 
        \R_DATA_TEMPR0[1] , \R_DATA_TEMPR0[0] }));
    OR2 \OR2_rD[29]  (.A(\R_DATA_TEMPR0[29] ), .B(\R_DATA_TEMPR1[29] ), 
        .Y(rD[29]));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
