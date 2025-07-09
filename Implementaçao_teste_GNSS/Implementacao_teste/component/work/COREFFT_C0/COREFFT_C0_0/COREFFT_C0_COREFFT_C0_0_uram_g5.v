`timescale 1 ns/100 ps
// Version: 2023.2 2023.2.0.8


module COREFFT_C0_COREFFT_C0_0_uram_g5(
       rD,
       wD,
       rAddr,
       wAddr,
       rClk,
       wClk,
       wEn
    );
output [63:0] rD;
input  [63:0] wD;
input  [8:0] rAddr;
input  [8:0] wAddr;
input  rClk;
input  wClk;
input  wEn;

    wire \R_DATA_TEMPR0[0] , \R_DATA_TEMPR1[0] , \R_DATA_TEMPR2[0] , 
        \R_DATA_TEMPR3[0] , \R_DATA_TEMPR4[0] , \R_DATA_TEMPR5[0] , 
        \R_DATA_TEMPR6[0] , \R_DATA_TEMPR7[0] , \R_DATA_TEMPR0[1] , 
        \R_DATA_TEMPR1[1] , \R_DATA_TEMPR2[1] , \R_DATA_TEMPR3[1] , 
        \R_DATA_TEMPR4[1] , \R_DATA_TEMPR5[1] , \R_DATA_TEMPR6[1] , 
        \R_DATA_TEMPR7[1] , \R_DATA_TEMPR0[2] , \R_DATA_TEMPR1[2] , 
        \R_DATA_TEMPR2[2] , \R_DATA_TEMPR3[2] , \R_DATA_TEMPR4[2] , 
        \R_DATA_TEMPR5[2] , \R_DATA_TEMPR6[2] , \R_DATA_TEMPR7[2] , 
        \R_DATA_TEMPR0[3] , \R_DATA_TEMPR1[3] , \R_DATA_TEMPR2[3] , 
        \R_DATA_TEMPR3[3] , \R_DATA_TEMPR4[3] , \R_DATA_TEMPR5[3] , 
        \R_DATA_TEMPR6[3] , \R_DATA_TEMPR7[3] , \R_DATA_TEMPR0[4] , 
        \R_DATA_TEMPR1[4] , \R_DATA_TEMPR2[4] , \R_DATA_TEMPR3[4] , 
        \R_DATA_TEMPR4[4] , \R_DATA_TEMPR5[4] , \R_DATA_TEMPR6[4] , 
        \R_DATA_TEMPR7[4] , \R_DATA_TEMPR0[5] , \R_DATA_TEMPR1[5] , 
        \R_DATA_TEMPR2[5] , \R_DATA_TEMPR3[5] , \R_DATA_TEMPR4[5] , 
        \R_DATA_TEMPR5[5] , \R_DATA_TEMPR6[5] , \R_DATA_TEMPR7[5] , 
        \R_DATA_TEMPR0[6] , \R_DATA_TEMPR1[6] , \R_DATA_TEMPR2[6] , 
        \R_DATA_TEMPR3[6] , \R_DATA_TEMPR4[6] , \R_DATA_TEMPR5[6] , 
        \R_DATA_TEMPR6[6] , \R_DATA_TEMPR7[6] , \R_DATA_TEMPR0[7] , 
        \R_DATA_TEMPR1[7] , \R_DATA_TEMPR2[7] , \R_DATA_TEMPR3[7] , 
        \R_DATA_TEMPR4[7] , \R_DATA_TEMPR5[7] , \R_DATA_TEMPR6[7] , 
        \R_DATA_TEMPR7[7] , \R_DATA_TEMPR0[8] , \R_DATA_TEMPR1[8] , 
        \R_DATA_TEMPR2[8] , \R_DATA_TEMPR3[8] , \R_DATA_TEMPR4[8] , 
        \R_DATA_TEMPR5[8] , \R_DATA_TEMPR6[8] , \R_DATA_TEMPR7[8] , 
        \R_DATA_TEMPR0[9] , \R_DATA_TEMPR1[9] , \R_DATA_TEMPR2[9] , 
        \R_DATA_TEMPR3[9] , \R_DATA_TEMPR4[9] , \R_DATA_TEMPR5[9] , 
        \R_DATA_TEMPR6[9] , \R_DATA_TEMPR7[9] , \R_DATA_TEMPR0[10] , 
        \R_DATA_TEMPR1[10] , \R_DATA_TEMPR2[10] , \R_DATA_TEMPR3[10] , 
        \R_DATA_TEMPR4[10] , \R_DATA_TEMPR5[10] , \R_DATA_TEMPR6[10] , 
        \R_DATA_TEMPR7[10] , \R_DATA_TEMPR0[11] , \R_DATA_TEMPR1[11] , 
        \R_DATA_TEMPR2[11] , \R_DATA_TEMPR3[11] , \R_DATA_TEMPR4[11] , 
        \R_DATA_TEMPR5[11] , \R_DATA_TEMPR6[11] , \R_DATA_TEMPR7[11] , 
        \R_DATA_TEMPR0[12] , \R_DATA_TEMPR1[12] , \R_DATA_TEMPR2[12] , 
        \R_DATA_TEMPR3[12] , \R_DATA_TEMPR4[12] , \R_DATA_TEMPR5[12] , 
        \R_DATA_TEMPR6[12] , \R_DATA_TEMPR7[12] , \R_DATA_TEMPR0[13] , 
        \R_DATA_TEMPR1[13] , \R_DATA_TEMPR2[13] , \R_DATA_TEMPR3[13] , 
        \R_DATA_TEMPR4[13] , \R_DATA_TEMPR5[13] , \R_DATA_TEMPR6[13] , 
        \R_DATA_TEMPR7[13] , \R_DATA_TEMPR0[14] , \R_DATA_TEMPR1[14] , 
        \R_DATA_TEMPR2[14] , \R_DATA_TEMPR3[14] , \R_DATA_TEMPR4[14] , 
        \R_DATA_TEMPR5[14] , \R_DATA_TEMPR6[14] , \R_DATA_TEMPR7[14] , 
        \R_DATA_TEMPR0[15] , \R_DATA_TEMPR1[15] , \R_DATA_TEMPR2[15] , 
        \R_DATA_TEMPR3[15] , \R_DATA_TEMPR4[15] , \R_DATA_TEMPR5[15] , 
        \R_DATA_TEMPR6[15] , \R_DATA_TEMPR7[15] , \R_DATA_TEMPR0[16] , 
        \R_DATA_TEMPR1[16] , \R_DATA_TEMPR2[16] , \R_DATA_TEMPR3[16] , 
        \R_DATA_TEMPR4[16] , \R_DATA_TEMPR5[16] , \R_DATA_TEMPR6[16] , 
        \R_DATA_TEMPR7[16] , \R_DATA_TEMPR0[17] , \R_DATA_TEMPR1[17] , 
        \R_DATA_TEMPR2[17] , \R_DATA_TEMPR3[17] , \R_DATA_TEMPR4[17] , 
        \R_DATA_TEMPR5[17] , \R_DATA_TEMPR6[17] , \R_DATA_TEMPR7[17] , 
        \R_DATA_TEMPR0[18] , \R_DATA_TEMPR1[18] , \R_DATA_TEMPR2[18] , 
        \R_DATA_TEMPR3[18] , \R_DATA_TEMPR4[18] , \R_DATA_TEMPR5[18] , 
        \R_DATA_TEMPR6[18] , \R_DATA_TEMPR7[18] , \R_DATA_TEMPR0[19] , 
        \R_DATA_TEMPR1[19] , \R_DATA_TEMPR2[19] , \R_DATA_TEMPR3[19] , 
        \R_DATA_TEMPR4[19] , \R_DATA_TEMPR5[19] , \R_DATA_TEMPR6[19] , 
        \R_DATA_TEMPR7[19] , \R_DATA_TEMPR0[20] , \R_DATA_TEMPR1[20] , 
        \R_DATA_TEMPR2[20] , \R_DATA_TEMPR3[20] , \R_DATA_TEMPR4[20] , 
        \R_DATA_TEMPR5[20] , \R_DATA_TEMPR6[20] , \R_DATA_TEMPR7[20] , 
        \R_DATA_TEMPR0[21] , \R_DATA_TEMPR1[21] , \R_DATA_TEMPR2[21] , 
        \R_DATA_TEMPR3[21] , \R_DATA_TEMPR4[21] , \R_DATA_TEMPR5[21] , 
        \R_DATA_TEMPR6[21] , \R_DATA_TEMPR7[21] , \R_DATA_TEMPR0[22] , 
        \R_DATA_TEMPR1[22] , \R_DATA_TEMPR2[22] , \R_DATA_TEMPR3[22] , 
        \R_DATA_TEMPR4[22] , \R_DATA_TEMPR5[22] , \R_DATA_TEMPR6[22] , 
        \R_DATA_TEMPR7[22] , \R_DATA_TEMPR0[23] , \R_DATA_TEMPR1[23] , 
        \R_DATA_TEMPR2[23] , \R_DATA_TEMPR3[23] , \R_DATA_TEMPR4[23] , 
        \R_DATA_TEMPR5[23] , \R_DATA_TEMPR6[23] , \R_DATA_TEMPR7[23] , 
        \R_DATA_TEMPR0[24] , \R_DATA_TEMPR1[24] , \R_DATA_TEMPR2[24] , 
        \R_DATA_TEMPR3[24] , \R_DATA_TEMPR4[24] , \R_DATA_TEMPR5[24] , 
        \R_DATA_TEMPR6[24] , \R_DATA_TEMPR7[24] , \R_DATA_TEMPR0[25] , 
        \R_DATA_TEMPR1[25] , \R_DATA_TEMPR2[25] , \R_DATA_TEMPR3[25] , 
        \R_DATA_TEMPR4[25] , \R_DATA_TEMPR5[25] , \R_DATA_TEMPR6[25] , 
        \R_DATA_TEMPR7[25] , \R_DATA_TEMPR0[26] , \R_DATA_TEMPR1[26] , 
        \R_DATA_TEMPR2[26] , \R_DATA_TEMPR3[26] , \R_DATA_TEMPR4[26] , 
        \R_DATA_TEMPR5[26] , \R_DATA_TEMPR6[26] , \R_DATA_TEMPR7[26] , 
        \R_DATA_TEMPR0[27] , \R_DATA_TEMPR1[27] , \R_DATA_TEMPR2[27] , 
        \R_DATA_TEMPR3[27] , \R_DATA_TEMPR4[27] , \R_DATA_TEMPR5[27] , 
        \R_DATA_TEMPR6[27] , \R_DATA_TEMPR7[27] , \R_DATA_TEMPR0[28] , 
        \R_DATA_TEMPR1[28] , \R_DATA_TEMPR2[28] , \R_DATA_TEMPR3[28] , 
        \R_DATA_TEMPR4[28] , \R_DATA_TEMPR5[28] , \R_DATA_TEMPR6[28] , 
        \R_DATA_TEMPR7[28] , \R_DATA_TEMPR0[29] , \R_DATA_TEMPR1[29] , 
        \R_DATA_TEMPR2[29] , \R_DATA_TEMPR3[29] , \R_DATA_TEMPR4[29] , 
        \R_DATA_TEMPR5[29] , \R_DATA_TEMPR6[29] , \R_DATA_TEMPR7[29] , 
        \R_DATA_TEMPR0[30] , \R_DATA_TEMPR1[30] , \R_DATA_TEMPR2[30] , 
        \R_DATA_TEMPR3[30] , \R_DATA_TEMPR4[30] , \R_DATA_TEMPR5[30] , 
        \R_DATA_TEMPR6[30] , \R_DATA_TEMPR7[30] , \R_DATA_TEMPR0[31] , 
        \R_DATA_TEMPR1[31] , \R_DATA_TEMPR2[31] , \R_DATA_TEMPR3[31] , 
        \R_DATA_TEMPR4[31] , \R_DATA_TEMPR5[31] , \R_DATA_TEMPR6[31] , 
        \R_DATA_TEMPR7[31] , \R_DATA_TEMPR0[32] , \R_DATA_TEMPR1[32] , 
        \R_DATA_TEMPR2[32] , \R_DATA_TEMPR3[32] , \R_DATA_TEMPR4[32] , 
        \R_DATA_TEMPR5[32] , \R_DATA_TEMPR6[32] , \R_DATA_TEMPR7[32] , 
        \R_DATA_TEMPR0[33] , \R_DATA_TEMPR1[33] , \R_DATA_TEMPR2[33] , 
        \R_DATA_TEMPR3[33] , \R_DATA_TEMPR4[33] , \R_DATA_TEMPR5[33] , 
        \R_DATA_TEMPR6[33] , \R_DATA_TEMPR7[33] , \R_DATA_TEMPR0[34] , 
        \R_DATA_TEMPR1[34] , \R_DATA_TEMPR2[34] , \R_DATA_TEMPR3[34] , 
        \R_DATA_TEMPR4[34] , \R_DATA_TEMPR5[34] , \R_DATA_TEMPR6[34] , 
        \R_DATA_TEMPR7[34] , \R_DATA_TEMPR0[35] , \R_DATA_TEMPR1[35] , 
        \R_DATA_TEMPR2[35] , \R_DATA_TEMPR3[35] , \R_DATA_TEMPR4[35] , 
        \R_DATA_TEMPR5[35] , \R_DATA_TEMPR6[35] , \R_DATA_TEMPR7[35] , 
        \R_DATA_TEMPR0[36] , \R_DATA_TEMPR1[36] , \R_DATA_TEMPR2[36] , 
        \R_DATA_TEMPR3[36] , \R_DATA_TEMPR4[36] , \R_DATA_TEMPR5[36] , 
        \R_DATA_TEMPR6[36] , \R_DATA_TEMPR7[36] , \R_DATA_TEMPR0[37] , 
        \R_DATA_TEMPR1[37] , \R_DATA_TEMPR2[37] , \R_DATA_TEMPR3[37] , 
        \R_DATA_TEMPR4[37] , \R_DATA_TEMPR5[37] , \R_DATA_TEMPR6[37] , 
        \R_DATA_TEMPR7[37] , \R_DATA_TEMPR0[38] , \R_DATA_TEMPR1[38] , 
        \R_DATA_TEMPR2[38] , \R_DATA_TEMPR3[38] , \R_DATA_TEMPR4[38] , 
        \R_DATA_TEMPR5[38] , \R_DATA_TEMPR6[38] , \R_DATA_TEMPR7[38] , 
        \R_DATA_TEMPR0[39] , \R_DATA_TEMPR1[39] , \R_DATA_TEMPR2[39] , 
        \R_DATA_TEMPR3[39] , \R_DATA_TEMPR4[39] , \R_DATA_TEMPR5[39] , 
        \R_DATA_TEMPR6[39] , \R_DATA_TEMPR7[39] , \R_DATA_TEMPR0[40] , 
        \R_DATA_TEMPR1[40] , \R_DATA_TEMPR2[40] , \R_DATA_TEMPR3[40] , 
        \R_DATA_TEMPR4[40] , \R_DATA_TEMPR5[40] , \R_DATA_TEMPR6[40] , 
        \R_DATA_TEMPR7[40] , \R_DATA_TEMPR0[41] , \R_DATA_TEMPR1[41] , 
        \R_DATA_TEMPR2[41] , \R_DATA_TEMPR3[41] , \R_DATA_TEMPR4[41] , 
        \R_DATA_TEMPR5[41] , \R_DATA_TEMPR6[41] , \R_DATA_TEMPR7[41] , 
        \R_DATA_TEMPR0[42] , \R_DATA_TEMPR1[42] , \R_DATA_TEMPR2[42] , 
        \R_DATA_TEMPR3[42] , \R_DATA_TEMPR4[42] , \R_DATA_TEMPR5[42] , 
        \R_DATA_TEMPR6[42] , \R_DATA_TEMPR7[42] , \R_DATA_TEMPR0[43] , 
        \R_DATA_TEMPR1[43] , \R_DATA_TEMPR2[43] , \R_DATA_TEMPR3[43] , 
        \R_DATA_TEMPR4[43] , \R_DATA_TEMPR5[43] , \R_DATA_TEMPR6[43] , 
        \R_DATA_TEMPR7[43] , \R_DATA_TEMPR0[44] , \R_DATA_TEMPR1[44] , 
        \R_DATA_TEMPR2[44] , \R_DATA_TEMPR3[44] , \R_DATA_TEMPR4[44] , 
        \R_DATA_TEMPR5[44] , \R_DATA_TEMPR6[44] , \R_DATA_TEMPR7[44] , 
        \R_DATA_TEMPR0[45] , \R_DATA_TEMPR1[45] , \R_DATA_TEMPR2[45] , 
        \R_DATA_TEMPR3[45] , \R_DATA_TEMPR4[45] , \R_DATA_TEMPR5[45] , 
        \R_DATA_TEMPR6[45] , \R_DATA_TEMPR7[45] , \R_DATA_TEMPR0[46] , 
        \R_DATA_TEMPR1[46] , \R_DATA_TEMPR2[46] , \R_DATA_TEMPR3[46] , 
        \R_DATA_TEMPR4[46] , \R_DATA_TEMPR5[46] , \R_DATA_TEMPR6[46] , 
        \R_DATA_TEMPR7[46] , \R_DATA_TEMPR0[47] , \R_DATA_TEMPR1[47] , 
        \R_DATA_TEMPR2[47] , \R_DATA_TEMPR3[47] , \R_DATA_TEMPR4[47] , 
        \R_DATA_TEMPR5[47] , \R_DATA_TEMPR6[47] , \R_DATA_TEMPR7[47] , 
        \R_DATA_TEMPR0[48] , \R_DATA_TEMPR1[48] , \R_DATA_TEMPR2[48] , 
        \R_DATA_TEMPR3[48] , \R_DATA_TEMPR4[48] , \R_DATA_TEMPR5[48] , 
        \R_DATA_TEMPR6[48] , \R_DATA_TEMPR7[48] , \R_DATA_TEMPR0[49] , 
        \R_DATA_TEMPR1[49] , \R_DATA_TEMPR2[49] , \R_DATA_TEMPR3[49] , 
        \R_DATA_TEMPR4[49] , \R_DATA_TEMPR5[49] , \R_DATA_TEMPR6[49] , 
        \R_DATA_TEMPR7[49] , \R_DATA_TEMPR0[50] , \R_DATA_TEMPR1[50] , 
        \R_DATA_TEMPR2[50] , \R_DATA_TEMPR3[50] , \R_DATA_TEMPR4[50] , 
        \R_DATA_TEMPR5[50] , \R_DATA_TEMPR6[50] , \R_DATA_TEMPR7[50] , 
        \R_DATA_TEMPR0[51] , \R_DATA_TEMPR1[51] , \R_DATA_TEMPR2[51] , 
        \R_DATA_TEMPR3[51] , \R_DATA_TEMPR4[51] , \R_DATA_TEMPR5[51] , 
        \R_DATA_TEMPR6[51] , \R_DATA_TEMPR7[51] , \R_DATA_TEMPR0[52] , 
        \R_DATA_TEMPR1[52] , \R_DATA_TEMPR2[52] , \R_DATA_TEMPR3[52] , 
        \R_DATA_TEMPR4[52] , \R_DATA_TEMPR5[52] , \R_DATA_TEMPR6[52] , 
        \R_DATA_TEMPR7[52] , \R_DATA_TEMPR0[53] , \R_DATA_TEMPR1[53] , 
        \R_DATA_TEMPR2[53] , \R_DATA_TEMPR3[53] , \R_DATA_TEMPR4[53] , 
        \R_DATA_TEMPR5[53] , \R_DATA_TEMPR6[53] , \R_DATA_TEMPR7[53] , 
        \R_DATA_TEMPR0[54] , \R_DATA_TEMPR1[54] , \R_DATA_TEMPR2[54] , 
        \R_DATA_TEMPR3[54] , \R_DATA_TEMPR4[54] , \R_DATA_TEMPR5[54] , 
        \R_DATA_TEMPR6[54] , \R_DATA_TEMPR7[54] , \R_DATA_TEMPR0[55] , 
        \R_DATA_TEMPR1[55] , \R_DATA_TEMPR2[55] , \R_DATA_TEMPR3[55] , 
        \R_DATA_TEMPR4[55] , \R_DATA_TEMPR5[55] , \R_DATA_TEMPR6[55] , 
        \R_DATA_TEMPR7[55] , \R_DATA_TEMPR0[56] , \R_DATA_TEMPR1[56] , 
        \R_DATA_TEMPR2[56] , \R_DATA_TEMPR3[56] , \R_DATA_TEMPR4[56] , 
        \R_DATA_TEMPR5[56] , \R_DATA_TEMPR6[56] , \R_DATA_TEMPR7[56] , 
        \R_DATA_TEMPR0[57] , \R_DATA_TEMPR1[57] , \R_DATA_TEMPR2[57] , 
        \R_DATA_TEMPR3[57] , \R_DATA_TEMPR4[57] , \R_DATA_TEMPR5[57] , 
        \R_DATA_TEMPR6[57] , \R_DATA_TEMPR7[57] , \R_DATA_TEMPR0[58] , 
        \R_DATA_TEMPR1[58] , \R_DATA_TEMPR2[58] , \R_DATA_TEMPR3[58] , 
        \R_DATA_TEMPR4[58] , \R_DATA_TEMPR5[58] , \R_DATA_TEMPR6[58] , 
        \R_DATA_TEMPR7[58] , \R_DATA_TEMPR0[59] , \R_DATA_TEMPR1[59] , 
        \R_DATA_TEMPR2[59] , \R_DATA_TEMPR3[59] , \R_DATA_TEMPR4[59] , 
        \R_DATA_TEMPR5[59] , \R_DATA_TEMPR6[59] , \R_DATA_TEMPR7[59] , 
        \R_DATA_TEMPR0[60] , \R_DATA_TEMPR1[60] , \R_DATA_TEMPR2[60] , 
        \R_DATA_TEMPR3[60] , \R_DATA_TEMPR4[60] , \R_DATA_TEMPR5[60] , 
        \R_DATA_TEMPR6[60] , \R_DATA_TEMPR7[60] , \R_DATA_TEMPR0[61] , 
        \R_DATA_TEMPR1[61] , \R_DATA_TEMPR2[61] , \R_DATA_TEMPR3[61] , 
        \R_DATA_TEMPR4[61] , \R_DATA_TEMPR5[61] , \R_DATA_TEMPR6[61] , 
        \R_DATA_TEMPR7[61] , \R_DATA_TEMPR0[62] , \R_DATA_TEMPR1[62] , 
        \R_DATA_TEMPR2[62] , \R_DATA_TEMPR3[62] , \R_DATA_TEMPR4[62] , 
        \R_DATA_TEMPR5[62] , \R_DATA_TEMPR6[62] , \R_DATA_TEMPR7[62] , 
        \R_DATA_TEMPR0[63] , \R_DATA_TEMPR1[63] , \R_DATA_TEMPR2[63] , 
        \R_DATA_TEMPR3[63] , \R_DATA_TEMPR4[63] , \R_DATA_TEMPR5[63] , 
        \R_DATA_TEMPR6[63] , \R_DATA_TEMPR7[63] , \BLKX0[0] , 
        \BLKX0[1] , \BLKX0[2] , \BLKX0[3] , \BLKX0[4] , \BLKX0[5] , 
        \BLKX0[6] , \BLKX0[7] , \BLKZ0[0] , \BLKZ0[1] , \BLKZ0[2] , 
        \BLKZ0[3] , \BLKZ0[4] , \BLKZ0[5] , \BLKZ0[6] , \BLKZ0[7] , 
        \ACCESS_BUSY[0][0] , \ACCESS_BUSY[0][1] , \ACCESS_BUSY[0][2] , 
        \ACCESS_BUSY[0][3] , \ACCESS_BUSY[0][4] , \ACCESS_BUSY[0][5] , 
        \ACCESS_BUSY[1][0] , \ACCESS_BUSY[1][1] , \ACCESS_BUSY[1][2] , 
        \ACCESS_BUSY[1][3] , \ACCESS_BUSY[1][4] , \ACCESS_BUSY[1][5] , 
        \ACCESS_BUSY[2][0] , \ACCESS_BUSY[2][1] , \ACCESS_BUSY[2][2] , 
        \ACCESS_BUSY[2][3] , \ACCESS_BUSY[2][4] , \ACCESS_BUSY[2][5] , 
        \ACCESS_BUSY[3][0] , \ACCESS_BUSY[3][1] , \ACCESS_BUSY[3][2] , 
        \ACCESS_BUSY[3][3] , \ACCESS_BUSY[3][4] , \ACCESS_BUSY[3][5] , 
        \ACCESS_BUSY[4][0] , \ACCESS_BUSY[4][1] , \ACCESS_BUSY[4][2] , 
        \ACCESS_BUSY[4][3] , \ACCESS_BUSY[4][4] , \ACCESS_BUSY[4][5] , 
        \ACCESS_BUSY[5][0] , \ACCESS_BUSY[5][1] , \ACCESS_BUSY[5][2] , 
        \ACCESS_BUSY[5][3] , \ACCESS_BUSY[5][4] , \ACCESS_BUSY[5][5] , 
        \ACCESS_BUSY[6][0] , \ACCESS_BUSY[6][1] , \ACCESS_BUSY[6][2] , 
        \ACCESS_BUSY[6][3] , \ACCESS_BUSY[6][4] , \ACCESS_BUSY[6][5] , 
        \ACCESS_BUSY[7][0] , \ACCESS_BUSY[7][1] , \ACCESS_BUSY[7][2] , 
        \ACCESS_BUSY[7][3] , \ACCESS_BUSY[7][4] , \ACCESS_BUSY[7][5] , 
        OR4_49_Y, OR2_14_Y, OR4_41_Y, OR2_39_Y, OR4_45_Y, OR2_34_Y, 
        OR4_62_Y, OR2_55_Y, OR4_20_Y, OR2_59_Y, OR4_2_Y, OR2_20_Y, 
        OR4_37_Y, OR2_17_Y, OR4_21_Y, OR2_40_Y, OR4_63_Y, OR2_44_Y, 
        OR4_43_Y, OR2_15_Y, OR4_0_Y, OR2_1_Y, OR4_28_Y, OR2_52_Y, 
        OR4_55_Y, OR2_26_Y, OR4_36_Y, OR2_36_Y, OR4_16_Y, OR2_45_Y, 
        OR4_12_Y, OR2_3_Y, OR4_38_Y, OR2_54_Y, CFG2_7_Y, CFG2_1_Y, 
        CFG2_5_Y, CFG2_4_Y, OR4_13_Y, OR2_7_Y, OR4_35_Y, OR2_63_Y, 
        OR4_10_Y, OR2_61_Y, OR4_18_Y, OR2_57_Y, OR4_32_Y, OR2_33_Y, 
        OR4_59_Y, OR2_22_Y, OR4_50_Y, OR2_10_Y, OR4_24_Y, OR2_53_Y, 
        OR4_26_Y, OR2_23_Y, OR4_54_Y, OR2_5_Y, OR4_60_Y, OR2_11_Y, 
        OR4_4_Y, OR2_30_Y, OR4_3_Y, OR2_21_Y, OR4_27_Y, OR2_43_Y, 
        OR4_52_Y, OR2_24_Y, OR4_8_Y, OR2_46_Y, OR4_5_Y, OR2_48_Y, 
        OR4_1_Y, OR2_60_Y, OR4_29_Y, OR2_47_Y, OR4_23_Y, OR2_32_Y, 
        OR4_56_Y, OR2_18_Y, OR4_42_Y, OR2_2_Y, OR4_14_Y, OR2_4_Y, 
        OR4_39_Y, OR2_56_Y, OR4_33_Y, OR2_31_Y, OR4_61_Y, OR2_16_Y, 
        OR4_51_Y, OR2_13_Y, OR4_40_Y, OR2_38_Y, OR4_15_Y, OR2_35_Y, 
        OR4_22_Y, OR2_50_Y, OR4_7_Y, OR2_37_Y, OR4_19_Y, OR2_58_Y, 
        OR4_57_Y, OR2_49_Y, OR4_31_Y, OR2_12_Y, OR4_53_Y, OR2_25_Y, 
        CFG2_3_Y, CFG2_6_Y, CFG2_2_Y, CFG2_0_Y, OR4_47_Y, OR2_0_Y, 
        OR4_48_Y, OR2_9_Y, OR4_44_Y, OR2_8_Y, OR4_11_Y, OR2_6_Y, 
        OR4_34_Y, OR2_62_Y, OR4_58_Y, OR2_19_Y, OR4_46_Y, OR2_28_Y, 
        OR4_30_Y, OR2_29_Y, OR4_17_Y, OR2_42_Y, OR4_6_Y, OR2_41_Y, 
        OR4_9_Y, OR2_51_Y, OR4_25_Y, OR2_27_Y, VCC, GND, ADLIB_VCC;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign ADLIB_VCC = VCC_power_net1;
    
    OR4 OR4_31 (.A(\R_DATA_TEMPR0[32] ), .B(\R_DATA_TEMPR1[32] ), .C(
        \R_DATA_TEMPR2[32] ), .D(\R_DATA_TEMPR3[32] ), .Y(OR4_31_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%4%5%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R4C5 (.BLK_EN(\BLKX0[4] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, GND, GND, wD[63], wD[62], wD[61], wD[60], 
        wD[59], wD[58], wD[57], wD[56], wD[55]}), .W_EN(\BLKZ0[4] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[4][5] ), .R_DATA({nc0, nc1, nc2, 
        \R_DATA_TEMPR4[63] , \R_DATA_TEMPR4[62] , \R_DATA_TEMPR4[61] , 
        \R_DATA_TEMPR4[60] , \R_DATA_TEMPR4[59] , \R_DATA_TEMPR4[58] , 
        \R_DATA_TEMPR4[57] , \R_DATA_TEMPR4[56] , \R_DATA_TEMPR4[55] })
        );
    OR2 OR2_37 (.A(\R_DATA_TEMPR4[37] ), .B(\R_DATA_TEMPR5[37] ), .Y(
        OR2_37_Y));
    OR4 OR4_14 (.A(\R_DATA_TEMPR0[29] ), .B(\R_DATA_TEMPR1[29] ), .C(
        \R_DATA_TEMPR2[29] ), .D(\R_DATA_TEMPR3[29] ), .Y(OR4_14_Y));
    OR4 \OR4_rD[26]  (.A(OR4_3_Y), .B(OR2_21_Y), .C(
        \R_DATA_TEMPR6[26] ), .D(\R_DATA_TEMPR7[26] ), .Y(rD[26]));
    OR2 OR2_55 (.A(\R_DATA_TEMPR4[41] ), .B(\R_DATA_TEMPR5[41] ), .Y(
        OR2_55_Y));
    OR4 \OR4_rD[46]  (.A(OR4_27_Y), .B(OR2_43_Y), .C(
        \R_DATA_TEMPR6[46] ), .D(\R_DATA_TEMPR7[46] ), .Y(rD[46]));
    OR2 OR2_44 (.A(\R_DATA_TEMPR4[0] ), .B(\R_DATA_TEMPR5[0] ), .Y(
        OR2_44_Y));
    OR4 \OR4_rD[32]  (.A(OR4_31_Y), .B(OR2_12_Y), .C(
        \R_DATA_TEMPR6[32] ), .D(\R_DATA_TEMPR7[32] ), .Y(rD[32]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%3%4%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R3C4 (.BLK_EN(\BLKX0[3] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[54], wD[53], wD[52], wD[51], wD[50], 
        wD[49], wD[48], wD[47], wD[46], wD[45], wD[44]}), .W_EN(
        \BLKZ0[3] ), .ACCESS_BUSY(\ACCESS_BUSY[3][4] ), .R_DATA({nc3, 
        \R_DATA_TEMPR3[54] , \R_DATA_TEMPR3[53] , \R_DATA_TEMPR3[52] , 
        \R_DATA_TEMPR3[51] , \R_DATA_TEMPR3[50] , \R_DATA_TEMPR3[49] , 
        \R_DATA_TEMPR3[48] , \R_DATA_TEMPR3[47] , \R_DATA_TEMPR3[46] , 
        \R_DATA_TEMPR3[45] , \R_DATA_TEMPR3[44] }));
    OR4 OR4_56 (.A(\R_DATA_TEMPR0[17] ), .B(\R_DATA_TEMPR1[17] ), .C(
        \R_DATA_TEMPR2[17] ), .D(\R_DATA_TEMPR3[17] ), .Y(OR4_56_Y));
    OR2 OR2_51 (.A(\R_DATA_TEMPR4[52] ), .B(\R_DATA_TEMPR5[52] ), .Y(
        OR2_51_Y));
    OR4 \OR4_rD[34]  (.A(OR4_49_Y), .B(OR2_14_Y), .C(
        \R_DATA_TEMPR6[34] ), .D(\R_DATA_TEMPR7[34] ), .Y(rD[34]));
    OR4 \OR4_rD[19]  (.A(OR4_12_Y), .B(OR2_3_Y), .C(
        \R_DATA_TEMPR6[19] ), .D(\R_DATA_TEMPR7[19] ), .Y(rD[19]));
    OR2 OR2_23 (.A(\R_DATA_TEMPR4[39] ), .B(\R_DATA_TEMPR5[39] ), .Y(
        OR2_23_Y));
    CFG2 #( .INIT(4'h2) )  CFG2_5 (.A(rAddr[7]), .B(rAddr[6]), .Y(
        CFG2_5_Y));
    OR4 OR4_0 (.A(\R_DATA_TEMPR0[55] ), .B(\R_DATA_TEMPR1[55] ), .C(
        \R_DATA_TEMPR2[55] ), .D(\R_DATA_TEMPR3[55] ), .Y(OR4_0_Y));
    OR4 OR4_60 (.A(\R_DATA_TEMPR0[56] ), .B(\R_DATA_TEMPR1[56] ), .C(
        \R_DATA_TEMPR2[56] ), .D(\R_DATA_TEMPR3[56] ), .Y(OR4_60_Y));
    OR4 OR4_10 (.A(\R_DATA_TEMPR0[9] ), .B(\R_DATA_TEMPR1[9] ), .C(
        \R_DATA_TEMPR2[9] ), .D(\R_DATA_TEMPR3[9] ), .Y(OR4_10_Y));
    OR4 \OR4_rD[7]  (.A(OR4_47_Y), .B(OR2_0_Y), .C(\R_DATA_TEMPR6[7] ), 
        .D(\R_DATA_TEMPR7[7] ), .Y(rD[7]));
    OR2 OR2_2 (.A(\R_DATA_TEMPR4[50] ), .B(\R_DATA_TEMPR5[50] ), .Y(
        OR2_2_Y));
    OR4 OR4_25 (.A(\R_DATA_TEMPR0[35] ), .B(\R_DATA_TEMPR1[35] ), .C(
        \R_DATA_TEMPR2[35] ), .D(\R_DATA_TEMPR3[35] ), .Y(OR4_25_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%1%3%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R1C3 (.BLK_EN(\BLKX0[1] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[43], wD[42], wD[41], wD[40], wD[39], 
        wD[38], wD[37], wD[36], wD[35], wD[34], wD[33]}), .W_EN(
        \BLKZ0[1] ), .ACCESS_BUSY(\ACCESS_BUSY[1][3] ), .R_DATA({nc4, 
        \R_DATA_TEMPR1[43] , \R_DATA_TEMPR1[42] , \R_DATA_TEMPR1[41] , 
        \R_DATA_TEMPR1[40] , \R_DATA_TEMPR1[39] , \R_DATA_TEMPR1[38] , 
        \R_DATA_TEMPR1[37] , \R_DATA_TEMPR1[36] , \R_DATA_TEMPR1[35] , 
        \R_DATA_TEMPR1[34] , \R_DATA_TEMPR1[33] }));
    OR2 OR2_40 (.A(\R_DATA_TEMPR4[36] ), .B(\R_DATA_TEMPR5[36] ), .Y(
        OR2_40_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%5%2%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R5C2 (.BLK_EN(\BLKX0[5] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[32], wD[31], wD[30], wD[29], wD[28], 
        wD[27], wD[26], wD[25], wD[24], wD[23], wD[22]}), .W_EN(
        \BLKZ0[5] ), .ACCESS_BUSY(\ACCESS_BUSY[5][2] ), .R_DATA({nc5, 
        \R_DATA_TEMPR5[32] , \R_DATA_TEMPR5[31] , \R_DATA_TEMPR5[30] , 
        \R_DATA_TEMPR5[29] , \R_DATA_TEMPR5[28] , \R_DATA_TEMPR5[27] , 
        \R_DATA_TEMPR5[26] , \R_DATA_TEMPR5[25] , \R_DATA_TEMPR5[24] , 
        \R_DATA_TEMPR5[23] , \R_DATA_TEMPR5[22] }));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%7%1%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R7C1 (.BLK_EN(\BLKX0[7] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[21], wD[20], wD[19], wD[18], wD[17], 
        wD[16], wD[15], wD[14], wD[13], wD[12], wD[11]}), .W_EN(
        \BLKZ0[7] ), .ACCESS_BUSY(\ACCESS_BUSY[7][1] ), .R_DATA({nc6, 
        \R_DATA_TEMPR7[21] , \R_DATA_TEMPR7[20] , \R_DATA_TEMPR7[19] , 
        \R_DATA_TEMPR7[18] , \R_DATA_TEMPR7[17] , \R_DATA_TEMPR7[16] , 
        \R_DATA_TEMPR7[15] , \R_DATA_TEMPR7[14] , \R_DATA_TEMPR7[13] , 
        \R_DATA_TEMPR7[12] , \R_DATA_TEMPR7[11] }));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%4%2%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R4C2 (.BLK_EN(\BLKX0[4] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[32], wD[31], wD[30], wD[29], wD[28], 
        wD[27], wD[26], wD[25], wD[24], wD[23], wD[22]}), .W_EN(
        \BLKZ0[4] ), .ACCESS_BUSY(\ACCESS_BUSY[4][2] ), .R_DATA({nc7, 
        \R_DATA_TEMPR4[32] , \R_DATA_TEMPR4[31] , \R_DATA_TEMPR4[30] , 
        \R_DATA_TEMPR4[29] , \R_DATA_TEMPR4[28] , \R_DATA_TEMPR4[27] , 
        \R_DATA_TEMPR4[26] , \R_DATA_TEMPR4[25] , \R_DATA_TEMPR4[24] , 
        \R_DATA_TEMPR4[23] , \R_DATA_TEMPR4[22] }));
    OR4 OR4_21 (.A(\R_DATA_TEMPR0[36] ), .B(\R_DATA_TEMPR1[36] ), .C(
        \R_DATA_TEMPR2[36] ), .D(\R_DATA_TEMPR3[36] ), .Y(OR4_21_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%3%5%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R3C5 (.BLK_EN(\BLKX0[3] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, GND, GND, wD[63], wD[62], wD[61], wD[60], 
        wD[59], wD[58], wD[57], wD[56], wD[55]}), .W_EN(\BLKZ0[3] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[3][5] ), .R_DATA({nc8, nc9, nc10, 
        \R_DATA_TEMPR3[63] , \R_DATA_TEMPR3[62] , \R_DATA_TEMPR3[61] , 
        \R_DATA_TEMPR3[60] , \R_DATA_TEMPR3[59] , \R_DATA_TEMPR3[58] , 
        \R_DATA_TEMPR3[57] , \R_DATA_TEMPR3[56] , \R_DATA_TEMPR3[55] })
        );
    OR4 OR4_46 (.A(\R_DATA_TEMPR0[1] ), .B(\R_DATA_TEMPR1[1] ), .C(
        \R_DATA_TEMPR2[1] ), .D(\R_DATA_TEMPR3[1] ), .Y(OR4_46_Y));
    CFG2 #( .INIT(4'h1) )  CFG2_3 (.A(wAddr[7]), .B(wAddr[6]), .Y(
        CFG2_3_Y));
    OR2 OR2_15 (.A(\R_DATA_TEMPR4[53] ), .B(\R_DATA_TEMPR5[53] ), .Y(
        OR2_15_Y));
    CFG3 #( .INIT(8'h80) )  \CFG3_BLKX0[7]  (.A(CFG2_4_Y), .B(rAddr[8])
        , .C(VCC), .Y(\BLKX0[7] ));
    OR4 \OR4_rD[58]  (.A(OR4_29_Y), .B(OR2_47_Y), .C(
        \R_DATA_TEMPR6[58] ), .D(\R_DATA_TEMPR7[58] ), .Y(rD[58]));
    OR2 OR2_11 (.A(\R_DATA_TEMPR4[56] ), .B(\R_DATA_TEMPR5[56] ), .Y(
        OR2_11_Y));
    OR4 OR4_52 (.A(\R_DATA_TEMPR0[63] ), .B(\R_DATA_TEMPR1[63] ), .C(
        \R_DATA_TEMPR2[63] ), .D(\R_DATA_TEMPR3[63] ), .Y(OR4_52_Y));
    CFG3 #( .INIT(8'h20) )  \CFG3_BLKX0[3]  (.A(CFG2_4_Y), .B(rAddr[8])
        , .C(VCC), .Y(\BLKX0[3] ));
    OR4 OR4_63 (.A(\R_DATA_TEMPR0[0] ), .B(\R_DATA_TEMPR1[0] ), .C(
        \R_DATA_TEMPR2[0] ), .D(\R_DATA_TEMPR3[0] ), .Y(OR4_63_Y));
    OR2 OR2_28 (.A(\R_DATA_TEMPR4[1] ), .B(\R_DATA_TEMPR5[1] ), .Y(
        OR2_28_Y));
    OR4 OR4_13 (.A(\R_DATA_TEMPR0[25] ), .B(\R_DATA_TEMPR1[25] ), .C(
        \R_DATA_TEMPR2[25] ), .D(\R_DATA_TEMPR3[25] ), .Y(OR4_13_Y));
    OR4 \OR4_rD[17]  (.A(OR4_56_Y), .B(OR2_18_Y), .C(
        \R_DATA_TEMPR6[17] ), .D(\R_DATA_TEMPR7[17] ), .Y(rD[17]));
    OR4 OR4_57 (.A(\R_DATA_TEMPR0[31] ), .B(\R_DATA_TEMPR1[31] ), .C(
        \R_DATA_TEMPR2[31] ), .D(\R_DATA_TEMPR3[31] ), .Y(OR4_57_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%2%5%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R2C5 (.BLK_EN(\BLKX0[2] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, GND, GND, wD[63], wD[62], wD[61], wD[60], 
        wD[59], wD[58], wD[57], wD[56], wD[55]}), .W_EN(\BLKZ0[2] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[2][5] ), .R_DATA({nc11, nc12, nc13, 
        \R_DATA_TEMPR2[63] , \R_DATA_TEMPR2[62] , \R_DATA_TEMPR2[61] , 
        \R_DATA_TEMPR2[60] , \R_DATA_TEMPR2[59] , \R_DATA_TEMPR2[58] , 
        \R_DATA_TEMPR2[57] , \R_DATA_TEMPR2[56] , \R_DATA_TEMPR2[55] })
        );
    OR2 OR2_43 (.A(\R_DATA_TEMPR4[46] ), .B(\R_DATA_TEMPR5[46] ), .Y(
        OR2_43_Y));
    OR2 OR2_35 (.A(\R_DATA_TEMPR4[40] ), .B(\R_DATA_TEMPR5[40] ), .Y(
        OR2_35_Y));
    OR4 \OR4_rD[13]  (.A(OR4_53_Y), .B(OR2_25_Y), .C(
        \R_DATA_TEMPR6[13] ), .D(\R_DATA_TEMPR7[13] ), .Y(rD[13]));
    OR4 OR4_1 (.A(\R_DATA_TEMPR0[59] ), .B(\R_DATA_TEMPR1[59] ), .C(
        \R_DATA_TEMPR2[59] ), .D(\R_DATA_TEMPR3[59] ), .Y(OR4_1_Y));
    OR2 OR2_8 (.A(\R_DATA_TEMPR4[57] ), .B(\R_DATA_TEMPR5[57] ), .Y(
        OR2_8_Y));
    OR4 OR4_6 (.A(\R_DATA_TEMPR0[33] ), .B(\R_DATA_TEMPR1[33] ), .C(
        \R_DATA_TEMPR2[33] ), .D(\R_DATA_TEMPR3[33] ), .Y(OR4_6_Y));
    OR4 \OR4_rD[8]  (.A(OR4_23_Y), .B(OR2_32_Y), .C(\R_DATA_TEMPR6[8] )
        , .D(\R_DATA_TEMPR7[8] ), .Y(rD[8]));
    OR2 OR2_4 (.A(\R_DATA_TEMPR4[29] ), .B(\R_DATA_TEMPR5[29] ), .Y(
        OR2_4_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%7%5%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R7C5 (.BLK_EN(\BLKX0[7] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, GND, GND, wD[63], wD[62], wD[61], wD[60], 
        wD[59], wD[58], wD[57], wD[56], wD[55]}), .W_EN(\BLKZ0[7] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[7][5] ), .R_DATA({nc14, nc15, nc16, 
        \R_DATA_TEMPR7[63] , \R_DATA_TEMPR7[62] , \R_DATA_TEMPR7[61] , 
        \R_DATA_TEMPR7[60] , \R_DATA_TEMPR7[59] , \R_DATA_TEMPR7[58] , 
        \R_DATA_TEMPR7[57] , \R_DATA_TEMPR7[56] , \R_DATA_TEMPR7[55] })
        );
    OR2 OR2_31 (.A(\R_DATA_TEMPR4[49] ), .B(\R_DATA_TEMPR5[49] ), .Y(
        OR2_31_Y));
    OR4 \OR4_rD[63]  (.A(OR4_52_Y), .B(OR2_24_Y), .C(
        \R_DATA_TEMPR6[63] ), .D(\R_DATA_TEMPR7[63] ), .Y(rD[63]));
    CFG2 #( .INIT(4'h8) )  CFG2_0 (.A(wAddr[7]), .B(wAddr[6]), .Y(
        CFG2_0_Y));
    OR2 OR2_9 (.A(\R_DATA_TEMPR4[60] ), .B(\R_DATA_TEMPR5[60] ), .Y(
        OR2_9_Y));
    OR4 OR4_42 (.A(\R_DATA_TEMPR0[50] ), .B(\R_DATA_TEMPR1[50] ), .C(
        \R_DATA_TEMPR2[50] ), .D(\R_DATA_TEMPR3[50] ), .Y(OR4_42_Y));
    OR4 \OR4_rD[51]  (.A(OR4_30_Y), .B(OR2_29_Y), .C(
        \R_DATA_TEMPR6[51] ), .D(\R_DATA_TEMPR7[51] ), .Y(rD[51]));
    OR2 OR2_0 (.A(\R_DATA_TEMPR4[7] ), .B(\R_DATA_TEMPR5[7] ), .Y(
        OR2_0_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%2%4%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R2C4 (.BLK_EN(\BLKX0[2] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[54], wD[53], wD[52], wD[51], wD[50], 
        wD[49], wD[48], wD[47], wD[46], wD[45], wD[44]}), .W_EN(
        \BLKZ0[2] ), .ACCESS_BUSY(\ACCESS_BUSY[2][4] ), .R_DATA({nc17, 
        \R_DATA_TEMPR2[54] , \R_DATA_TEMPR2[53] , \R_DATA_TEMPR2[52] , 
        \R_DATA_TEMPR2[51] , \R_DATA_TEMPR2[50] , \R_DATA_TEMPR2[49] , 
        \R_DATA_TEMPR2[48] , \R_DATA_TEMPR2[47] , \R_DATA_TEMPR2[46] , 
        \R_DATA_TEMPR2[45] , \R_DATA_TEMPR2[44] }));
    CFG2 #( .INIT(4'h4) )  CFG2_1 (.A(rAddr[7]), .B(rAddr[6]), .Y(
        CFG2_1_Y));
    CFG3 #( .INIT(8'h20) )  \CFG3_BLKZ0[1]  (.A(CFG2_6_Y), .B(wAddr[8])
        , .C(wEn), .Y(\BLKZ0[1] ));
    OR4 OR4_47 (.A(\R_DATA_TEMPR0[7] ), .B(\R_DATA_TEMPR1[7] ), .C(
        \R_DATA_TEMPR2[7] ), .D(\R_DATA_TEMPR3[7] ), .Y(OR4_47_Y));
    OR4 \OR4_rD[38]  (.A(OR4_54_Y), .B(OR2_5_Y), .C(
        \R_DATA_TEMPR6[38] ), .D(\R_DATA_TEMPR7[38] ), .Y(rD[38]));
    OR4 \OR4_rD[55]  (.A(OR4_0_Y), .B(OR2_1_Y), .C(\R_DATA_TEMPR6[55] )
        , .D(\R_DATA_TEMPR7[55] ), .Y(rD[55]));
    CFG3 #( .INIT(8'h80) )  \CFG3_BLKZ0[4]  (.A(CFG2_3_Y), .B(wAddr[8])
        , .C(wEn), .Y(\BLKZ0[4] ));
    OR4 \OR4_rD[12]  (.A(OR4_19_Y), .B(OR2_58_Y), .C(
        \R_DATA_TEMPR6[12] ), .D(\R_DATA_TEMPR7[12] ), .Y(rD[12]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%1%1%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R1C1 (.BLK_EN(\BLKX0[1] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[21], wD[20], wD[19], wD[18], wD[17], 
        wD[16], wD[15], wD[14], wD[13], wD[12], wD[11]}), .W_EN(
        \BLKZ0[1] ), .ACCESS_BUSY(\ACCESS_BUSY[1][1] ), .R_DATA({nc18, 
        \R_DATA_TEMPR1[21] , \R_DATA_TEMPR1[20] , \R_DATA_TEMPR1[19] , 
        \R_DATA_TEMPR1[18] , \R_DATA_TEMPR1[17] , \R_DATA_TEMPR1[16] , 
        \R_DATA_TEMPR1[15] , \R_DATA_TEMPR1[14] , \R_DATA_TEMPR1[13] , 
        \R_DATA_TEMPR1[12] , \R_DATA_TEMPR1[11] }));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%4%1%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R4C1 (.BLK_EN(\BLKX0[4] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[21], wD[20], wD[19], wD[18], wD[17], 
        wD[16], wD[15], wD[14], wD[13], wD[12], wD[11]}), .W_EN(
        \BLKZ0[4] ), .ACCESS_BUSY(\ACCESS_BUSY[4][1] ), .R_DATA({nc19, 
        \R_DATA_TEMPR4[21] , \R_DATA_TEMPR4[20] , \R_DATA_TEMPR4[19] , 
        \R_DATA_TEMPR4[18] , \R_DATA_TEMPR4[17] , \R_DATA_TEMPR4[16] , 
        \R_DATA_TEMPR4[15] , \R_DATA_TEMPR4[14] , \R_DATA_TEMPR4[13] , 
        \R_DATA_TEMPR4[12] , \R_DATA_TEMPR4[11] }));
    OR4 \OR4_rD[14]  (.A(OR4_34_Y), .B(OR2_62_Y), .C(
        \R_DATA_TEMPR6[14] ), .D(\R_DATA_TEMPR7[14] ), .Y(rD[14]));
    OR4 OR4_18 (.A(\R_DATA_TEMPR0[62] ), .B(\R_DATA_TEMPR1[62] ), .C(
        \R_DATA_TEMPR2[62] ), .D(\R_DATA_TEMPR3[62] ), .Y(OR4_18_Y));
    OR2 OR2_60 (.A(\R_DATA_TEMPR4[59] ), .B(\R_DATA_TEMPR5[59] ), .Y(
        OR2_60_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%4%0%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R4C0 (.BLK_EN(\BLKX0[4] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[10], wD[9], wD[8], wD[7], wD[6], wD[5], 
        wD[4], wD[3], wD[2], wD[1], wD[0]}), .W_EN(\BLKZ0[4] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[4][0] ), .R_DATA({nc20, 
        \R_DATA_TEMPR4[10] , \R_DATA_TEMPR4[9] , \R_DATA_TEMPR4[8] , 
        \R_DATA_TEMPR4[7] , \R_DATA_TEMPR4[6] , \R_DATA_TEMPR4[5] , 
        \R_DATA_TEMPR4[4] , \R_DATA_TEMPR4[3] , \R_DATA_TEMPR4[2] , 
        \R_DATA_TEMPR4[1] , \R_DATA_TEMPR4[0] }));
    OR2 OR2_26 (.A(\R_DATA_TEMPR4[23] ), .B(\R_DATA_TEMPR5[23] ), .Y(
        OR2_26_Y));
    OR4 \OR4_rD[6]  (.A(OR4_8_Y), .B(OR2_46_Y), .C(\R_DATA_TEMPR6[6] ), 
        .D(\R_DATA_TEMPR7[6] ), .Y(rD[6]));
    OR2 OR2_7 (.A(\R_DATA_TEMPR4[25] ), .B(\R_DATA_TEMPR5[25] ), .Y(
        OR2_7_Y));
    OR2 OR2_48 (.A(\R_DATA_TEMPR4[2] ), .B(\R_DATA_TEMPR5[2] ), .Y(
        OR2_48_Y));
    OR4 \OR4_rD[62]  (.A(OR4_18_Y), .B(OR2_57_Y), .C(
        \R_DATA_TEMPR6[62] ), .D(\R_DATA_TEMPR7[62] ), .Y(rD[62]));
    CFG3 #( .INIT(8'h20) )  \CFG3_BLKZ0[0]  (.A(CFG2_3_Y), .B(wAddr[8])
        , .C(wEn), .Y(\BLKZ0[0] ));
    OR4 OR4_39 (.A(\R_DATA_TEMPR0[28] ), .B(\R_DATA_TEMPR1[28] ), .C(
        \R_DATA_TEMPR2[28] ), .D(\R_DATA_TEMPR3[28] ), .Y(OR4_39_Y));
    OR4 \OR4_rD[50]  (.A(OR4_42_Y), .B(OR2_2_Y), .C(
        \R_DATA_TEMPR6[50] ), .D(\R_DATA_TEMPR7[50] ), .Y(rD[50]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%7%3%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R7C3 (.BLK_EN(\BLKX0[7] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[43], wD[42], wD[41], wD[40], wD[39], 
        wD[38], wD[37], wD[36], wD[35], wD[34], wD[33]}), .W_EN(
        \BLKZ0[7] ), .ACCESS_BUSY(\ACCESS_BUSY[7][3] ), .R_DATA({nc21, 
        \R_DATA_TEMPR7[43] , \R_DATA_TEMPR7[42] , \R_DATA_TEMPR7[41] , 
        \R_DATA_TEMPR7[40] , \R_DATA_TEMPR7[39] , \R_DATA_TEMPR7[38] , 
        \R_DATA_TEMPR7[37] , \R_DATA_TEMPR7[36] , \R_DATA_TEMPR7[35] , 
        \R_DATA_TEMPR7[34] , \R_DATA_TEMPR7[33] }));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%3%3%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R3C3 (.BLK_EN(\BLKX0[3] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[43], wD[42], wD[41], wD[40], wD[39], 
        wD[38], wD[37], wD[36], wD[35], wD[34], wD[33]}), .W_EN(
        \BLKZ0[3] ), .ACCESS_BUSY(\ACCESS_BUSY[3][3] ), .R_DATA({nc22, 
        \R_DATA_TEMPR3[43] , \R_DATA_TEMPR3[42] , \R_DATA_TEMPR3[41] , 
        \R_DATA_TEMPR3[40] , \R_DATA_TEMPR3[39] , \R_DATA_TEMPR3[38] , 
        \R_DATA_TEMPR3[37] , \R_DATA_TEMPR3[36] , \R_DATA_TEMPR3[35] , 
        \R_DATA_TEMPR3[34] , \R_DATA_TEMPR3[33] }));
    CFG2 #( .INIT(4'h8) )  CFG2_4 (.A(rAddr[7]), .B(rAddr[6]), .Y(
        CFG2_4_Y));
    OR4 \OR4_rD[31]  (.A(OR4_57_Y), .B(OR2_49_Y), .C(
        \R_DATA_TEMPR6[31] ), .D(\R_DATA_TEMPR7[31] ), .Y(rD[31]));
    OR4 \OR4_rD[29]  (.A(OR4_14_Y), .B(OR2_4_Y), .C(
        \R_DATA_TEMPR6[29] ), .D(\R_DATA_TEMPR7[29] ), .Y(rD[29]));
    OR4 \OR4_rD[49]  (.A(OR4_33_Y), .B(OR2_31_Y), .C(
        \R_DATA_TEMPR6[49] ), .D(\R_DATA_TEMPR7[49] ), .Y(rD[49]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%7%4%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R7C4 (.BLK_EN(\BLKX0[7] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[54], wD[53], wD[52], wD[51], wD[50], 
        wD[49], wD[48], wD[47], wD[46], wD[45], wD[44]}), .W_EN(
        \BLKZ0[7] ), .ACCESS_BUSY(\ACCESS_BUSY[7][4] ), .R_DATA({nc23, 
        \R_DATA_TEMPR7[54] , \R_DATA_TEMPR7[53] , \R_DATA_TEMPR7[52] , 
        \R_DATA_TEMPR7[51] , \R_DATA_TEMPR7[50] , \R_DATA_TEMPR7[49] , 
        \R_DATA_TEMPR7[48] , \R_DATA_TEMPR7[47] , \R_DATA_TEMPR7[46] , 
        \R_DATA_TEMPR7[45] , \R_DATA_TEMPR7[44] }));
    OR4 OR4_55 (.A(\R_DATA_TEMPR0[23] ), .B(\R_DATA_TEMPR1[23] ), .C(
        \R_DATA_TEMPR2[23] ), .D(\R_DATA_TEMPR3[23] ), .Y(OR4_55_Y));
    CFG3 #( .INIT(8'h80) )  \CFG3_BLKX0[6]  (.A(CFG2_5_Y), .B(rAddr[8])
        , .C(VCC), .Y(\BLKX0[6] ));
    OR2 OR2_59 (.A(\R_DATA_TEMPR4[22] ), .B(\R_DATA_TEMPR5[22] ), .Y(
        OR2_59_Y));
    OR4 OR4_51 (.A(\R_DATA_TEMPR0[20] ), .B(\R_DATA_TEMPR1[20] ), .C(
        \R_DATA_TEMPR2[20] ), .D(\R_DATA_TEMPR3[20] ), .Y(OR4_51_Y));
    CFG3 #( .INIT(8'h80) )  \CFG3_BLKZ0[5]  (.A(CFG2_6_Y), .B(wAddr[8])
        , .C(wEn), .Y(\BLKZ0[5] ));
    OR4 \OR4_rD[35]  (.A(OR4_25_Y), .B(OR2_27_Y), .C(
        \R_DATA_TEMPR6[35] ), .D(\R_DATA_TEMPR7[35] ), .Y(rD[35]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%5%4%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R5C4 (.BLK_EN(\BLKX0[5] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[54], wD[53], wD[52], wD[51], wD[50], 
        wD[49], wD[48], wD[47], wD[46], wD[45], wD[44]}), .W_EN(
        \BLKZ0[5] ), .ACCESS_BUSY(\ACCESS_BUSY[5][4] ), .R_DATA({nc24, 
        \R_DATA_TEMPR5[54] , \R_DATA_TEMPR5[53] , \R_DATA_TEMPR5[52] , 
        \R_DATA_TEMPR5[51] , \R_DATA_TEMPR5[50] , \R_DATA_TEMPR5[49] , 
        \R_DATA_TEMPR5[48] , \R_DATA_TEMPR5[47] , \R_DATA_TEMPR5[46] , 
        \R_DATA_TEMPR5[45] , \R_DATA_TEMPR5[44] }));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%4%4%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R4C4 (.BLK_EN(\BLKX0[4] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[54], wD[53], wD[52], wD[51], wD[50], 
        wD[49], wD[48], wD[47], wD[46], wD[45], wD[44]}), .W_EN(
        \BLKZ0[4] ), .ACCESS_BUSY(\ACCESS_BUSY[4][4] ), .R_DATA({nc25, 
        \R_DATA_TEMPR4[54] , \R_DATA_TEMPR4[53] , \R_DATA_TEMPR4[52] , 
        \R_DATA_TEMPR4[51] , \R_DATA_TEMPR4[50] , \R_DATA_TEMPR4[49] , 
        \R_DATA_TEMPR4[48] , \R_DATA_TEMPR4[47] , \R_DATA_TEMPR4[46] , 
        \R_DATA_TEMPR4[45] , \R_DATA_TEMPR4[44] }));
    OR4 OR4_8 (.A(\R_DATA_TEMPR0[6] ), .B(\R_DATA_TEMPR1[6] ), .C(
        \R_DATA_TEMPR2[6] ), .D(\R_DATA_TEMPR3[6] ), .Y(OR4_8_Y));
    OR2 OR2_63 (.A(\R_DATA_TEMPR4[24] ), .B(\R_DATA_TEMPR5[24] ), .Y(
        OR2_63_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%0%0%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R0C0 (.BLK_EN(\BLKX0[0] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[10], wD[9], wD[8], wD[7], wD[6], wD[5], 
        wD[4], wD[3], wD[2], wD[1], wD[0]}), .W_EN(\BLKZ0[0] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][0] ), .R_DATA({nc26, 
        \R_DATA_TEMPR0[10] , \R_DATA_TEMPR0[9] , \R_DATA_TEMPR0[8] , 
        \R_DATA_TEMPR0[7] , \R_DATA_TEMPR0[6] , \R_DATA_TEMPR0[5] , 
        \R_DATA_TEMPR0[4] , \R_DATA_TEMPR0[3] , \R_DATA_TEMPR0[2] , 
        \R_DATA_TEMPR0[1] , \R_DATA_TEMPR0[0] }));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%6%4%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R6C4 (.BLK_EN(\BLKX0[6] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[54], wD[53], wD[52], wD[51], wD[50], 
        wD[49], wD[48], wD[47], wD[46], wD[45], wD[44]}), .W_EN(
        \BLKZ0[6] ), .ACCESS_BUSY(\ACCESS_BUSY[6][4] ), .R_DATA({nc27, 
        \R_DATA_TEMPR6[54] , \R_DATA_TEMPR6[53] , \R_DATA_TEMPR6[52] , 
        \R_DATA_TEMPR6[51] , \R_DATA_TEMPR6[50] , \R_DATA_TEMPR6[49] , 
        \R_DATA_TEMPR6[48] , \R_DATA_TEMPR6[47] , \R_DATA_TEMPR6[46] , 
        \R_DATA_TEMPR6[45] , \R_DATA_TEMPR6[44] }));
    OR4 OR4_29 (.A(\R_DATA_TEMPR0[58] ), .B(\R_DATA_TEMPR1[58] ), .C(
        \R_DATA_TEMPR2[58] ), .D(\R_DATA_TEMPR3[58] ), .Y(OR4_29_Y));
    OR2 OR2_22 (.A(\R_DATA_TEMPR4[44] ), .B(\R_DATA_TEMPR5[44] ), .Y(
        OR2_22_Y));
    OR2 OR2_6 (.A(\R_DATA_TEMPR4[15] ), .B(\R_DATA_TEMPR5[15] ), .Y(
        OR2_6_Y));
    OR4 OR4_16 (.A(\R_DATA_TEMPR0[43] ), .B(\R_DATA_TEMPR1[43] ), .C(
        \R_DATA_TEMPR2[43] ), .D(\R_DATA_TEMPR3[43] ), .Y(OR4_16_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%3%2%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R3C2 (.BLK_EN(\BLKX0[3] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[32], wD[31], wD[30], wD[29], wD[28], 
        wD[27], wD[26], wD[25], wD[24], wD[23], wD[22]}), .W_EN(
        \BLKZ0[3] ), .ACCESS_BUSY(\ACCESS_BUSY[3][2] ), .R_DATA({nc28, 
        \R_DATA_TEMPR3[32] , \R_DATA_TEMPR3[31] , \R_DATA_TEMPR3[30] , 
        \R_DATA_TEMPR3[29] , \R_DATA_TEMPR3[28] , \R_DATA_TEMPR3[27] , 
        \R_DATA_TEMPR3[26] , \R_DATA_TEMPR3[25] , \R_DATA_TEMPR3[24] , 
        \R_DATA_TEMPR3[23] , \R_DATA_TEMPR3[22] }));
    OR4 OR4_45 (.A(\R_DATA_TEMPR0[4] ), .B(\R_DATA_TEMPR1[4] ), .C(
        \R_DATA_TEMPR2[4] ), .D(\R_DATA_TEMPR3[4] ), .Y(OR4_45_Y));
    OR4 \OR4_rD[30]  (.A(OR4_4_Y), .B(OR2_30_Y), .C(
        \R_DATA_TEMPR6[30] ), .D(\R_DATA_TEMPR7[30] ), .Y(rD[30]));
    OR2 OR2_46 (.A(\R_DATA_TEMPR4[6] ), .B(\R_DATA_TEMPR5[6] ), .Y(
        OR2_46_Y));
    OR2 OR2_27 (.A(\R_DATA_TEMPR4[35] ), .B(\R_DATA_TEMPR5[35] ), .Y(
        OR2_27_Y));
    OR4 OR4_34 (.A(\R_DATA_TEMPR0[14] ), .B(\R_DATA_TEMPR1[14] ), .C(
        \R_DATA_TEMPR2[14] ), .D(\R_DATA_TEMPR3[14] ), .Y(OR4_34_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%5%5%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R5C5 (.BLK_EN(\BLKX0[5] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, GND, GND, wD[63], wD[62], wD[61], wD[60], 
        wD[59], wD[58], wD[57], wD[56], wD[55]}), .W_EN(\BLKZ0[5] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[5][5] ), .R_DATA({nc29, nc30, nc31, 
        \R_DATA_TEMPR5[63] , \R_DATA_TEMPR5[62] , \R_DATA_TEMPR5[61] , 
        \R_DATA_TEMPR5[60] , \R_DATA_TEMPR5[59] , \R_DATA_TEMPR5[58] , 
        \R_DATA_TEMPR5[57] , \R_DATA_TEMPR5[56] , \R_DATA_TEMPR5[55] })
        );
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%5%1%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R5C1 (.BLK_EN(\BLKX0[5] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[21], wD[20], wD[19], wD[18], wD[17], 
        wD[16], wD[15], wD[14], wD[13], wD[12], wD[11]}), .W_EN(
        \BLKZ0[5] ), .ACCESS_BUSY(\ACCESS_BUSY[5][1] ), .R_DATA({nc32, 
        \R_DATA_TEMPR5[21] , \R_DATA_TEMPR5[20] , \R_DATA_TEMPR5[19] , 
        \R_DATA_TEMPR5[18] , \R_DATA_TEMPR5[17] , \R_DATA_TEMPR5[16] , 
        \R_DATA_TEMPR5[15] , \R_DATA_TEMPR5[14] , \R_DATA_TEMPR5[13] , 
        \R_DATA_TEMPR5[12] , \R_DATA_TEMPR5[11] }));
    OR4 OR4_41 (.A(\R_DATA_TEMPR0[21] ), .B(\R_DATA_TEMPR1[21] ), .C(
        \R_DATA_TEMPR2[21] ), .D(\R_DATA_TEMPR3[21] ), .Y(OR4_41_Y));
    OR4 OR4_7 (.A(\R_DATA_TEMPR0[37] ), .B(\R_DATA_TEMPR1[37] ), .C(
        \R_DATA_TEMPR2[37] ), .D(\R_DATA_TEMPR3[37] ), .Y(OR4_7_Y));
    OR4 \OR4_rD[27]  (.A(OR4_58_Y), .B(OR2_19_Y), .C(
        \R_DATA_TEMPR6[27] ), .D(\R_DATA_TEMPR7[27] ), .Y(rD[27]));
    OR2 OR2_19 (.A(\R_DATA_TEMPR4[27] ), .B(\R_DATA_TEMPR5[27] ), .Y(
        OR2_19_Y));
    OR4 \OR4_rD[47]  (.A(OR4_17_Y), .B(OR2_42_Y), .C(
        \R_DATA_TEMPR6[47] ), .D(\R_DATA_TEMPR7[47] ), .Y(rD[47]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%2%1%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R2C1 (.BLK_EN(\BLKX0[2] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[21], wD[20], wD[19], wD[18], wD[17], 
        wD[16], wD[15], wD[14], wD[13], wD[12], wD[11]}), .W_EN(
        \BLKZ0[2] ), .ACCESS_BUSY(\ACCESS_BUSY[2][1] ), .R_DATA({nc33, 
        \R_DATA_TEMPR2[21] , \R_DATA_TEMPR2[20] , \R_DATA_TEMPR2[19] , 
        \R_DATA_TEMPR2[18] , \R_DATA_TEMPR2[17] , \R_DATA_TEMPR2[16] , 
        \R_DATA_TEMPR2[15] , \R_DATA_TEMPR2[14] , \R_DATA_TEMPR2[13] , 
        \R_DATA_TEMPR2[12] , \R_DATA_TEMPR2[11] }));
    OR2 OR2_54 (.A(\R_DATA_TEMPR4[18] ), .B(\R_DATA_TEMPR5[18] ), .Y(
        OR2_54_Y));
    OR4 \OR4_rD[23]  (.A(OR4_55_Y), .B(OR2_26_Y), .C(
        \R_DATA_TEMPR6[23] ), .D(\R_DATA_TEMPR7[23] ), .Y(rD[23]));
    OR4 \OR4_rD[43]  (.A(OR4_16_Y), .B(OR2_45_Y), .C(
        \R_DATA_TEMPR6[43] ), .D(\R_DATA_TEMPR7[43] ), .Y(rD[43]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%0%2%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R0C2 (.BLK_EN(\BLKX0[0] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[32], wD[31], wD[30], wD[29], wD[28], 
        wD[27], wD[26], wD[25], wD[24], wD[23], wD[22]}), .W_EN(
        \BLKZ0[0] ), .ACCESS_BUSY(\ACCESS_BUSY[0][2] ), .R_DATA({nc34, 
        \R_DATA_TEMPR0[32] , \R_DATA_TEMPR0[31] , \R_DATA_TEMPR0[30] , 
        \R_DATA_TEMPR0[29] , \R_DATA_TEMPR0[28] , \R_DATA_TEMPR0[27] , 
        \R_DATA_TEMPR0[26] , \R_DATA_TEMPR0[25] , \R_DATA_TEMPR0[24] , 
        \R_DATA_TEMPR0[23] , \R_DATA_TEMPR0[22] }));
    OR4 OR4_30 (.A(\R_DATA_TEMPR0[51] ), .B(\R_DATA_TEMPR1[51] ), .C(
        \R_DATA_TEMPR2[51] ), .D(\R_DATA_TEMPR3[51] ), .Y(OR4_30_Y));
    OR4 \OR4_rD[18]  (.A(OR4_38_Y), .B(OR2_54_Y), .C(
        \R_DATA_TEMPR6[18] ), .D(\R_DATA_TEMPR7[18] ), .Y(rD[18]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%0%3%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R0C3 (.BLK_EN(\BLKX0[0] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[43], wD[42], wD[41], wD[40], wD[39], 
        wD[38], wD[37], wD[36], wD[35], wD[34], wD[33]}), .W_EN(
        \BLKZ0[0] ), .ACCESS_BUSY(\ACCESS_BUSY[0][3] ), .R_DATA({nc35, 
        \R_DATA_TEMPR0[43] , \R_DATA_TEMPR0[42] , \R_DATA_TEMPR0[41] , 
        \R_DATA_TEMPR0[40] , \R_DATA_TEMPR0[39] , \R_DATA_TEMPR0[38] , 
        \R_DATA_TEMPR0[37] , \R_DATA_TEMPR0[36] , \R_DATA_TEMPR0[35] , 
        \R_DATA_TEMPR0[34] , \R_DATA_TEMPR0[33] }));
    OR2 OR2_39 (.A(\R_DATA_TEMPR4[21] ), .B(\R_DATA_TEMPR5[21] ), .Y(
        OR2_39_Y));
    OR2 OR2_50 (.A(\R_DATA_TEMPR4[5] ), .B(\R_DATA_TEMPR5[5] ), .Y(
        OR2_50_Y));
    OR4 OR4_24 (.A(\R_DATA_TEMPR0[3] ), .B(\R_DATA_TEMPR1[3] ), .C(
        \R_DATA_TEMPR2[3] ), .D(\R_DATA_TEMPR3[3] ), .Y(OR4_24_Y));
    OR4 OR4_62 (.A(\R_DATA_TEMPR0[41] ), .B(\R_DATA_TEMPR1[41] ), .C(
        \R_DATA_TEMPR2[41] ), .D(\R_DATA_TEMPR3[41] ), .Y(OR4_62_Y));
    OR4 OR4_12 (.A(\R_DATA_TEMPR0[19] ), .B(\R_DATA_TEMPR1[19] ), .C(
        \R_DATA_TEMPR2[19] ), .D(\R_DATA_TEMPR3[19] ), .Y(OR4_12_Y));
    OR2 OR2_42 (.A(\R_DATA_TEMPR4[47] ), .B(\R_DATA_TEMPR5[47] ), .Y(
        OR2_42_Y));
    OR4 \OR4_rD[56]  (.A(OR4_60_Y), .B(OR2_11_Y), .C(
        \R_DATA_TEMPR6[56] ), .D(\R_DATA_TEMPR7[56] ), .Y(rD[56]));
    OR4 OR4_17 (.A(\R_DATA_TEMPR0[47] ), .B(\R_DATA_TEMPR1[47] ), .C(
        \R_DATA_TEMPR2[47] ), .D(\R_DATA_TEMPR3[47] ), .Y(OR4_17_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%3%0%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R3C0 (.BLK_EN(\BLKX0[3] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[10], wD[9], wD[8], wD[7], wD[6], wD[5], 
        wD[4], wD[3], wD[2], wD[1], wD[0]}), .W_EN(\BLKZ0[3] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[3][0] ), .R_DATA({nc36, 
        \R_DATA_TEMPR3[10] , \R_DATA_TEMPR3[9] , \R_DATA_TEMPR3[8] , 
        \R_DATA_TEMPR3[7] , \R_DATA_TEMPR3[6] , \R_DATA_TEMPR3[5] , 
        \R_DATA_TEMPR3[4] , \R_DATA_TEMPR3[3] , \R_DATA_TEMPR3[2] , 
        \R_DATA_TEMPR3[1] , \R_DATA_TEMPR3[0] }));
    OR4 \OR4_rD[22]  (.A(OR4_20_Y), .B(OR2_59_Y), .C(
        \R_DATA_TEMPR6[22] ), .D(\R_DATA_TEMPR7[22] ), .Y(rD[22]));
    OR4 \OR4_rD[42]  (.A(OR4_37_Y), .B(OR2_17_Y), .C(
        \R_DATA_TEMPR6[42] ), .D(\R_DATA_TEMPR7[42] ), .Y(rD[42]));
    OR2 OR2_47 (.A(\R_DATA_TEMPR4[58] ), .B(\R_DATA_TEMPR5[58] ), .Y(
        OR2_47_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%4%3%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R4C3 (.BLK_EN(\BLKX0[4] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[43], wD[42], wD[41], wD[40], wD[39], 
        wD[38], wD[37], wD[36], wD[35], wD[34], wD[33]}), .W_EN(
        \BLKZ0[4] ), .ACCESS_BUSY(\ACCESS_BUSY[4][3] ), .R_DATA({nc37, 
        \R_DATA_TEMPR4[43] , \R_DATA_TEMPR4[42] , \R_DATA_TEMPR4[41] , 
        \R_DATA_TEMPR4[40] , \R_DATA_TEMPR4[39] , \R_DATA_TEMPR4[38] , 
        \R_DATA_TEMPR4[37] , \R_DATA_TEMPR4[36] , \R_DATA_TEMPR4[35] , 
        \R_DATA_TEMPR4[34] , \R_DATA_TEMPR4[33] }));
    OR4 \OR4_rD[24]  (.A(OR4_35_Y), .B(OR2_63_Y), .C(
        \R_DATA_TEMPR6[24] ), .D(\R_DATA_TEMPR7[24] ), .Y(rD[24]));
    OR4 OR4_20 (.A(\R_DATA_TEMPR0[22] ), .B(\R_DATA_TEMPR1[22] ), .C(
        \R_DATA_TEMPR2[22] ), .D(\R_DATA_TEMPR3[22] ), .Y(OR4_20_Y));
    OR2 OR2_14 (.A(\R_DATA_TEMPR4[34] ), .B(\R_DATA_TEMPR5[34] ), .Y(
        OR2_14_Y));
    OR4 \OR4_rD[11]  (.A(OR4_40_Y), .B(OR2_38_Y), .C(
        \R_DATA_TEMPR6[11] ), .D(\R_DATA_TEMPR7[11] ), .Y(rD[11]));
    OR4 \OR4_rD[44]  (.A(OR4_59_Y), .B(OR2_22_Y), .C(
        \R_DATA_TEMPR6[44] ), .D(\R_DATA_TEMPR7[44] ), .Y(rD[44]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%5%3%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R5C3 (.BLK_EN(\BLKX0[5] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[43], wD[42], wD[41], wD[40], wD[39], 
        wD[38], wD[37], wD[36], wD[35], wD[34], wD[33]}), .W_EN(
        \BLKZ0[5] ), .ACCESS_BUSY(\ACCESS_BUSY[5][3] ), .R_DATA({nc38, 
        \R_DATA_TEMPR5[43] , \R_DATA_TEMPR5[42] , \R_DATA_TEMPR5[41] , 
        \R_DATA_TEMPR5[40] , \R_DATA_TEMPR5[39] , \R_DATA_TEMPR5[38] , 
        \R_DATA_TEMPR5[37] , \R_DATA_TEMPR5[36] , \R_DATA_TEMPR5[35] , 
        \R_DATA_TEMPR5[34] , \R_DATA_TEMPR5[33] }));
    OR4 OR4_33 (.A(\R_DATA_TEMPR0[49] ), .B(\R_DATA_TEMPR1[49] ), .C(
        \R_DATA_TEMPR2[49] ), .D(\R_DATA_TEMPR3[49] ), .Y(OR4_33_Y));
    OR2 OR2_25 (.A(\R_DATA_TEMPR4[13] ), .B(\R_DATA_TEMPR5[13] ), .Y(
        OR2_25_Y));
    OR4 \OR4_rD[61]  (.A(OR4_36_Y), .B(OR2_36_Y), .C(
        \R_DATA_TEMPR6[61] ), .D(\R_DATA_TEMPR7[61] ), .Y(rD[61]));
    OR4 OR4_3 (.A(\R_DATA_TEMPR0[26] ), .B(\R_DATA_TEMPR1[26] ), .C(
        \R_DATA_TEMPR2[26] ), .D(\R_DATA_TEMPR3[26] ), .Y(OR4_3_Y));
    OR4 \OR4_rD[15]  (.A(OR4_11_Y), .B(OR2_6_Y), .C(
        \R_DATA_TEMPR6[15] ), .D(\R_DATA_TEMPR7[15] ), .Y(rD[15]));
    OR2 OR2_53 (.A(\R_DATA_TEMPR4[3] ), .B(\R_DATA_TEMPR5[3] ), .Y(
        OR2_53_Y));
    OR2 OR2_10 (.A(\R_DATA_TEMPR4[10] ), .B(\R_DATA_TEMPR5[10] ), .Y(
        OR2_10_Y));
    OR2 OR2_21 (.A(\R_DATA_TEMPR4[26] ), .B(\R_DATA_TEMPR5[26] ), .Y(
        OR2_21_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%5%0%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R5C0 (.BLK_EN(\BLKX0[5] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[10], wD[9], wD[8], wD[7], wD[6], wD[5], 
        wD[4], wD[3], wD[2], wD[1], wD[0]}), .W_EN(\BLKZ0[5] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[5][0] ), .R_DATA({nc39, 
        \R_DATA_TEMPR5[10] , \R_DATA_TEMPR5[9] , \R_DATA_TEMPR5[8] , 
        \R_DATA_TEMPR5[7] , \R_DATA_TEMPR5[6] , \R_DATA_TEMPR5[5] , 
        \R_DATA_TEMPR5[4] , \R_DATA_TEMPR5[3] , \R_DATA_TEMPR5[2] , 
        \R_DATA_TEMPR5[1] , \R_DATA_TEMPR5[0] }));
    OR2 OR2_34 (.A(\R_DATA_TEMPR4[4] ), .B(\R_DATA_TEMPR5[4] ), .Y(
        OR2_34_Y));
    CFG3 #( .INIT(8'h20) )  \CFG3_BLKZ0[2]  (.A(CFG2_2_Y), .B(wAddr[8])
        , .C(wEn), .Y(\BLKZ0[2] ));
    OR2 OR2_5 (.A(\R_DATA_TEMPR4[38] ), .B(\R_DATA_TEMPR5[38] ), .Y(
        OR2_5_Y));
    CFG2 #( .INIT(4'h1) )  CFG2_7 (.A(rAddr[7]), .B(rAddr[6]), .Y(
        CFG2_7_Y));
    OR4 \OR4_rD[36]  (.A(OR4_21_Y), .B(OR2_40_Y), .C(
        \R_DATA_TEMPR6[36] ), .D(\R_DATA_TEMPR7[36] ), .Y(rD[36]));
    CFG3 #( .INIT(8'h20) )  \CFG3_BLKX0[1]  (.A(CFG2_1_Y), .B(rAddr[8])
        , .C(VCC), .Y(\BLKX0[1] ));
    OR4 \OR4_rD[10]  (.A(OR4_50_Y), .B(OR2_10_Y), .C(
        \R_DATA_TEMPR6[10] ), .D(\R_DATA_TEMPR7[10] ), .Y(rD[10]));
    OR4 OR4_23 (.A(\R_DATA_TEMPR0[8] ), .B(\R_DATA_TEMPR1[8] ), .C(
        \R_DATA_TEMPR2[8] ), .D(\R_DATA_TEMPR3[8] ), .Y(OR4_23_Y));
    OR4 OR4_59 (.A(\R_DATA_TEMPR0[44] ), .B(\R_DATA_TEMPR1[44] ), .C(
        \R_DATA_TEMPR2[44] ), .D(\R_DATA_TEMPR3[44] ), .Y(OR4_59_Y));
    CFG3 #( .INIT(8'h80) )  \CFG3_BLKX0[4]  (.A(CFG2_7_Y), .B(rAddr[8])
        , .C(VCC), .Y(\BLKX0[4] ));
    OR2 OR2_30 (.A(\R_DATA_TEMPR4[30] ), .B(\R_DATA_TEMPR5[30] ), .Y(
        OR2_30_Y));
    OR4 OR4_2 (.A(\R_DATA_TEMPR0[16] ), .B(\R_DATA_TEMPR1[16] ), .C(
        \R_DATA_TEMPR2[16] ), .D(\R_DATA_TEMPR3[16] ), .Y(OR4_2_Y));
    OR4 \OR4_rD[60]  (.A(OR4_48_Y), .B(OR2_9_Y), .C(
        \R_DATA_TEMPR6[60] ), .D(\R_DATA_TEMPR7[60] ), .Y(rD[60]));
    OR4 OR4_38 (.A(\R_DATA_TEMPR0[18] ), .B(\R_DATA_TEMPR1[18] ), .C(
        \R_DATA_TEMPR2[18] ), .D(\R_DATA_TEMPR3[18] ), .Y(OR4_38_Y));
    OR4 \OR4_rD[3]  (.A(OR4_24_Y), .B(OR2_53_Y), .C(\R_DATA_TEMPR6[3] )
        , .D(\R_DATA_TEMPR7[3] ), .Y(rD[3]));
    CFG3 #( .INIT(8'h20) )  \CFG3_BLKX0[0]  (.A(CFG2_7_Y), .B(rAddr[8])
        , .C(VCC), .Y(\BLKX0[0] ));
    OR4 OR4_15 (.A(\R_DATA_TEMPR0[40] ), .B(\R_DATA_TEMPR1[40] ), .C(
        \R_DATA_TEMPR2[40] ), .D(\R_DATA_TEMPR3[40] ), .Y(OR4_15_Y));
    OR2 OR2_13 (.A(\R_DATA_TEMPR4[20] ), .B(\R_DATA_TEMPR5[20] ), .Y(
        OR2_13_Y));
    OR2 OR2_45 (.A(\R_DATA_TEMPR4[43] ), .B(\R_DATA_TEMPR5[43] ), .Y(
        OR2_45_Y));
    OR4 OR4_61 (.A(\R_DATA_TEMPR0[48] ), .B(\R_DATA_TEMPR1[48] ), .C(
        \R_DATA_TEMPR2[48] ), .D(\R_DATA_TEMPR3[48] ), .Y(OR4_61_Y));
    OR2 OR2_58 (.A(\R_DATA_TEMPR4[12] ), .B(\R_DATA_TEMPR5[12] ), .Y(
        OR2_58_Y));
    OR4 OR4_11 (.A(\R_DATA_TEMPR0[15] ), .B(\R_DATA_TEMPR1[15] ), .C(
        \R_DATA_TEMPR2[15] ), .D(\R_DATA_TEMPR3[15] ), .Y(OR4_11_Y));
    OR2 OR2_1 (.A(\R_DATA_TEMPR4[55] ), .B(\R_DATA_TEMPR5[55] ), .Y(
        OR2_1_Y));
    OR2 OR2_62 (.A(\R_DATA_TEMPR4[14] ), .B(\R_DATA_TEMPR5[14] ), .Y(
        OR2_62_Y));
    CFG2 #( .INIT(4'h4) )  CFG2_6 (.A(wAddr[7]), .B(wAddr[6]), .Y(
        CFG2_6_Y));
    OR4 OR4_49 (.A(\R_DATA_TEMPR0[34] ), .B(\R_DATA_TEMPR1[34] ), .C(
        \R_DATA_TEMPR2[34] ), .D(\R_DATA_TEMPR3[34] ), .Y(OR4_49_Y));
    OR2 OR2_41 (.A(\R_DATA_TEMPR4[33] ), .B(\R_DATA_TEMPR5[33] ), .Y(
        OR2_41_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%1%2%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R1C2 (.BLK_EN(\BLKX0[1] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[32], wD[31], wD[30], wD[29], wD[28], 
        wD[27], wD[26], wD[25], wD[24], wD[23], wD[22]}), .W_EN(
        \BLKZ0[1] ), .ACCESS_BUSY(\ACCESS_BUSY[1][2] ), .R_DATA({nc40, 
        \R_DATA_TEMPR1[32] , \R_DATA_TEMPR1[31] , \R_DATA_TEMPR1[30] , 
        \R_DATA_TEMPR1[29] , \R_DATA_TEMPR1[28] , \R_DATA_TEMPR1[27] , 
        \R_DATA_TEMPR1[26] , \R_DATA_TEMPR1[25] , \R_DATA_TEMPR1[24] , 
        \R_DATA_TEMPR1[23] , \R_DATA_TEMPR1[22] }));
    OR4 \OR4_rD[28]  (.A(OR4_39_Y), .B(OR2_56_Y), .C(
        \R_DATA_TEMPR6[28] ), .D(\R_DATA_TEMPR7[28] ), .Y(rD[28]));
    OR4 \OR4_rD[48]  (.A(OR4_61_Y), .B(OR2_16_Y), .C(
        \R_DATA_TEMPR6[48] ), .D(\R_DATA_TEMPR7[48] ), .Y(rD[48]));
    CFG3 #( .INIT(8'h80) )  \CFG3_BLKX0[5]  (.A(CFG2_1_Y), .B(rAddr[8])
        , .C(VCC), .Y(\BLKX0[5] ));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%6%2%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R6C2 (.BLK_EN(\BLKX0[6] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[32], wD[31], wD[30], wD[29], wD[28], 
        wD[27], wD[26], wD[25], wD[24], wD[23], wD[22]}), .W_EN(
        \BLKZ0[6] ), .ACCESS_BUSY(\ACCESS_BUSY[6][2] ), .R_DATA({nc41, 
        \R_DATA_TEMPR6[32] , \R_DATA_TEMPR6[31] , \R_DATA_TEMPR6[30] , 
        \R_DATA_TEMPR6[29] , \R_DATA_TEMPR6[28] , \R_DATA_TEMPR6[27] , 
        \R_DATA_TEMPR6[26] , \R_DATA_TEMPR6[25] , \R_DATA_TEMPR6[24] , 
        \R_DATA_TEMPR6[23] , \R_DATA_TEMPR6[22] }));
    OR2 OR2_33 (.A(\R_DATA_TEMPR4[45] ), .B(\R_DATA_TEMPR5[45] ), .Y(
        OR2_33_Y));
    OR4 OR4_28 (.A(\R_DATA_TEMPR0[54] ), .B(\R_DATA_TEMPR1[54] ), .C(
        \R_DATA_TEMPR2[54] ), .D(\R_DATA_TEMPR3[54] ), .Y(OR4_28_Y));
    OR4 OR4_54 (.A(\R_DATA_TEMPR0[38] ), .B(\R_DATA_TEMPR1[38] ), .C(
        \R_DATA_TEMPR2[38] ), .D(\R_DATA_TEMPR3[38] ), .Y(OR4_54_Y));
    OR2 OR2_3 (.A(\R_DATA_TEMPR4[19] ), .B(\R_DATA_TEMPR5[19] ), .Y(
        OR2_3_Y));
    OR4 OR4_36 (.A(\R_DATA_TEMPR0[61] ), .B(\R_DATA_TEMPR1[61] ), .C(
        \R_DATA_TEMPR2[61] ), .D(\R_DATA_TEMPR3[61] ), .Y(OR4_36_Y));
    OR4 OR4_50 (.A(\R_DATA_TEMPR0[10] ), .B(\R_DATA_TEMPR1[10] ), .C(
        \R_DATA_TEMPR2[10] ), .D(\R_DATA_TEMPR3[10] ), .Y(OR4_50_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%6%0%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R6C0 (.BLK_EN(\BLKX0[6] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[10], wD[9], wD[8], wD[7], wD[6], wD[5], 
        wD[4], wD[3], wD[2], wD[1], wD[0]}), .W_EN(\BLKZ0[6] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[6][0] ), .R_DATA({nc42, 
        \R_DATA_TEMPR6[10] , \R_DATA_TEMPR6[9] , \R_DATA_TEMPR6[8] , 
        \R_DATA_TEMPR6[7] , \R_DATA_TEMPR6[6] , \R_DATA_TEMPR6[5] , 
        \R_DATA_TEMPR6[4] , \R_DATA_TEMPR6[3] , \R_DATA_TEMPR6[2] , 
        \R_DATA_TEMPR6[1] , \R_DATA_TEMPR6[0] }));
    OR2 OR2_18 (.A(\R_DATA_TEMPR4[17] ), .B(\R_DATA_TEMPR5[17] ), .Y(
        OR2_18_Y));
    OR4 \OR4_rD[59]  (.A(OR4_1_Y), .B(OR2_60_Y), .C(
        \R_DATA_TEMPR6[59] ), .D(\R_DATA_TEMPR7[59] ), .Y(rD[59]));
    OR4 \OR4_rD[21]  (.A(OR4_41_Y), .B(OR2_39_Y), .C(
        \R_DATA_TEMPR6[21] ), .D(\R_DATA_TEMPR7[21] ), .Y(rD[21]));
    OR4 \OR4_rD[41]  (.A(OR4_62_Y), .B(OR2_55_Y), .C(
        \R_DATA_TEMPR6[41] ), .D(\R_DATA_TEMPR7[41] ), .Y(rD[41]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%2%0%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R2C0 (.BLK_EN(\BLKX0[2] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[10], wD[9], wD[8], wD[7], wD[6], wD[5], 
        wD[4], wD[3], wD[2], wD[1], wD[0]}), .W_EN(\BLKZ0[2] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[2][0] ), .R_DATA({nc43, 
        \R_DATA_TEMPR2[10] , \R_DATA_TEMPR2[9] , \R_DATA_TEMPR2[8] , 
        \R_DATA_TEMPR2[7] , \R_DATA_TEMPR2[6] , \R_DATA_TEMPR2[5] , 
        \R_DATA_TEMPR2[4] , \R_DATA_TEMPR2[3] , \R_DATA_TEMPR2[2] , 
        \R_DATA_TEMPR2[1] , \R_DATA_TEMPR2[0] }));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%3%1%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R3C1 (.BLK_EN(\BLKX0[3] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[21], wD[20], wD[19], wD[18], wD[17], 
        wD[16], wD[15], wD[14], wD[13], wD[12], wD[11]}), .W_EN(
        \BLKZ0[3] ), .ACCESS_BUSY(\ACCESS_BUSY[3][1] ), .R_DATA({nc44, 
        \R_DATA_TEMPR3[21] , \R_DATA_TEMPR3[20] , \R_DATA_TEMPR3[19] , 
        \R_DATA_TEMPR3[18] , \R_DATA_TEMPR3[17] , \R_DATA_TEMPR3[16] , 
        \R_DATA_TEMPR3[15] , \R_DATA_TEMPR3[14] , \R_DATA_TEMPR3[13] , 
        \R_DATA_TEMPR3[12] , \R_DATA_TEMPR3[11] }));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%2%3%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R2C3 (.BLK_EN(\BLKX0[2] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[43], wD[42], wD[41], wD[40], wD[39], 
        wD[38], wD[37], wD[36], wD[35], wD[34], wD[33]}), .W_EN(
        \BLKZ0[2] ), .ACCESS_BUSY(\ACCESS_BUSY[2][3] ), .R_DATA({nc45, 
        \R_DATA_TEMPR2[43] , \R_DATA_TEMPR2[42] , \R_DATA_TEMPR2[41] , 
        \R_DATA_TEMPR2[40] , \R_DATA_TEMPR2[39] , \R_DATA_TEMPR2[38] , 
        \R_DATA_TEMPR2[37] , \R_DATA_TEMPR2[36] , \R_DATA_TEMPR2[35] , 
        \R_DATA_TEMPR2[34] , \R_DATA_TEMPR2[33] }));
    OR2 OR2_56 (.A(\R_DATA_TEMPR4[28] ), .B(\R_DATA_TEMPR5[28] ), .Y(
        OR2_56_Y));
    OR4 OR4_44 (.A(\R_DATA_TEMPR0[57] ), .B(\R_DATA_TEMPR1[57] ), .C(
        \R_DATA_TEMPR2[57] ), .D(\R_DATA_TEMPR3[57] ), .Y(OR4_44_Y));
    OR4 \OR4_rD[4]  (.A(OR4_45_Y), .B(OR2_34_Y), .C(\R_DATA_TEMPR6[4] )
        , .D(\R_DATA_TEMPR7[4] ), .Y(rD[4]));
    CFG3 #( .INIT(8'h80) )  \CFG3_BLKZ0[7]  (.A(CFG2_0_Y), .B(wAddr[8])
        , .C(wEn), .Y(\BLKZ0[7] ));
    OR4 \OR4_rD[16]  (.A(OR4_2_Y), .B(OR2_20_Y), .C(
        \R_DATA_TEMPR6[16] ), .D(\R_DATA_TEMPR7[16] ), .Y(rD[16]));
    CFG3 #( .INIT(8'h20) )  \CFG3_BLKZ0[3]  (.A(CFG2_0_Y), .B(wAddr[8])
        , .C(wEn), .Y(\BLKZ0[3] ));
    OR4 \OR4_rD[25]  (.A(OR4_13_Y), .B(OR2_7_Y), .C(
        \R_DATA_TEMPR6[25] ), .D(\R_DATA_TEMPR7[25] ), .Y(rD[25]));
    OR4 \OR4_rD[45]  (.A(OR4_32_Y), .B(OR2_33_Y), .C(
        \R_DATA_TEMPR6[45] ), .D(\R_DATA_TEMPR7[45] ), .Y(rD[45]));
    OR2 OR2_38 (.A(\R_DATA_TEMPR4[11] ), .B(\R_DATA_TEMPR5[11] ), .Y(
        OR2_38_Y));
    OR4 OR4_26 (.A(\R_DATA_TEMPR0[39] ), .B(\R_DATA_TEMPR1[39] ), .C(
        \R_DATA_TEMPR2[39] ), .D(\R_DATA_TEMPR3[39] ), .Y(OR4_26_Y));
    OR4 OR4_40 (.A(\R_DATA_TEMPR0[11] ), .B(\R_DATA_TEMPR1[11] ), .C(
        \R_DATA_TEMPR2[11] ), .D(\R_DATA_TEMPR3[11] ), .Y(OR4_40_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%6%1%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R6C1 (.BLK_EN(\BLKX0[6] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[21], wD[20], wD[19], wD[18], wD[17], 
        wD[16], wD[15], wD[14], wD[13], wD[12], wD[11]}), .W_EN(
        \BLKZ0[6] ), .ACCESS_BUSY(\ACCESS_BUSY[6][1] ), .R_DATA({nc46, 
        \R_DATA_TEMPR6[21] , \R_DATA_TEMPR6[20] , \R_DATA_TEMPR6[19] , 
        \R_DATA_TEMPR6[18] , \R_DATA_TEMPR6[17] , \R_DATA_TEMPR6[16] , 
        \R_DATA_TEMPR6[15] , \R_DATA_TEMPR6[14] , \R_DATA_TEMPR6[13] , 
        \R_DATA_TEMPR6[12] , \R_DATA_TEMPR6[11] }));
    OR2 OR2_29 (.A(\R_DATA_TEMPR4[51] ), .B(\R_DATA_TEMPR5[51] ), .Y(
        OR2_29_Y));
    OR4 \OR4_rD[9]  (.A(OR4_10_Y), .B(OR2_61_Y), .C(\R_DATA_TEMPR6[9] )
        , .D(\R_DATA_TEMPR7[9] ), .Y(rD[9]));
    OR4 OR4_32 (.A(\R_DATA_TEMPR0[45] ), .B(\R_DATA_TEMPR1[45] ), .C(
        \R_DATA_TEMPR2[45] ), .D(\R_DATA_TEMPR3[45] ), .Y(OR4_32_Y));
    OR4 OR4_53 (.A(\R_DATA_TEMPR0[13] ), .B(\R_DATA_TEMPR1[13] ), .C(
        \R_DATA_TEMPR2[13] ), .D(\R_DATA_TEMPR3[13] ), .Y(OR4_53_Y));
    OR4 \OR4_rD[20]  (.A(OR4_51_Y), .B(OR2_13_Y), .C(
        \R_DATA_TEMPR6[20] ), .D(\R_DATA_TEMPR7[20] ), .Y(rD[20]));
    OR4 \OR4_rD[40]  (.A(OR4_15_Y), .B(OR2_35_Y), .C(
        \R_DATA_TEMPR6[40] ), .D(\R_DATA_TEMPR7[40] ), .Y(rD[40]));
    OR2 OR2_61 (.A(\R_DATA_TEMPR4[9] ), .B(\R_DATA_TEMPR5[9] ), .Y(
        OR2_61_Y));
    OR4 OR4_37 (.A(\R_DATA_TEMPR0[42] ), .B(\R_DATA_TEMPR1[42] ), .C(
        \R_DATA_TEMPR2[42] ), .D(\R_DATA_TEMPR3[42] ), .Y(OR4_37_Y));
    OR4 \OR4_rD[39]  (.A(OR4_26_Y), .B(OR2_23_Y), .C(
        \R_DATA_TEMPR6[39] ), .D(\R_DATA_TEMPR7[39] ), .Y(rD[39]));
    OR4 OR4_5 (.A(\R_DATA_TEMPR0[2] ), .B(\R_DATA_TEMPR1[2] ), .C(
        \R_DATA_TEMPR2[2] ), .D(\R_DATA_TEMPR3[2] ), .Y(OR4_5_Y));
    OR4 OR4_9 (.A(\R_DATA_TEMPR0[52] ), .B(\R_DATA_TEMPR1[52] ), .C(
        \R_DATA_TEMPR2[52] ), .D(\R_DATA_TEMPR3[52] ), .Y(OR4_9_Y));
    OR2 OR2_16 (.A(\R_DATA_TEMPR4[48] ), .B(\R_DATA_TEMPR5[48] ), .Y(
        OR2_16_Y));
    OR4 \OR4_rD[57]  (.A(OR4_44_Y), .B(OR2_8_Y), .C(
        \R_DATA_TEMPR6[57] ), .D(\R_DATA_TEMPR7[57] ), .Y(rD[57]));
    OR2 OR2_52 (.A(\R_DATA_TEMPR4[54] ), .B(\R_DATA_TEMPR5[54] ), .Y(
        OR2_52_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%1%0%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R1C0 (.BLK_EN(\BLKX0[1] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[10], wD[9], wD[8], wD[7], wD[6], wD[5], 
        wD[4], wD[3], wD[2], wD[1], wD[0]}), .W_EN(\BLKZ0[1] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[1][0] ), .R_DATA({nc47, 
        \R_DATA_TEMPR1[10] , \R_DATA_TEMPR1[9] , \R_DATA_TEMPR1[8] , 
        \R_DATA_TEMPR1[7] , \R_DATA_TEMPR1[6] , \R_DATA_TEMPR1[5] , 
        \R_DATA_TEMPR1[4] , \R_DATA_TEMPR1[3] , \R_DATA_TEMPR1[2] , 
        \R_DATA_TEMPR1[1] , \R_DATA_TEMPR1[0] }));
    OR4 \OR4_rD[1]  (.A(OR4_46_Y), .B(OR2_28_Y), .C(\R_DATA_TEMPR6[1] )
        , .D(\R_DATA_TEMPR7[1] ), .Y(rD[1]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%0%5%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R0C5 (.BLK_EN(\BLKX0[0] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, GND, GND, wD[63], wD[62], wD[61], wD[60], 
        wD[59], wD[58], wD[57], wD[56], wD[55]}), .W_EN(\BLKZ0[0] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][5] ), .R_DATA({nc48, nc49, nc50, 
        \R_DATA_TEMPR0[63] , \R_DATA_TEMPR0[62] , \R_DATA_TEMPR0[61] , 
        \R_DATA_TEMPR0[60] , \R_DATA_TEMPR0[59] , \R_DATA_TEMPR0[58] , 
        \R_DATA_TEMPR0[57] , \R_DATA_TEMPR0[56] , \R_DATA_TEMPR0[55] })
        );
    OR4 \OR4_rD[53]  (.A(OR4_43_Y), .B(OR2_15_Y), .C(
        \R_DATA_TEMPR6[53] ), .D(\R_DATA_TEMPR7[53] ), .Y(rD[53]));
    CFG2 #( .INIT(4'h2) )  CFG2_2 (.A(wAddr[7]), .B(wAddr[6]), .Y(
        CFG2_2_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%2%2%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R2C2 (.BLK_EN(\BLKX0[2] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[32], wD[31], wD[30], wD[29], wD[28], 
        wD[27], wD[26], wD[25], wD[24], wD[23], wD[22]}), .W_EN(
        \BLKZ0[2] ), .ACCESS_BUSY(\ACCESS_BUSY[2][2] ), .R_DATA({nc51, 
        \R_DATA_TEMPR2[32] , \R_DATA_TEMPR2[31] , \R_DATA_TEMPR2[30] , 
        \R_DATA_TEMPR2[29] , \R_DATA_TEMPR2[28] , \R_DATA_TEMPR2[27] , 
        \R_DATA_TEMPR2[26] , \R_DATA_TEMPR2[25] , \R_DATA_TEMPR2[24] , 
        \R_DATA_TEMPR2[23] , \R_DATA_TEMPR2[22] }));
    OR2 OR2_57 (.A(\R_DATA_TEMPR4[62] ), .B(\R_DATA_TEMPR5[62] ), .Y(
        OR2_57_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%6%3%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R6C3 (.BLK_EN(\BLKX0[6] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[43], wD[42], wD[41], wD[40], wD[39], 
        wD[38], wD[37], wD[36], wD[35], wD[34], wD[33]}), .W_EN(
        \BLKZ0[6] ), .ACCESS_BUSY(\ACCESS_BUSY[6][3] ), .R_DATA({nc52, 
        \R_DATA_TEMPR6[43] , \R_DATA_TEMPR6[42] , \R_DATA_TEMPR6[41] , 
        \R_DATA_TEMPR6[40] , \R_DATA_TEMPR6[39] , \R_DATA_TEMPR6[38] , 
        \R_DATA_TEMPR6[37] , \R_DATA_TEMPR6[36] , \R_DATA_TEMPR6[35] , 
        \R_DATA_TEMPR6[34] , \R_DATA_TEMPR6[33] }));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%7%0%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R7C0 (.BLK_EN(\BLKX0[7] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[10], wD[9], wD[8], wD[7], wD[6], wD[5], 
        wD[4], wD[3], wD[2], wD[1], wD[0]}), .W_EN(\BLKZ0[7] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[7][0] ), .R_DATA({nc53, 
        \R_DATA_TEMPR7[10] , \R_DATA_TEMPR7[9] , \R_DATA_TEMPR7[8] , 
        \R_DATA_TEMPR7[7] , \R_DATA_TEMPR7[6] , \R_DATA_TEMPR7[5] , 
        \R_DATA_TEMPR7[4] , \R_DATA_TEMPR7[3] , \R_DATA_TEMPR7[2] , 
        \R_DATA_TEMPR7[1] , \R_DATA_TEMPR7[0] }));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%6%5%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R6C5 (.BLK_EN(\BLKX0[6] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, GND, GND, wD[63], wD[62], wD[61], wD[60], 
        wD[59], wD[58], wD[57], wD[56], wD[55]}), .W_EN(\BLKZ0[6] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[6][5] ), .R_DATA({nc54, nc55, nc56, 
        \R_DATA_TEMPR6[63] , \R_DATA_TEMPR6[62] , \R_DATA_TEMPR6[61] , 
        \R_DATA_TEMPR6[60] , \R_DATA_TEMPR6[59] , \R_DATA_TEMPR6[58] , 
        \R_DATA_TEMPR6[57] , \R_DATA_TEMPR6[56] , \R_DATA_TEMPR6[55] })
        );
    OR4 OR4_43 (.A(\R_DATA_TEMPR0[53] ), .B(\R_DATA_TEMPR1[53] ), .C(
        \R_DATA_TEMPR2[53] ), .D(\R_DATA_TEMPR3[53] ), .Y(OR4_43_Y));
    OR4 OR4_22 (.A(\R_DATA_TEMPR0[5] ), .B(\R_DATA_TEMPR1[5] ), .C(
        \R_DATA_TEMPR2[5] ), .D(\R_DATA_TEMPR3[5] ), .Y(OR4_22_Y));
    OR2 OR2_36 (.A(\R_DATA_TEMPR4[61] ), .B(\R_DATA_TEMPR5[61] ), .Y(
        OR2_36_Y));
    OR4 OR4_4 (.A(\R_DATA_TEMPR0[30] ), .B(\R_DATA_TEMPR1[30] ), .C(
        \R_DATA_TEMPR2[30] ), .D(\R_DATA_TEMPR3[30] ), .Y(OR4_4_Y));
    OR4 \OR4_rD[5]  (.A(OR4_22_Y), .B(OR2_50_Y), .C(\R_DATA_TEMPR6[5] )
        , .D(\R_DATA_TEMPR7[5] ), .Y(rD[5]));
    CFG3 #( .INIT(8'h20) )  \CFG3_BLKX0[2]  (.A(CFG2_5_Y), .B(rAddr[8])
        , .C(VCC), .Y(\BLKX0[2] ));
    OR2 OR2_24 (.A(\R_DATA_TEMPR4[63] ), .B(\R_DATA_TEMPR5[63] ), .Y(
        OR2_24_Y));
    OR4 OR4_19 (.A(\R_DATA_TEMPR0[12] ), .B(\R_DATA_TEMPR1[12] ), .C(
        \R_DATA_TEMPR2[12] ), .D(\R_DATA_TEMPR3[12] ), .Y(OR4_19_Y));
    OR4 OR4_27 (.A(\R_DATA_TEMPR0[46] ), .B(\R_DATA_TEMPR1[46] ), .C(
        \R_DATA_TEMPR2[46] ), .D(\R_DATA_TEMPR3[46] ), .Y(OR4_27_Y));
    OR4 OR4_58 (.A(\R_DATA_TEMPR0[27] ), .B(\R_DATA_TEMPR1[27] ), .C(
        \R_DATA_TEMPR2[27] ), .D(\R_DATA_TEMPR3[27] ), .Y(OR4_58_Y));
    OR2 OR2_49 (.A(\R_DATA_TEMPR4[31] ), .B(\R_DATA_TEMPR5[31] ), .Y(
        OR2_49_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%0%4%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R0C4 (.BLK_EN(\BLKX0[0] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[54], wD[53], wD[52], wD[51], wD[50], 
        wD[49], wD[48], wD[47], wD[46], wD[45], wD[44]}), .W_EN(
        \BLKZ0[0] ), .ACCESS_BUSY(\ACCESS_BUSY[0][4] ), .R_DATA({nc57, 
        \R_DATA_TEMPR0[54] , \R_DATA_TEMPR0[53] , \R_DATA_TEMPR0[52] , 
        \R_DATA_TEMPR0[51] , \R_DATA_TEMPR0[50] , \R_DATA_TEMPR0[49] , 
        \R_DATA_TEMPR0[48] , \R_DATA_TEMPR0[47] , \R_DATA_TEMPR0[46] , 
        \R_DATA_TEMPR0[45] , \R_DATA_TEMPR0[44] }));
    OR4 \OR4_rD[52]  (.A(OR4_9_Y), .B(OR2_51_Y), .C(
        \R_DATA_TEMPR6[52] ), .D(\R_DATA_TEMPR7[52] ), .Y(rD[52]));
    OR2 OR2_12 (.A(\R_DATA_TEMPR4[32] ), .B(\R_DATA_TEMPR5[32] ), .Y(
        OR2_12_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%7%2%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R7C2 (.BLK_EN(\BLKX0[7] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[32], wD[31], wD[30], wD[29], wD[28], 
        wD[27], wD[26], wD[25], wD[24], wD[23], wD[22]}), .W_EN(
        \BLKZ0[7] ), .ACCESS_BUSY(\ACCESS_BUSY[7][2] ), .R_DATA({nc58, 
        \R_DATA_TEMPR7[32] , \R_DATA_TEMPR7[31] , \R_DATA_TEMPR7[30] , 
        \R_DATA_TEMPR7[29] , \R_DATA_TEMPR7[28] , \R_DATA_TEMPR7[27] , 
        \R_DATA_TEMPR7[26] , \R_DATA_TEMPR7[25] , \R_DATA_TEMPR7[24] , 
        \R_DATA_TEMPR7[23] , \R_DATA_TEMPR7[22] }));
    OR4 \OR4_rD[0]  (.A(OR4_63_Y), .B(OR2_44_Y), .C(\R_DATA_TEMPR6[0] )
        , .D(\R_DATA_TEMPR7[0] ), .Y(rD[0]));
    OR4 \OR4_rD[37]  (.A(OR4_7_Y), .B(OR2_37_Y), .C(
        \R_DATA_TEMPR6[37] ), .D(\R_DATA_TEMPR7[37] ), .Y(rD[37]));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%1%4%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R1C4 (.BLK_EN(\BLKX0[1] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[54], wD[53], wD[52], wD[51], wD[50], 
        wD[49], wD[48], wD[47], wD[46], wD[45], wD[44]}), .W_EN(
        \BLKZ0[1] ), .ACCESS_BUSY(\ACCESS_BUSY[1][4] ), .R_DATA({nc59, 
        \R_DATA_TEMPR1[54] , \R_DATA_TEMPR1[53] , \R_DATA_TEMPR1[52] , 
        \R_DATA_TEMPR1[51] , \R_DATA_TEMPR1[50] , \R_DATA_TEMPR1[49] , 
        \R_DATA_TEMPR1[48] , \R_DATA_TEMPR1[47] , \R_DATA_TEMPR1[46] , 
        \R_DATA_TEMPR1[45] , \R_DATA_TEMPR1[44] }));
    OR4 \OR4_rD[54]  (.A(OR4_28_Y), .B(OR2_52_Y), .C(
        \R_DATA_TEMPR6[54] ), .D(\R_DATA_TEMPR7[54] ), .Y(rD[54]));
    CFG3 #( .INIT(8'h80) )  \CFG3_BLKZ0[6]  (.A(CFG2_2_Y), .B(wAddr[8])
        , .C(wEn), .Y(\BLKZ0[6] ));
    OR4 \OR4_rD[33]  (.A(OR4_6_Y), .B(OR2_41_Y), .C(
        \R_DATA_TEMPR6[33] ), .D(\R_DATA_TEMPR7[33] ), .Y(rD[33]));
    OR2 OR2_20 (.A(\R_DATA_TEMPR4[16] ), .B(\R_DATA_TEMPR5[16] ), .Y(
        OR2_20_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%1%5%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R1C5 (.BLK_EN(\BLKX0[1] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, GND, GND, wD[63], wD[62], wD[61], wD[60], 
        wD[59], wD[58], wD[57], wD[56], wD[55]}), .W_EN(\BLKZ0[1] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[1][5] ), .R_DATA({nc60, nc61, nc62, 
        \R_DATA_TEMPR1[63] , \R_DATA_TEMPR1[62] , \R_DATA_TEMPR1[61] , 
        \R_DATA_TEMPR1[60] , \R_DATA_TEMPR1[59] , \R_DATA_TEMPR1[58] , 
        \R_DATA_TEMPR1[57] , \R_DATA_TEMPR1[56] , \R_DATA_TEMPR1[55] })
        );
    OR2 OR2_17 (.A(\R_DATA_TEMPR4[42] ), .B(\R_DATA_TEMPR5[42] ), .Y(
        OR2_17_Y));
    RAM64x12 #( .RAMINDEX("COREFFT_C0_0%512%64%SPEED%0%1%MICRO_RAM")
         )  COREFFT_C0_COREFFT_C0_0_uram_g5_R0C1 (.BLK_EN(\BLKX0[0] ), 
        .BUSY_FB(GND), .R_ADDR({rAddr[5], rAddr[4], rAddr[3], rAddr[2], 
        rAddr[1], rAddr[0]}), .R_ADDR_AD_N(VCC), .R_ADDR_AL_N(VCC), 
        .R_ADDR_BYPASS(GND), .R_ADDR_EN(VCC), .R_ADDR_SD(GND), 
        .R_ADDR_SL_N(VCC), .R_CLK(rClk), .R_DATA_AD_N(VCC), 
        .R_DATA_AL_N(VCC), .R_DATA_BYPASS(GND), .R_DATA_EN(VCC), 
        .R_DATA_SD(GND), .R_DATA_SL_N(VCC), .W_ADDR({wAddr[5], 
        wAddr[4], wAddr[3], wAddr[2], wAddr[1], wAddr[0]}), .W_CLK(
        wClk), .W_DATA({GND, wD[21], wD[20], wD[19], wD[18], wD[17], 
        wD[16], wD[15], wD[14], wD[13], wD[12], wD[11]}), .W_EN(
        \BLKZ0[0] ), .ACCESS_BUSY(\ACCESS_BUSY[0][1] ), .R_DATA({nc63, 
        \R_DATA_TEMPR0[21] , \R_DATA_TEMPR0[20] , \R_DATA_TEMPR0[19] , 
        \R_DATA_TEMPR0[18] , \R_DATA_TEMPR0[17] , \R_DATA_TEMPR0[16] , 
        \R_DATA_TEMPR0[15] , \R_DATA_TEMPR0[14] , \R_DATA_TEMPR0[13] , 
        \R_DATA_TEMPR0[12] , \R_DATA_TEMPR0[11] }));
    OR4 OR4_35 (.A(\R_DATA_TEMPR0[24] ), .B(\R_DATA_TEMPR1[24] ), .C(
        \R_DATA_TEMPR2[24] ), .D(\R_DATA_TEMPR3[24] ), .Y(OR4_35_Y));
    OR2 OR2_32 (.A(\R_DATA_TEMPR4[8] ), .B(\R_DATA_TEMPR5[8] ), .Y(
        OR2_32_Y));
    OR4 OR4_48 (.A(\R_DATA_TEMPR0[60] ), .B(\R_DATA_TEMPR1[60] ), .C(
        \R_DATA_TEMPR2[60] ), .D(\R_DATA_TEMPR3[60] ), .Y(OR4_48_Y));
    OR4 \OR4_rD[2]  (.A(OR4_5_Y), .B(OR2_48_Y), .C(\R_DATA_TEMPR6[2] ), 
        .D(\R_DATA_TEMPR7[2] ), .Y(rD[2]));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
