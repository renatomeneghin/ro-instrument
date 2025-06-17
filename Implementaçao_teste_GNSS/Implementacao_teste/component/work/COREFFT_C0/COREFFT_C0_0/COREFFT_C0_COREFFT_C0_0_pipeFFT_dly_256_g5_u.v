`timescale 1 ns/100 ps
// Version: 2023.2 2023.2.0.8


module COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u(
       rD,
       wD,
       rAddr,
       wAddr,
       rClk,
       wClk,
       wEn
    );
output [67:0] rD;
input  [67:0] wD;
input  [7:0] rAddr;
input  [7:0] wAddr;
input  rClk;
input  wClk;
input  wEn;

    wire \R_DATA_TEMPR0[0] , \R_DATA_TEMPR1[0] , \R_DATA_TEMPR2[0] , 
        \R_DATA_TEMPR3[0] , \R_DATA_TEMPR0[1] , \R_DATA_TEMPR1[1] , 
        \R_DATA_TEMPR2[1] , \R_DATA_TEMPR3[1] , \R_DATA_TEMPR0[2] , 
        \R_DATA_TEMPR1[2] , \R_DATA_TEMPR2[2] , \R_DATA_TEMPR3[2] , 
        \R_DATA_TEMPR0[3] , \R_DATA_TEMPR1[3] , \R_DATA_TEMPR2[3] , 
        \R_DATA_TEMPR3[3] , \R_DATA_TEMPR0[4] , \R_DATA_TEMPR1[4] , 
        \R_DATA_TEMPR2[4] , \R_DATA_TEMPR3[4] , \R_DATA_TEMPR0[5] , 
        \R_DATA_TEMPR1[5] , \R_DATA_TEMPR2[5] , \R_DATA_TEMPR3[5] , 
        \R_DATA_TEMPR0[6] , \R_DATA_TEMPR1[6] , \R_DATA_TEMPR2[6] , 
        \R_DATA_TEMPR3[6] , \R_DATA_TEMPR0[7] , \R_DATA_TEMPR1[7] , 
        \R_DATA_TEMPR2[7] , \R_DATA_TEMPR3[7] , \R_DATA_TEMPR0[8] , 
        \R_DATA_TEMPR1[8] , \R_DATA_TEMPR2[8] , \R_DATA_TEMPR3[8] , 
        \R_DATA_TEMPR0[9] , \R_DATA_TEMPR1[9] , \R_DATA_TEMPR2[9] , 
        \R_DATA_TEMPR3[9] , \R_DATA_TEMPR0[10] , \R_DATA_TEMPR1[10] , 
        \R_DATA_TEMPR2[10] , \R_DATA_TEMPR3[10] , \R_DATA_TEMPR0[11] , 
        \R_DATA_TEMPR1[11] , \R_DATA_TEMPR2[11] , \R_DATA_TEMPR3[11] , 
        \R_DATA_TEMPR0[12] , \R_DATA_TEMPR1[12] , \R_DATA_TEMPR2[12] , 
        \R_DATA_TEMPR3[12] , \R_DATA_TEMPR0[13] , \R_DATA_TEMPR1[13] , 
        \R_DATA_TEMPR2[13] , \R_DATA_TEMPR3[13] , \R_DATA_TEMPR0[14] , 
        \R_DATA_TEMPR1[14] , \R_DATA_TEMPR2[14] , \R_DATA_TEMPR3[14] , 
        \R_DATA_TEMPR0[15] , \R_DATA_TEMPR1[15] , \R_DATA_TEMPR2[15] , 
        \R_DATA_TEMPR3[15] , \R_DATA_TEMPR0[16] , \R_DATA_TEMPR1[16] , 
        \R_DATA_TEMPR2[16] , \R_DATA_TEMPR3[16] , \R_DATA_TEMPR0[17] , 
        \R_DATA_TEMPR1[17] , \R_DATA_TEMPR2[17] , \R_DATA_TEMPR3[17] , 
        \R_DATA_TEMPR0[18] , \R_DATA_TEMPR1[18] , \R_DATA_TEMPR2[18] , 
        \R_DATA_TEMPR3[18] , \R_DATA_TEMPR0[19] , \R_DATA_TEMPR1[19] , 
        \R_DATA_TEMPR2[19] , \R_DATA_TEMPR3[19] , \R_DATA_TEMPR0[20] , 
        \R_DATA_TEMPR1[20] , \R_DATA_TEMPR2[20] , \R_DATA_TEMPR3[20] , 
        \R_DATA_TEMPR0[21] , \R_DATA_TEMPR1[21] , \R_DATA_TEMPR2[21] , 
        \R_DATA_TEMPR3[21] , \R_DATA_TEMPR0[22] , \R_DATA_TEMPR1[22] , 
        \R_DATA_TEMPR2[22] , \R_DATA_TEMPR3[22] , \R_DATA_TEMPR0[23] , 
        \R_DATA_TEMPR1[23] , \R_DATA_TEMPR2[23] , \R_DATA_TEMPR3[23] , 
        \R_DATA_TEMPR0[24] , \R_DATA_TEMPR1[24] , \R_DATA_TEMPR2[24] , 
        \R_DATA_TEMPR3[24] , \R_DATA_TEMPR0[25] , \R_DATA_TEMPR1[25] , 
        \R_DATA_TEMPR2[25] , \R_DATA_TEMPR3[25] , \R_DATA_TEMPR0[26] , 
        \R_DATA_TEMPR1[26] , \R_DATA_TEMPR2[26] , \R_DATA_TEMPR3[26] , 
        \R_DATA_TEMPR0[27] , \R_DATA_TEMPR1[27] , \R_DATA_TEMPR2[27] , 
        \R_DATA_TEMPR3[27] , \R_DATA_TEMPR0[28] , \R_DATA_TEMPR1[28] , 
        \R_DATA_TEMPR2[28] , \R_DATA_TEMPR3[28] , \R_DATA_TEMPR0[29] , 
        \R_DATA_TEMPR1[29] , \R_DATA_TEMPR2[29] , \R_DATA_TEMPR3[29] , 
        \R_DATA_TEMPR0[30] , \R_DATA_TEMPR1[30] , \R_DATA_TEMPR2[30] , 
        \R_DATA_TEMPR3[30] , \R_DATA_TEMPR0[31] , \R_DATA_TEMPR1[31] , 
        \R_DATA_TEMPR2[31] , \R_DATA_TEMPR3[31] , \R_DATA_TEMPR0[32] , 
        \R_DATA_TEMPR1[32] , \R_DATA_TEMPR2[32] , \R_DATA_TEMPR3[32] , 
        \R_DATA_TEMPR0[33] , \R_DATA_TEMPR1[33] , \R_DATA_TEMPR2[33] , 
        \R_DATA_TEMPR3[33] , \R_DATA_TEMPR0[34] , \R_DATA_TEMPR1[34] , 
        \R_DATA_TEMPR2[34] , \R_DATA_TEMPR3[34] , \R_DATA_TEMPR0[35] , 
        \R_DATA_TEMPR1[35] , \R_DATA_TEMPR2[35] , \R_DATA_TEMPR3[35] , 
        \R_DATA_TEMPR0[36] , \R_DATA_TEMPR1[36] , \R_DATA_TEMPR2[36] , 
        \R_DATA_TEMPR3[36] , \R_DATA_TEMPR0[37] , \R_DATA_TEMPR1[37] , 
        \R_DATA_TEMPR2[37] , \R_DATA_TEMPR3[37] , \R_DATA_TEMPR0[38] , 
        \R_DATA_TEMPR1[38] , \R_DATA_TEMPR2[38] , \R_DATA_TEMPR3[38] , 
        \R_DATA_TEMPR0[39] , \R_DATA_TEMPR1[39] , \R_DATA_TEMPR2[39] , 
        \R_DATA_TEMPR3[39] , \R_DATA_TEMPR0[40] , \R_DATA_TEMPR1[40] , 
        \R_DATA_TEMPR2[40] , \R_DATA_TEMPR3[40] , \R_DATA_TEMPR0[41] , 
        \R_DATA_TEMPR1[41] , \R_DATA_TEMPR2[41] , \R_DATA_TEMPR3[41] , 
        \R_DATA_TEMPR0[42] , \R_DATA_TEMPR1[42] , \R_DATA_TEMPR2[42] , 
        \R_DATA_TEMPR3[42] , \R_DATA_TEMPR0[43] , \R_DATA_TEMPR1[43] , 
        \R_DATA_TEMPR2[43] , \R_DATA_TEMPR3[43] , \R_DATA_TEMPR0[44] , 
        \R_DATA_TEMPR1[44] , \R_DATA_TEMPR2[44] , \R_DATA_TEMPR3[44] , 
        \R_DATA_TEMPR0[45] , \R_DATA_TEMPR1[45] , \R_DATA_TEMPR2[45] , 
        \R_DATA_TEMPR3[45] , \R_DATA_TEMPR0[46] , \R_DATA_TEMPR1[46] , 
        \R_DATA_TEMPR2[46] , \R_DATA_TEMPR3[46] , \R_DATA_TEMPR0[47] , 
        \R_DATA_TEMPR1[47] , \R_DATA_TEMPR2[47] , \R_DATA_TEMPR3[47] , 
        \R_DATA_TEMPR0[48] , \R_DATA_TEMPR1[48] , \R_DATA_TEMPR2[48] , 
        \R_DATA_TEMPR3[48] , \R_DATA_TEMPR0[49] , \R_DATA_TEMPR1[49] , 
        \R_DATA_TEMPR2[49] , \R_DATA_TEMPR3[49] , \R_DATA_TEMPR0[50] , 
        \R_DATA_TEMPR1[50] , \R_DATA_TEMPR2[50] , \R_DATA_TEMPR3[50] , 
        \R_DATA_TEMPR0[51] , \R_DATA_TEMPR1[51] , \R_DATA_TEMPR2[51] , 
        \R_DATA_TEMPR3[51] , \R_DATA_TEMPR0[52] , \R_DATA_TEMPR1[52] , 
        \R_DATA_TEMPR2[52] , \R_DATA_TEMPR3[52] , \R_DATA_TEMPR0[53] , 
        \R_DATA_TEMPR1[53] , \R_DATA_TEMPR2[53] , \R_DATA_TEMPR3[53] , 
        \R_DATA_TEMPR0[54] , \R_DATA_TEMPR1[54] , \R_DATA_TEMPR2[54] , 
        \R_DATA_TEMPR3[54] , \R_DATA_TEMPR0[55] , \R_DATA_TEMPR1[55] , 
        \R_DATA_TEMPR2[55] , \R_DATA_TEMPR3[55] , \R_DATA_TEMPR0[56] , 
        \R_DATA_TEMPR1[56] , \R_DATA_TEMPR2[56] , \R_DATA_TEMPR3[56] , 
        \R_DATA_TEMPR0[57] , \R_DATA_TEMPR1[57] , \R_DATA_TEMPR2[57] , 
        \R_DATA_TEMPR3[57] , \R_DATA_TEMPR0[58] , \R_DATA_TEMPR1[58] , 
        \R_DATA_TEMPR2[58] , \R_DATA_TEMPR3[58] , \R_DATA_TEMPR0[59] , 
        \R_DATA_TEMPR1[59] , \R_DATA_TEMPR2[59] , \R_DATA_TEMPR3[59] , 
        \R_DATA_TEMPR0[60] , \R_DATA_TEMPR1[60] , \R_DATA_TEMPR2[60] , 
        \R_DATA_TEMPR3[60] , \R_DATA_TEMPR0[61] , \R_DATA_TEMPR1[61] , 
        \R_DATA_TEMPR2[61] , \R_DATA_TEMPR3[61] , \R_DATA_TEMPR0[62] , 
        \R_DATA_TEMPR1[62] , \R_DATA_TEMPR2[62] , \R_DATA_TEMPR3[62] , 
        \R_DATA_TEMPR0[63] , \R_DATA_TEMPR1[63] , \R_DATA_TEMPR2[63] , 
        \R_DATA_TEMPR3[63] , \R_DATA_TEMPR0[64] , \R_DATA_TEMPR1[64] , 
        \R_DATA_TEMPR2[64] , \R_DATA_TEMPR3[64] , \R_DATA_TEMPR0[65] , 
        \R_DATA_TEMPR1[65] , \R_DATA_TEMPR2[65] , \R_DATA_TEMPR3[65] , 
        \R_DATA_TEMPR0[66] , \R_DATA_TEMPR1[66] , \R_DATA_TEMPR2[66] , 
        \R_DATA_TEMPR3[66] , \R_DATA_TEMPR0[67] , \R_DATA_TEMPR1[67] , 
        \R_DATA_TEMPR2[67] , \R_DATA_TEMPR3[67] , \BLKX0[0] , 
        \BLKX0[1] , \BLKX0[2] , \BLKX0[3] , \BLKZ0[0] , \BLKZ0[1] , 
        \BLKZ0[2] , \BLKZ0[3] , \ACCESS_BUSY[0][0] , 
        \ACCESS_BUSY[0][1] , \ACCESS_BUSY[0][2] , \ACCESS_BUSY[0][3] , 
        \ACCESS_BUSY[0][4] , \ACCESS_BUSY[0][5] , \ACCESS_BUSY[1][0] , 
        \ACCESS_BUSY[1][1] , \ACCESS_BUSY[1][2] , \ACCESS_BUSY[1][3] , 
        \ACCESS_BUSY[1][4] , \ACCESS_BUSY[1][5] , \ACCESS_BUSY[2][0] , 
        \ACCESS_BUSY[2][1] , \ACCESS_BUSY[2][2] , \ACCESS_BUSY[2][3] , 
        \ACCESS_BUSY[2][4] , \ACCESS_BUSY[2][5] , \ACCESS_BUSY[3][0] , 
        \ACCESS_BUSY[3][1] , \ACCESS_BUSY[3][2] , \ACCESS_BUSY[3][3] , 
        \ACCESS_BUSY[3][4] , \ACCESS_BUSY[3][5] , VCC, GND, ADLIB_VCC;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign ADLIB_VCC = VCC_power_net1;
    
    OR4 \OR4_rD[37]  (.A(\R_DATA_TEMPR0[37] ), .B(\R_DATA_TEMPR1[37] ), 
        .C(\R_DATA_TEMPR2[37] ), .D(\R_DATA_TEMPR3[37] ), .Y(rD[37]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%2%4%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R2C4 (.BLK_EN(
        \BLKX0[2] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[59], wD[58], wD[57], wD[56], wD[55], wD[54], 
        wD[53], wD[52], wD[51], wD[50], wD[49], wD[48]}), .W_EN(
        \BLKZ0[2] ), .ACCESS_BUSY(\ACCESS_BUSY[2][4] ), .R_DATA({
        \R_DATA_TEMPR2[59] , \R_DATA_TEMPR2[58] , \R_DATA_TEMPR2[57] , 
        \R_DATA_TEMPR2[56] , \R_DATA_TEMPR2[55] , \R_DATA_TEMPR2[54] , 
        \R_DATA_TEMPR2[53] , \R_DATA_TEMPR2[52] , \R_DATA_TEMPR2[51] , 
        \R_DATA_TEMPR2[50] , \R_DATA_TEMPR2[49] , \R_DATA_TEMPR2[48] })
        );
    OR4 \OR4_rD[8]  (.A(\R_DATA_TEMPR0[8] ), .B(\R_DATA_TEMPR1[8] ), 
        .C(\R_DATA_TEMPR2[8] ), .D(\R_DATA_TEMPR3[8] ), .Y(rD[8]));
    OR4 \OR4_rD[4]  (.A(\R_DATA_TEMPR0[4] ), .B(\R_DATA_TEMPR1[4] ), 
        .C(\R_DATA_TEMPR2[4] ), .D(\R_DATA_TEMPR3[4] ), .Y(rD[4]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%3%5%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R3C5 (.BLK_EN(
        \BLKX0[3] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, GND, GND, GND, wD[67], wD[66], wD[65], 
        wD[64], wD[63], wD[62], wD[61], wD[60]}), .W_EN(\BLKZ0[3] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[3][5] ), .R_DATA({nc0, nc1, nc2, nc3, 
        \R_DATA_TEMPR3[67] , \R_DATA_TEMPR3[66] , \R_DATA_TEMPR3[65] , 
        \R_DATA_TEMPR3[64] , \R_DATA_TEMPR3[63] , \R_DATA_TEMPR3[62] , 
        \R_DATA_TEMPR3[61] , \R_DATA_TEMPR3[60] }));
    OR4 \OR4_rD[7]  (.A(\R_DATA_TEMPR0[7] ), .B(\R_DATA_TEMPR1[7] ), 
        .C(\R_DATA_TEMPR2[7] ), .D(\R_DATA_TEMPR3[7] ), .Y(rD[7]));
    OR4 \OR4_rD[66]  (.A(\R_DATA_TEMPR0[66] ), .B(\R_DATA_TEMPR1[66] ), 
        .C(\R_DATA_TEMPR2[66] ), .D(\R_DATA_TEMPR3[66] ), .Y(rD[66]));
    OR4 \OR4_rD[22]  (.A(\R_DATA_TEMPR0[22] ), .B(\R_DATA_TEMPR1[22] ), 
        .C(\R_DATA_TEMPR2[22] ), .D(\R_DATA_TEMPR3[22] ), .Y(rD[22]));
    OR4 \OR4_rD[2]  (.A(\R_DATA_TEMPR0[2] ), .B(\R_DATA_TEMPR1[2] ), 
        .C(\R_DATA_TEMPR2[2] ), .D(\R_DATA_TEMPR3[2] ), .Y(rD[2]));
    OR4 \OR4_rD[46]  (.A(\R_DATA_TEMPR0[46] ), .B(\R_DATA_TEMPR1[46] ), 
        .C(\R_DATA_TEMPR2[46] ), .D(\R_DATA_TEMPR3[46] ), .Y(rD[46]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%0%4%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R0C4 (.BLK_EN(
        \BLKX0[0] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[59], wD[58], wD[57], wD[56], wD[55], wD[54], 
        wD[53], wD[52], wD[51], wD[50], wD[49], wD[48]}), .W_EN(
        \BLKZ0[0] ), .ACCESS_BUSY(\ACCESS_BUSY[0][4] ), .R_DATA({
        \R_DATA_TEMPR0[59] , \R_DATA_TEMPR0[58] , \R_DATA_TEMPR0[57] , 
        \R_DATA_TEMPR0[56] , \R_DATA_TEMPR0[55] , \R_DATA_TEMPR0[54] , 
        \R_DATA_TEMPR0[53] , \R_DATA_TEMPR0[52] , \R_DATA_TEMPR0[51] , 
        \R_DATA_TEMPR0[50] , \R_DATA_TEMPR0[49] , \R_DATA_TEMPR0[48] })
        );
    OR4 \OR4_rD[28]  (.A(\R_DATA_TEMPR0[28] ), .B(\R_DATA_TEMPR1[28] ), 
        .C(\R_DATA_TEMPR2[28] ), .D(\R_DATA_TEMPR3[28] ), .Y(rD[28]));
    OR4 \OR4_rD[60]  (.A(\R_DATA_TEMPR0[60] ), .B(\R_DATA_TEMPR1[60] ), 
        .C(\R_DATA_TEMPR2[60] ), .D(\R_DATA_TEMPR3[60] ), .Y(rD[60]));
    OR4 \OR4_rD[12]  (.A(\R_DATA_TEMPR0[12] ), .B(\R_DATA_TEMPR1[12] ), 
        .C(\R_DATA_TEMPR2[12] ), .D(\R_DATA_TEMPR3[12] ), .Y(rD[12]));
    OR4 \OR4_rD[52]  (.A(\R_DATA_TEMPR0[52] ), .B(\R_DATA_TEMPR1[52] ), 
        .C(\R_DATA_TEMPR2[52] ), .D(\R_DATA_TEMPR3[52] ), .Y(rD[52]));
    OR4 \OR4_rD[40]  (.A(\R_DATA_TEMPR0[40] ), .B(\R_DATA_TEMPR1[40] ), 
        .C(\R_DATA_TEMPR2[40] ), .D(\R_DATA_TEMPR3[40] ), .Y(rD[40]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%2%0%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R2C0 (.BLK_EN(
        \BLKX0[2] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[11], wD[10], wD[9], wD[8], wD[7], wD[6], 
        wD[5], wD[4], wD[3], wD[2], wD[1], wD[0]}), .W_EN(\BLKZ0[2] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[2][0] ), .R_DATA({
        \R_DATA_TEMPR2[11] , \R_DATA_TEMPR2[10] , \R_DATA_TEMPR2[9] , 
        \R_DATA_TEMPR2[8] , \R_DATA_TEMPR2[7] , \R_DATA_TEMPR2[6] , 
        \R_DATA_TEMPR2[5] , \R_DATA_TEMPR2[4] , \R_DATA_TEMPR2[3] , 
        \R_DATA_TEMPR2[2] , \R_DATA_TEMPR2[1] , \R_DATA_TEMPR2[0] }));
    CFG3 #( .INIT(8'h20) )  \CFG3_BLKX0[2]  (.A(rAddr[7]), .B(rAddr[6])
        , .C(VCC), .Y(\BLKX0[2] ));
    OR4 \OR4_rD[58]  (.A(\R_DATA_TEMPR0[58] ), .B(\R_DATA_TEMPR1[58] ), 
        .C(\R_DATA_TEMPR2[58] ), .D(\R_DATA_TEMPR3[58] ), .Y(rD[58]));
    OR4 \OR4_rD[18]  (.A(\R_DATA_TEMPR0[18] ), .B(\R_DATA_TEMPR1[18] ), 
        .C(\R_DATA_TEMPR2[18] ), .D(\R_DATA_TEMPR3[18] ), .Y(rD[18]));
    OR4 \OR4_rD[36]  (.A(\R_DATA_TEMPR0[36] ), .B(\R_DATA_TEMPR1[36] ), 
        .C(\R_DATA_TEMPR2[36] ), .D(\R_DATA_TEMPR3[36] ), .Y(rD[36]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%3%4%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R3C4 (.BLK_EN(
        \BLKX0[3] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[59], wD[58], wD[57], wD[56], wD[55], wD[54], 
        wD[53], wD[52], wD[51], wD[50], wD[49], wD[48]}), .W_EN(
        \BLKZ0[3] ), .ACCESS_BUSY(\ACCESS_BUSY[3][4] ), .R_DATA({
        \R_DATA_TEMPR3[59] , \R_DATA_TEMPR3[58] , \R_DATA_TEMPR3[57] , 
        \R_DATA_TEMPR3[56] , \R_DATA_TEMPR3[55] , \R_DATA_TEMPR3[54] , 
        \R_DATA_TEMPR3[53] , \R_DATA_TEMPR3[52] , \R_DATA_TEMPR3[51] , 
        \R_DATA_TEMPR3[50] , \R_DATA_TEMPR3[49] , \R_DATA_TEMPR3[48] })
        );
    OR4 \OR4_rD[62]  (.A(\R_DATA_TEMPR0[62] ), .B(\R_DATA_TEMPR1[62] ), 
        .C(\R_DATA_TEMPR2[62] ), .D(\R_DATA_TEMPR3[62] ), .Y(rD[62]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%3%0%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R3C0 (.BLK_EN(
        \BLKX0[3] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[11], wD[10], wD[9], wD[8], wD[7], wD[6], 
        wD[5], wD[4], wD[3], wD[2], wD[1], wD[0]}), .W_EN(\BLKZ0[3] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[3][0] ), .R_DATA({
        \R_DATA_TEMPR3[11] , \R_DATA_TEMPR3[10] , \R_DATA_TEMPR3[9] , 
        \R_DATA_TEMPR3[8] , \R_DATA_TEMPR3[7] , \R_DATA_TEMPR3[6] , 
        \R_DATA_TEMPR3[5] , \R_DATA_TEMPR3[4] , \R_DATA_TEMPR3[3] , 
        \R_DATA_TEMPR3[2] , \R_DATA_TEMPR3[1] , \R_DATA_TEMPR3[0] }));
    OR4 \OR4_rD[30]  (.A(\R_DATA_TEMPR0[30] ), .B(\R_DATA_TEMPR1[30] ), 
        .C(\R_DATA_TEMPR2[30] ), .D(\R_DATA_TEMPR3[30] ), .Y(rD[30]));
    CFG3 #( .INIT(8'h10) )  \CFG3_BLKX0[0]  (.A(rAddr[7]), .B(rAddr[6])
        , .C(VCC), .Y(\BLKX0[0] ));
    CFG3 #( .INIT(8'h80) )  \CFG3_BLKZ0[3]  (.A(wAddr[7]), .B(wAddr[6])
        , .C(wEn), .Y(\BLKZ0[3] ));
    OR4 \OR4_rD[42]  (.A(\R_DATA_TEMPR0[42] ), .B(\R_DATA_TEMPR1[42] ), 
        .C(\R_DATA_TEMPR2[42] ), .D(\R_DATA_TEMPR3[42] ), .Y(rD[42]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%2%3%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R2C3 (.BLK_EN(
        \BLKX0[2] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[47], wD[46], wD[45], wD[44], wD[43], wD[42], 
        wD[41], wD[40], wD[39], wD[38], wD[37], wD[36]}), .W_EN(
        \BLKZ0[2] ), .ACCESS_BUSY(\ACCESS_BUSY[2][3] ), .R_DATA({
        \R_DATA_TEMPR2[47] , \R_DATA_TEMPR2[46] , \R_DATA_TEMPR2[45] , 
        \R_DATA_TEMPR2[44] , \R_DATA_TEMPR2[43] , \R_DATA_TEMPR2[42] , 
        \R_DATA_TEMPR2[41] , \R_DATA_TEMPR2[40] , \R_DATA_TEMPR2[39] , 
        \R_DATA_TEMPR2[38] , \R_DATA_TEMPR2[37] , \R_DATA_TEMPR2[36] })
        );
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%0%5%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R0C5 (.BLK_EN(
        \BLKX0[0] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, GND, GND, GND, wD[67], wD[66], wD[65], 
        wD[64], wD[63], wD[62], wD[61], wD[60]}), .W_EN(\BLKZ0[0] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][5] ), .R_DATA({nc4, nc5, nc6, nc7, 
        \R_DATA_TEMPR0[67] , \R_DATA_TEMPR0[66] , \R_DATA_TEMPR0[65] , 
        \R_DATA_TEMPR0[64] , \R_DATA_TEMPR0[63] , \R_DATA_TEMPR0[62] , 
        \R_DATA_TEMPR0[61] , \R_DATA_TEMPR0[60] }));
    OR4 \OR4_rD[1]  (.A(\R_DATA_TEMPR0[1] ), .B(\R_DATA_TEMPR1[1] ), 
        .C(\R_DATA_TEMPR2[1] ), .D(\R_DATA_TEMPR3[1] ), .Y(rD[1]));
    OR4 \OR4_rD[48]  (.A(\R_DATA_TEMPR0[48] ), .B(\R_DATA_TEMPR1[48] ), 
        .C(\R_DATA_TEMPR2[48] ), .D(\R_DATA_TEMPR3[48] ), .Y(rD[48]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%2%2%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R2C2 (.BLK_EN(
        \BLKX0[2] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[35], wD[34], wD[33], wD[32], wD[31], wD[30], 
        wD[29], wD[28], wD[27], wD[26], wD[25], wD[24]}), .W_EN(
        \BLKZ0[2] ), .ACCESS_BUSY(\ACCESS_BUSY[2][2] ), .R_DATA({
        \R_DATA_TEMPR2[35] , \R_DATA_TEMPR2[34] , \R_DATA_TEMPR2[33] , 
        \R_DATA_TEMPR2[32] , \R_DATA_TEMPR2[31] , \R_DATA_TEMPR2[30] , 
        \R_DATA_TEMPR2[29] , \R_DATA_TEMPR2[28] , \R_DATA_TEMPR2[27] , 
        \R_DATA_TEMPR2[26] , \R_DATA_TEMPR2[25] , \R_DATA_TEMPR2[24] })
        );
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%1%2%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R1C2 (.BLK_EN(
        \BLKX0[1] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[35], wD[34], wD[33], wD[32], wD[31], wD[30], 
        wD[29], wD[28], wD[27], wD[26], wD[25], wD[24]}), .W_EN(
        \BLKZ0[1] ), .ACCESS_BUSY(\ACCESS_BUSY[1][2] ), .R_DATA({
        \R_DATA_TEMPR1[35] , \R_DATA_TEMPR1[34] , \R_DATA_TEMPR1[33] , 
        \R_DATA_TEMPR1[32] , \R_DATA_TEMPR1[31] , \R_DATA_TEMPR1[30] , 
        \R_DATA_TEMPR1[29] , \R_DATA_TEMPR1[28] , \R_DATA_TEMPR1[27] , 
        \R_DATA_TEMPR1[26] , \R_DATA_TEMPR1[25] , \R_DATA_TEMPR1[24] })
        );
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%3%2%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R3C2 (.BLK_EN(
        \BLKX0[3] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[35], wD[34], wD[33], wD[32], wD[31], wD[30], 
        wD[29], wD[28], wD[27], wD[26], wD[25], wD[24]}), .W_EN(
        \BLKZ0[3] ), .ACCESS_BUSY(\ACCESS_BUSY[3][2] ), .R_DATA({
        \R_DATA_TEMPR3[35] , \R_DATA_TEMPR3[34] , \R_DATA_TEMPR3[33] , 
        \R_DATA_TEMPR3[32] , \R_DATA_TEMPR3[31] , \R_DATA_TEMPR3[30] , 
        \R_DATA_TEMPR3[29] , \R_DATA_TEMPR3[28] , \R_DATA_TEMPR3[27] , 
        \R_DATA_TEMPR3[26] , \R_DATA_TEMPR3[25] , \R_DATA_TEMPR3[24] })
        );
    OR4 \OR4_rD[21]  (.A(\R_DATA_TEMPR0[21] ), .B(\R_DATA_TEMPR1[21] ), 
        .C(\R_DATA_TEMPR2[21] ), .D(\R_DATA_TEMPR3[21] ), .Y(rD[21]));
    OR4 \OR4_rD[32]  (.A(\R_DATA_TEMPR0[32] ), .B(\R_DATA_TEMPR1[32] ), 
        .C(\R_DATA_TEMPR2[32] ), .D(\R_DATA_TEMPR3[32] ), .Y(rD[32]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%2%5%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R2C5 (.BLK_EN(
        \BLKX0[2] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, GND, GND, GND, wD[67], wD[66], wD[65], 
        wD[64], wD[63], wD[62], wD[61], wD[60]}), .W_EN(\BLKZ0[2] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[2][5] ), .R_DATA({nc8, nc9, nc10, 
        nc11, \R_DATA_TEMPR2[67] , \R_DATA_TEMPR2[66] , 
        \R_DATA_TEMPR2[65] , \R_DATA_TEMPR2[64] , \R_DATA_TEMPR2[63] , 
        \R_DATA_TEMPR2[62] , \R_DATA_TEMPR2[61] , \R_DATA_TEMPR2[60] })
        );
    OR4 \OR4_rD[38]  (.A(\R_DATA_TEMPR0[38] ), .B(\R_DATA_TEMPR1[38] ), 
        .C(\R_DATA_TEMPR2[38] ), .D(\R_DATA_TEMPR3[38] ), .Y(rD[38]));
    CFG3 #( .INIT(8'h40) )  \CFG3_BLKX0[1]  (.A(rAddr[7]), .B(rAddr[6])
        , .C(VCC), .Y(\BLKX0[1] ));
    OR4 \OR4_rD[11]  (.A(\R_DATA_TEMPR0[11] ), .B(\R_DATA_TEMPR1[11] ), 
        .C(\R_DATA_TEMPR2[11] ), .D(\R_DATA_TEMPR3[11] ), .Y(rD[11]));
    OR4 \OR4_rD[51]  (.A(\R_DATA_TEMPR0[51] ), .B(\R_DATA_TEMPR1[51] ), 
        .C(\R_DATA_TEMPR2[51] ), .D(\R_DATA_TEMPR3[51] ), .Y(rD[51]));
    OR4 \OR4_rD[25]  (.A(\R_DATA_TEMPR0[25] ), .B(\R_DATA_TEMPR1[25] ), 
        .C(\R_DATA_TEMPR2[25] ), .D(\R_DATA_TEMPR3[25] ), .Y(rD[25]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%3%1%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R3C1 (.BLK_EN(
        \BLKX0[3] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[23], wD[22], wD[21], wD[20], wD[19], wD[18], 
        wD[17], wD[16], wD[15], wD[14], wD[13], wD[12]}), .W_EN(
        \BLKZ0[3] ), .ACCESS_BUSY(\ACCESS_BUSY[3][1] ), .R_DATA({
        \R_DATA_TEMPR3[23] , \R_DATA_TEMPR3[22] , \R_DATA_TEMPR3[21] , 
        \R_DATA_TEMPR3[20] , \R_DATA_TEMPR3[19] , \R_DATA_TEMPR3[18] , 
        \R_DATA_TEMPR3[17] , \R_DATA_TEMPR3[16] , \R_DATA_TEMPR3[15] , 
        \R_DATA_TEMPR3[14] , \R_DATA_TEMPR3[13] , \R_DATA_TEMPR3[12] })
        );
    OR4 \OR4_rD[29]  (.A(\R_DATA_TEMPR0[29] ), .B(\R_DATA_TEMPR1[29] ), 
        .C(\R_DATA_TEMPR2[29] ), .D(\R_DATA_TEMPR3[29] ), .Y(rD[29]));
    OR4 \OR4_rD[15]  (.A(\R_DATA_TEMPR0[15] ), .B(\R_DATA_TEMPR1[15] ), 
        .C(\R_DATA_TEMPR2[15] ), .D(\R_DATA_TEMPR3[15] ), .Y(rD[15]));
    OR4 \OR4_rD[55]  (.A(\R_DATA_TEMPR0[55] ), .B(\R_DATA_TEMPR1[55] ), 
        .C(\R_DATA_TEMPR2[55] ), .D(\R_DATA_TEMPR3[55] ), .Y(rD[55]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%0%3%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R0C3 (.BLK_EN(
        \BLKX0[0] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[47], wD[46], wD[45], wD[44], wD[43], wD[42], 
        wD[41], wD[40], wD[39], wD[38], wD[37], wD[36]}), .W_EN(
        \BLKZ0[0] ), .ACCESS_BUSY(\ACCESS_BUSY[0][3] ), .R_DATA({
        \R_DATA_TEMPR0[47] , \R_DATA_TEMPR0[46] , \R_DATA_TEMPR0[45] , 
        \R_DATA_TEMPR0[44] , \R_DATA_TEMPR0[43] , \R_DATA_TEMPR0[42] , 
        \R_DATA_TEMPR0[41] , \R_DATA_TEMPR0[40] , \R_DATA_TEMPR0[39] , 
        \R_DATA_TEMPR0[38] , \R_DATA_TEMPR0[37] , \R_DATA_TEMPR0[36] })
        );
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%1%1%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R1C1 (.BLK_EN(
        \BLKX0[1] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[23], wD[22], wD[21], wD[20], wD[19], wD[18], 
        wD[17], wD[16], wD[15], wD[14], wD[13], wD[12]}), .W_EN(
        \BLKZ0[1] ), .ACCESS_BUSY(\ACCESS_BUSY[1][1] ), .R_DATA({
        \R_DATA_TEMPR1[23] , \R_DATA_TEMPR1[22] , \R_DATA_TEMPR1[21] , 
        \R_DATA_TEMPR1[20] , \R_DATA_TEMPR1[19] , \R_DATA_TEMPR1[18] , 
        \R_DATA_TEMPR1[17] , \R_DATA_TEMPR1[16] , \R_DATA_TEMPR1[15] , 
        \R_DATA_TEMPR1[14] , \R_DATA_TEMPR1[13] , \R_DATA_TEMPR1[12] })
        );
    OR4 \OR4_rD[61]  (.A(\R_DATA_TEMPR0[61] ), .B(\R_DATA_TEMPR1[61] ), 
        .C(\R_DATA_TEMPR2[61] ), .D(\R_DATA_TEMPR3[61] ), .Y(rD[61]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%1%4%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R1C4 (.BLK_EN(
        \BLKX0[1] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[59], wD[58], wD[57], wD[56], wD[55], wD[54], 
        wD[53], wD[52], wD[51], wD[50], wD[49], wD[48]}), .W_EN(
        \BLKZ0[1] ), .ACCESS_BUSY(\ACCESS_BUSY[1][4] ), .R_DATA({
        \R_DATA_TEMPR1[59] , \R_DATA_TEMPR1[58] , \R_DATA_TEMPR1[57] , 
        \R_DATA_TEMPR1[56] , \R_DATA_TEMPR1[55] , \R_DATA_TEMPR1[54] , 
        \R_DATA_TEMPR1[53] , \R_DATA_TEMPR1[52] , \R_DATA_TEMPR1[51] , 
        \R_DATA_TEMPR1[50] , \R_DATA_TEMPR1[49] , \R_DATA_TEMPR1[48] })
        );
    OR4 \OR4_rD[5]  (.A(\R_DATA_TEMPR0[5] ), .B(\R_DATA_TEMPR1[5] ), 
        .C(\R_DATA_TEMPR2[5] ), .D(\R_DATA_TEMPR3[5] ), .Y(rD[5]));
    OR4 \OR4_rD[9]  (.A(\R_DATA_TEMPR0[9] ), .B(\R_DATA_TEMPR1[9] ), 
        .C(\R_DATA_TEMPR2[9] ), .D(\R_DATA_TEMPR3[9] ), .Y(rD[9]));
    OR4 \OR4_rD[41]  (.A(\R_DATA_TEMPR0[41] ), .B(\R_DATA_TEMPR1[41] ), 
        .C(\R_DATA_TEMPR2[41] ), .D(\R_DATA_TEMPR3[41] ), .Y(rD[41]));
    OR4 \OR4_rD[19]  (.A(\R_DATA_TEMPR0[19] ), .B(\R_DATA_TEMPR1[19] ), 
        .C(\R_DATA_TEMPR2[19] ), .D(\R_DATA_TEMPR3[19] ), .Y(rD[19]));
    OR4 \OR4_rD[59]  (.A(\R_DATA_TEMPR0[59] ), .B(\R_DATA_TEMPR1[59] ), 
        .C(\R_DATA_TEMPR2[59] ), .D(\R_DATA_TEMPR3[59] ), .Y(rD[59]));
    OR4 \OR4_rD[23]  (.A(\R_DATA_TEMPR0[23] ), .B(\R_DATA_TEMPR1[23] ), 
        .C(\R_DATA_TEMPR2[23] ), .D(\R_DATA_TEMPR3[23] ), .Y(rD[23]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%1%0%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R1C0 (.BLK_EN(
        \BLKX0[1] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[11], wD[10], wD[9], wD[8], wD[7], wD[6], 
        wD[5], wD[4], wD[3], wD[2], wD[1], wD[0]}), .W_EN(\BLKZ0[1] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[1][0] ), .R_DATA({
        \R_DATA_TEMPR1[11] , \R_DATA_TEMPR1[10] , \R_DATA_TEMPR1[9] , 
        \R_DATA_TEMPR1[8] , \R_DATA_TEMPR1[7] , \R_DATA_TEMPR1[6] , 
        \R_DATA_TEMPR1[5] , \R_DATA_TEMPR1[4] , \R_DATA_TEMPR1[3] , 
        \R_DATA_TEMPR1[2] , \R_DATA_TEMPR1[1] , \R_DATA_TEMPR1[0] }));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%2%1%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R2C1 (.BLK_EN(
        \BLKX0[2] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[23], wD[22], wD[21], wD[20], wD[19], wD[18], 
        wD[17], wD[16], wD[15], wD[14], wD[13], wD[12]}), .W_EN(
        \BLKZ0[2] ), .ACCESS_BUSY(\ACCESS_BUSY[2][1] ), .R_DATA({
        \R_DATA_TEMPR2[23] , \R_DATA_TEMPR2[22] , \R_DATA_TEMPR2[21] , 
        \R_DATA_TEMPR2[20] , \R_DATA_TEMPR2[19] , \R_DATA_TEMPR2[18] , 
        \R_DATA_TEMPR2[17] , \R_DATA_TEMPR2[16] , \R_DATA_TEMPR2[15] , 
        \R_DATA_TEMPR2[14] , \R_DATA_TEMPR2[13] , \R_DATA_TEMPR2[12] })
        );
    OR4 \OR4_rD[65]  (.A(\R_DATA_TEMPR0[65] ), .B(\R_DATA_TEMPR1[65] ), 
        .C(\R_DATA_TEMPR2[65] ), .D(\R_DATA_TEMPR3[65] ), .Y(rD[65]));
    OR4 \OR4_rD[24]  (.A(\R_DATA_TEMPR0[24] ), .B(\R_DATA_TEMPR1[24] ), 
        .C(\R_DATA_TEMPR2[24] ), .D(\R_DATA_TEMPR3[24] ), .Y(rD[24]));
    OR4 \OR4_rD[45]  (.A(\R_DATA_TEMPR0[45] ), .B(\R_DATA_TEMPR1[45] ), 
        .C(\R_DATA_TEMPR2[45] ), .D(\R_DATA_TEMPR3[45] ), .Y(rD[45]));
    OR4 \OR4_rD[53]  (.A(\R_DATA_TEMPR0[53] ), .B(\R_DATA_TEMPR1[53] ), 
        .C(\R_DATA_TEMPR2[53] ), .D(\R_DATA_TEMPR3[53] ), .Y(rD[53]));
    OR4 \OR4_rD[31]  (.A(\R_DATA_TEMPR0[31] ), .B(\R_DATA_TEMPR1[31] ), 
        .C(\R_DATA_TEMPR2[31] ), .D(\R_DATA_TEMPR3[31] ), .Y(rD[31]));
    OR4 \OR4_rD[13]  (.A(\R_DATA_TEMPR0[13] ), .B(\R_DATA_TEMPR1[13] ), 
        .C(\R_DATA_TEMPR2[13] ), .D(\R_DATA_TEMPR3[13] ), .Y(rD[13]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%0%2%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R0C2 (.BLK_EN(
        \BLKX0[0] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[35], wD[34], wD[33], wD[32], wD[31], wD[30], 
        wD[29], wD[28], wD[27], wD[26], wD[25], wD[24]}), .W_EN(
        \BLKZ0[0] ), .ACCESS_BUSY(\ACCESS_BUSY[0][2] ), .R_DATA({
        \R_DATA_TEMPR0[35] , \R_DATA_TEMPR0[34] , \R_DATA_TEMPR0[33] , 
        \R_DATA_TEMPR0[32] , \R_DATA_TEMPR0[31] , \R_DATA_TEMPR0[30] , 
        \R_DATA_TEMPR0[29] , \R_DATA_TEMPR0[28] , \R_DATA_TEMPR0[27] , 
        \R_DATA_TEMPR0[26] , \R_DATA_TEMPR0[25] , \R_DATA_TEMPR0[24] })
        );
    CFG3 #( .INIT(8'h20) )  \CFG3_BLKZ0[2]  (.A(wAddr[7]), .B(wAddr[6])
        , .C(wEn), .Y(\BLKZ0[2] ));
    OR4 \OR4_rD[27]  (.A(\R_DATA_TEMPR0[27] ), .B(\R_DATA_TEMPR1[27] ), 
        .C(\R_DATA_TEMPR2[27] ), .D(\R_DATA_TEMPR3[27] ), .Y(rD[27]));
    OR4 \OR4_rD[6]  (.A(\R_DATA_TEMPR0[6] ), .B(\R_DATA_TEMPR1[6] ), 
        .C(\R_DATA_TEMPR2[6] ), .D(\R_DATA_TEMPR3[6] ), .Y(rD[6]));
    OR4 \OR4_rD[54]  (.A(\R_DATA_TEMPR0[54] ), .B(\R_DATA_TEMPR1[54] ), 
        .C(\R_DATA_TEMPR2[54] ), .D(\R_DATA_TEMPR3[54] ), .Y(rD[54]));
    OR4 \OR4_rD[49]  (.A(\R_DATA_TEMPR0[49] ), .B(\R_DATA_TEMPR1[49] ), 
        .C(\R_DATA_TEMPR2[49] ), .D(\R_DATA_TEMPR3[49] ), .Y(rD[49]));
    OR4 \OR4_rD[14]  (.A(\R_DATA_TEMPR0[14] ), .B(\R_DATA_TEMPR1[14] ), 
        .C(\R_DATA_TEMPR2[14] ), .D(\R_DATA_TEMPR3[14] ), .Y(rD[14]));
    OR4 \OR4_rD[0]  (.A(\R_DATA_TEMPR0[0] ), .B(\R_DATA_TEMPR1[0] ), 
        .C(\R_DATA_TEMPR2[0] ), .D(\R_DATA_TEMPR3[0] ), .Y(rD[0]));
    CFG3 #( .INIT(8'h80) )  \CFG3_BLKX0[3]  (.A(rAddr[7]), .B(rAddr[6])
        , .C(VCC), .Y(\BLKX0[3] ));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%0%0%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R0C0 (.BLK_EN(
        \BLKX0[0] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[11], wD[10], wD[9], wD[8], wD[7], wD[6], 
        wD[5], wD[4], wD[3], wD[2], wD[1], wD[0]}), .W_EN(\BLKZ0[0] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][0] ), .R_DATA({
        \R_DATA_TEMPR0[11] , \R_DATA_TEMPR0[10] , \R_DATA_TEMPR0[9] , 
        \R_DATA_TEMPR0[8] , \R_DATA_TEMPR0[7] , \R_DATA_TEMPR0[6] , 
        \R_DATA_TEMPR0[5] , \R_DATA_TEMPR0[4] , \R_DATA_TEMPR0[3] , 
        \R_DATA_TEMPR0[2] , \R_DATA_TEMPR0[1] , \R_DATA_TEMPR0[0] }));
    OR4 \OR4_rD[35]  (.A(\R_DATA_TEMPR0[35] ), .B(\R_DATA_TEMPR1[35] ), 
        .C(\R_DATA_TEMPR2[35] ), .D(\R_DATA_TEMPR3[35] ), .Y(rD[35]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%3%3%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R3C3 (.BLK_EN(
        \BLKX0[3] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[47], wD[46], wD[45], wD[44], wD[43], wD[42], 
        wD[41], wD[40], wD[39], wD[38], wD[37], wD[36]}), .W_EN(
        \BLKZ0[3] ), .ACCESS_BUSY(\ACCESS_BUSY[3][3] ), .R_DATA({
        \R_DATA_TEMPR3[47] , \R_DATA_TEMPR3[46] , \R_DATA_TEMPR3[45] , 
        \R_DATA_TEMPR3[44] , \R_DATA_TEMPR3[43] , \R_DATA_TEMPR3[42] , 
        \R_DATA_TEMPR3[41] , \R_DATA_TEMPR3[40] , \R_DATA_TEMPR3[39] , 
        \R_DATA_TEMPR3[38] , \R_DATA_TEMPR3[37] , \R_DATA_TEMPR3[36] })
        );
    CFG3 #( .INIT(8'h10) )  \CFG3_BLKZ0[0]  (.A(wAddr[7]), .B(wAddr[6])
        , .C(wEn), .Y(\BLKZ0[0] ));
    OR4 \OR4_rD[17]  (.A(\R_DATA_TEMPR0[17] ), .B(\R_DATA_TEMPR1[17] ), 
        .C(\R_DATA_TEMPR2[17] ), .D(\R_DATA_TEMPR3[17] ), .Y(rD[17]));
    OR4 \OR4_rD[57]  (.A(\R_DATA_TEMPR0[57] ), .B(\R_DATA_TEMPR1[57] ), 
        .C(\R_DATA_TEMPR2[57] ), .D(\R_DATA_TEMPR3[57] ), .Y(rD[57]));
    OR4 \OR4_rD[3]  (.A(\R_DATA_TEMPR0[3] ), .B(\R_DATA_TEMPR1[3] ), 
        .C(\R_DATA_TEMPR2[3] ), .D(\R_DATA_TEMPR3[3] ), .Y(rD[3]));
    OR4 \OR4_rD[63]  (.A(\R_DATA_TEMPR0[63] ), .B(\R_DATA_TEMPR1[63] ), 
        .C(\R_DATA_TEMPR2[63] ), .D(\R_DATA_TEMPR3[63] ), .Y(rD[63]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%1%3%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R1C3 (.BLK_EN(
        \BLKX0[1] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[47], wD[46], wD[45], wD[44], wD[43], wD[42], 
        wD[41], wD[40], wD[39], wD[38], wD[37], wD[36]}), .W_EN(
        \BLKZ0[1] ), .ACCESS_BUSY(\ACCESS_BUSY[1][3] ), .R_DATA({
        \R_DATA_TEMPR1[47] , \R_DATA_TEMPR1[46] , \R_DATA_TEMPR1[45] , 
        \R_DATA_TEMPR1[44] , \R_DATA_TEMPR1[43] , \R_DATA_TEMPR1[42] , 
        \R_DATA_TEMPR1[41] , \R_DATA_TEMPR1[40] , \R_DATA_TEMPR1[39] , 
        \R_DATA_TEMPR1[38] , \R_DATA_TEMPR1[37] , \R_DATA_TEMPR1[36] })
        );
    OR4 \OR4_rD[43]  (.A(\R_DATA_TEMPR0[43] ), .B(\R_DATA_TEMPR1[43] ), 
        .C(\R_DATA_TEMPR2[43] ), .D(\R_DATA_TEMPR3[43] ), .Y(rD[43]));
    OR4 \OR4_rD[39]  (.A(\R_DATA_TEMPR0[39] ), .B(\R_DATA_TEMPR1[39] ), 
        .C(\R_DATA_TEMPR2[39] ), .D(\R_DATA_TEMPR3[39] ), .Y(rD[39]));
    OR4 \OR4_rD[64]  (.A(\R_DATA_TEMPR0[64] ), .B(\R_DATA_TEMPR1[64] ), 
        .C(\R_DATA_TEMPR2[64] ), .D(\R_DATA_TEMPR3[64] ), .Y(rD[64]));
    OR4 \OR4_rD[44]  (.A(\R_DATA_TEMPR0[44] ), .B(\R_DATA_TEMPR1[44] ), 
        .C(\R_DATA_TEMPR2[44] ), .D(\R_DATA_TEMPR3[44] ), .Y(rD[44]));
    OR4 \OR4_rD[26]  (.A(\R_DATA_TEMPR0[26] ), .B(\R_DATA_TEMPR1[26] ), 
        .C(\R_DATA_TEMPR2[26] ), .D(\R_DATA_TEMPR3[26] ), .Y(rD[26]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%1%5%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R1C5 (.BLK_EN(
        \BLKX0[1] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, GND, GND, GND, wD[67], wD[66], wD[65], 
        wD[64], wD[63], wD[62], wD[61], wD[60]}), .W_EN(\BLKZ0[1] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[1][5] ), .R_DATA({nc12, nc13, nc14, 
        nc15, \R_DATA_TEMPR1[67] , \R_DATA_TEMPR1[66] , 
        \R_DATA_TEMPR1[65] , \R_DATA_TEMPR1[64] , \R_DATA_TEMPR1[63] , 
        \R_DATA_TEMPR1[62] , \R_DATA_TEMPR1[61] , \R_DATA_TEMPR1[60] })
        );
    OR4 \OR4_rD[67]  (.A(\R_DATA_TEMPR0[67] ), .B(\R_DATA_TEMPR1[67] ), 
        .C(\R_DATA_TEMPR2[67] ), .D(\R_DATA_TEMPR3[67] ), .Y(rD[67]));
    OR4 \OR4_rD[47]  (.A(\R_DATA_TEMPR0[47] ), .B(\R_DATA_TEMPR1[47] ), 
        .C(\R_DATA_TEMPR2[47] ), .D(\R_DATA_TEMPR3[47] ), .Y(rD[47]));
    OR4 \OR4_rD[20]  (.A(\R_DATA_TEMPR0[20] ), .B(\R_DATA_TEMPR1[20] ), 
        .C(\R_DATA_TEMPR2[20] ), .D(\R_DATA_TEMPR3[20] ), .Y(rD[20]));
    OR4 \OR4_rD[33]  (.A(\R_DATA_TEMPR0[33] ), .B(\R_DATA_TEMPR1[33] ), 
        .C(\R_DATA_TEMPR2[33] ), .D(\R_DATA_TEMPR3[33] ), .Y(rD[33]));
    OR4 \OR4_rD[16]  (.A(\R_DATA_TEMPR0[16] ), .B(\R_DATA_TEMPR1[16] ), 
        .C(\R_DATA_TEMPR2[16] ), .D(\R_DATA_TEMPR3[16] ), .Y(rD[16]));
    OR4 \OR4_rD[56]  (.A(\R_DATA_TEMPR0[56] ), .B(\R_DATA_TEMPR1[56] ), 
        .C(\R_DATA_TEMPR2[56] ), .D(\R_DATA_TEMPR3[56] ), .Y(rD[56]));
    CFG3 #( .INIT(8'h40) )  \CFG3_BLKZ0[1]  (.A(wAddr[7]), .B(wAddr[6])
        , .C(wEn), .Y(\BLKZ0[1] ));
    OR4 \OR4_rD[34]  (.A(\R_DATA_TEMPR0[34] ), .B(\R_DATA_TEMPR1[34] ), 
        .C(\R_DATA_TEMPR2[34] ), .D(\R_DATA_TEMPR3[34] ), .Y(rD[34]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%256%68%SPEED%0%1%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_dly_256_g5_u_R0C1 (.BLK_EN(
        \BLKX0[0] ), .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], 
        rAddr[3], rAddr[2], rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), 
        .R_ADDR_AL_N(VCC), .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), 
        .R_ADDR_SD(GND), .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(
        VCC), .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({wD[23], wD[22], wD[21], wD[20], wD[19], wD[18], 
        wD[17], wD[16], wD[15], wD[14], wD[13], wD[12]}), .W_EN(
        \BLKZ0[0] ), .ACCESS_BUSY(\ACCESS_BUSY[0][1] ), .R_DATA({
        \R_DATA_TEMPR0[23] , \R_DATA_TEMPR0[22] , \R_DATA_TEMPR0[21] , 
        \R_DATA_TEMPR0[20] , \R_DATA_TEMPR0[19] , \R_DATA_TEMPR0[18] , 
        \R_DATA_TEMPR0[17] , \R_DATA_TEMPR0[16] , \R_DATA_TEMPR0[15] , 
        \R_DATA_TEMPR0[14] , \R_DATA_TEMPR0[13] , \R_DATA_TEMPR0[12] })
        );
    OR4 \OR4_rD[50]  (.A(\R_DATA_TEMPR0[50] ), .B(\R_DATA_TEMPR1[50] ), 
        .C(\R_DATA_TEMPR2[50] ), .D(\R_DATA_TEMPR3[50] ), .Y(rD[50]));
    OR4 \OR4_rD[10]  (.A(\R_DATA_TEMPR0[10] ), .B(\R_DATA_TEMPR1[10] ), 
        .C(\R_DATA_TEMPR2[10] ), .D(\R_DATA_TEMPR3[10] ), .Y(rD[10]));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
