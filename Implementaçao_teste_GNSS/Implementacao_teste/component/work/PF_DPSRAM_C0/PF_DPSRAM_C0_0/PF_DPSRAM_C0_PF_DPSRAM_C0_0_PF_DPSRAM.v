`timescale 1 ns/100 ps
// Version: 2024.2 2024.2.0.13


module PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM(
       A_DIN,
       A_DOUT,
       B_DIN,
       B_DOUT,
       A_ADDR,
       B_ADDR,
       CLK,
       A_WEN,
       B_WEN
    );
input  [23:0] A_DIN;
output [23:0] A_DOUT;
input  [23:0] B_DIN;
output [23:0] B_DOUT;
input  [15:0] A_ADDR;
input  [15:0] B_ADDR;
input  CLK;
input  A_WEN;
input  B_WEN;

    wire \B_DOUT_TEMPR0[0] , \B_DOUT_TEMPR1[0] , \B_DOUT_TEMPR2[0] , 
        \B_DOUT_TEMPR3[0] , \B_DOUT_TEMPR0[1] , \B_DOUT_TEMPR1[1] , 
        \B_DOUT_TEMPR2[1] , \B_DOUT_TEMPR3[1] , \B_DOUT_TEMPR0[2] , 
        \B_DOUT_TEMPR1[2] , \B_DOUT_TEMPR2[2] , \B_DOUT_TEMPR3[2] , 
        \B_DOUT_TEMPR0[3] , \B_DOUT_TEMPR1[3] , \B_DOUT_TEMPR2[3] , 
        \B_DOUT_TEMPR3[3] , \B_DOUT_TEMPR0[4] , \B_DOUT_TEMPR1[4] , 
        \B_DOUT_TEMPR2[4] , \B_DOUT_TEMPR3[4] , \B_DOUT_TEMPR0[5] , 
        \B_DOUT_TEMPR1[5] , \B_DOUT_TEMPR2[5] , \B_DOUT_TEMPR3[5] , 
        \B_DOUT_TEMPR0[6] , \B_DOUT_TEMPR1[6] , \B_DOUT_TEMPR2[6] , 
        \B_DOUT_TEMPR3[6] , \B_DOUT_TEMPR0[7] , \B_DOUT_TEMPR1[7] , 
        \B_DOUT_TEMPR2[7] , \B_DOUT_TEMPR3[7] , \B_DOUT_TEMPR0[8] , 
        \B_DOUT_TEMPR1[8] , \B_DOUT_TEMPR2[8] , \B_DOUT_TEMPR3[8] , 
        \B_DOUT_TEMPR0[9] , \B_DOUT_TEMPR1[9] , \B_DOUT_TEMPR2[9] , 
        \B_DOUT_TEMPR3[9] , \B_DOUT_TEMPR0[10] , \B_DOUT_TEMPR1[10] , 
        \B_DOUT_TEMPR2[10] , \B_DOUT_TEMPR3[10] , \B_DOUT_TEMPR0[11] , 
        \B_DOUT_TEMPR1[11] , \B_DOUT_TEMPR2[11] , \B_DOUT_TEMPR3[11] , 
        \B_DOUT_TEMPR0[12] , \B_DOUT_TEMPR1[12] , \B_DOUT_TEMPR2[12] , 
        \B_DOUT_TEMPR3[12] , \B_DOUT_TEMPR0[13] , \B_DOUT_TEMPR1[13] , 
        \B_DOUT_TEMPR2[13] , \B_DOUT_TEMPR3[13] , \B_DOUT_TEMPR0[14] , 
        \B_DOUT_TEMPR1[14] , \B_DOUT_TEMPR2[14] , \B_DOUT_TEMPR3[14] , 
        \B_DOUT_TEMPR0[15] , \B_DOUT_TEMPR1[15] , \B_DOUT_TEMPR2[15] , 
        \B_DOUT_TEMPR3[15] , \B_DOUT_TEMPR0[16] , \B_DOUT_TEMPR1[16] , 
        \B_DOUT_TEMPR2[16] , \B_DOUT_TEMPR3[16] , \B_DOUT_TEMPR0[17] , 
        \B_DOUT_TEMPR1[17] , \B_DOUT_TEMPR2[17] , \B_DOUT_TEMPR3[17] , 
        \B_DOUT_TEMPR0[18] , \B_DOUT_TEMPR1[18] , \B_DOUT_TEMPR2[18] , 
        \B_DOUT_TEMPR3[18] , \B_DOUT_TEMPR0[19] , \B_DOUT_TEMPR1[19] , 
        \B_DOUT_TEMPR2[19] , \B_DOUT_TEMPR3[19] , \B_DOUT_TEMPR0[20] , 
        \B_DOUT_TEMPR1[20] , \B_DOUT_TEMPR2[20] , \B_DOUT_TEMPR3[20] , 
        \B_DOUT_TEMPR0[21] , \B_DOUT_TEMPR1[21] , \B_DOUT_TEMPR2[21] , 
        \B_DOUT_TEMPR3[21] , \B_DOUT_TEMPR0[22] , \B_DOUT_TEMPR1[22] , 
        \B_DOUT_TEMPR2[22] , \B_DOUT_TEMPR3[22] , \B_DOUT_TEMPR0[23] , 
        \B_DOUT_TEMPR1[23] , \B_DOUT_TEMPR2[23] , \B_DOUT_TEMPR3[23] , 
        \A_DOUT_TEMPR0[0] , \A_DOUT_TEMPR1[0] , \A_DOUT_TEMPR2[0] , 
        \A_DOUT_TEMPR3[0] , \A_DOUT_TEMPR0[1] , \A_DOUT_TEMPR1[1] , 
        \A_DOUT_TEMPR2[1] , \A_DOUT_TEMPR3[1] , \A_DOUT_TEMPR0[2] , 
        \A_DOUT_TEMPR1[2] , \A_DOUT_TEMPR2[2] , \A_DOUT_TEMPR3[2] , 
        \A_DOUT_TEMPR0[3] , \A_DOUT_TEMPR1[3] , \A_DOUT_TEMPR2[3] , 
        \A_DOUT_TEMPR3[3] , \A_DOUT_TEMPR0[4] , \A_DOUT_TEMPR1[4] , 
        \A_DOUT_TEMPR2[4] , \A_DOUT_TEMPR3[4] , \A_DOUT_TEMPR0[5] , 
        \A_DOUT_TEMPR1[5] , \A_DOUT_TEMPR2[5] , \A_DOUT_TEMPR3[5] , 
        \A_DOUT_TEMPR0[6] , \A_DOUT_TEMPR1[6] , \A_DOUT_TEMPR2[6] , 
        \A_DOUT_TEMPR3[6] , \A_DOUT_TEMPR0[7] , \A_DOUT_TEMPR1[7] , 
        \A_DOUT_TEMPR2[7] , \A_DOUT_TEMPR3[7] , \A_DOUT_TEMPR0[8] , 
        \A_DOUT_TEMPR1[8] , \A_DOUT_TEMPR2[8] , \A_DOUT_TEMPR3[8] , 
        \A_DOUT_TEMPR0[9] , \A_DOUT_TEMPR1[9] , \A_DOUT_TEMPR2[9] , 
        \A_DOUT_TEMPR3[9] , \A_DOUT_TEMPR0[10] , \A_DOUT_TEMPR1[10] , 
        \A_DOUT_TEMPR2[10] , \A_DOUT_TEMPR3[10] , \A_DOUT_TEMPR0[11] , 
        \A_DOUT_TEMPR1[11] , \A_DOUT_TEMPR2[11] , \A_DOUT_TEMPR3[11] , 
        \A_DOUT_TEMPR0[12] , \A_DOUT_TEMPR1[12] , \A_DOUT_TEMPR2[12] , 
        \A_DOUT_TEMPR3[12] , \A_DOUT_TEMPR0[13] , \A_DOUT_TEMPR1[13] , 
        \A_DOUT_TEMPR2[13] , \A_DOUT_TEMPR3[13] , \A_DOUT_TEMPR0[14] , 
        \A_DOUT_TEMPR1[14] , \A_DOUT_TEMPR2[14] , \A_DOUT_TEMPR3[14] , 
        \A_DOUT_TEMPR0[15] , \A_DOUT_TEMPR1[15] , \A_DOUT_TEMPR2[15] , 
        \A_DOUT_TEMPR3[15] , \A_DOUT_TEMPR0[16] , \A_DOUT_TEMPR1[16] , 
        \A_DOUT_TEMPR2[16] , \A_DOUT_TEMPR3[16] , \A_DOUT_TEMPR0[17] , 
        \A_DOUT_TEMPR1[17] , \A_DOUT_TEMPR2[17] , \A_DOUT_TEMPR3[17] , 
        \A_DOUT_TEMPR0[18] , \A_DOUT_TEMPR1[18] , \A_DOUT_TEMPR2[18] , 
        \A_DOUT_TEMPR3[18] , \A_DOUT_TEMPR0[19] , \A_DOUT_TEMPR1[19] , 
        \A_DOUT_TEMPR2[19] , \A_DOUT_TEMPR3[19] , \A_DOUT_TEMPR0[20] , 
        \A_DOUT_TEMPR1[20] , \A_DOUT_TEMPR2[20] , \A_DOUT_TEMPR3[20] , 
        \A_DOUT_TEMPR0[21] , \A_DOUT_TEMPR1[21] , \A_DOUT_TEMPR2[21] , 
        \A_DOUT_TEMPR3[21] , \A_DOUT_TEMPR0[22] , \A_DOUT_TEMPR1[22] , 
        \A_DOUT_TEMPR2[22] , \A_DOUT_TEMPR3[22] , \A_DOUT_TEMPR0[23] , 
        \A_DOUT_TEMPR1[23] , \A_DOUT_TEMPR2[23] , \A_DOUT_TEMPR3[23] , 
        \BLKX0[0] , \BLKY0[0] , \BLKX1[0] , \BLKY1[0] , 
        \ACCESS_BUSY[0][0] , \ACCESS_BUSY[0][1] , \ACCESS_BUSY[0][2] , 
        \ACCESS_BUSY[0][3] , \ACCESS_BUSY[0][4] , \ACCESS_BUSY[0][5] , 
        \ACCESS_BUSY[0][6] , \ACCESS_BUSY[0][7] , \ACCESS_BUSY[0][8] , 
        \ACCESS_BUSY[0][9] , \ACCESS_BUSY[0][10] , 
        \ACCESS_BUSY[0][11] , \ACCESS_BUSY[0][12] , 
        \ACCESS_BUSY[0][13] , \ACCESS_BUSY[0][14] , 
        \ACCESS_BUSY[0][15] , \ACCESS_BUSY[0][16] , 
        \ACCESS_BUSY[0][17] , \ACCESS_BUSY[0][18] , 
        \ACCESS_BUSY[0][19] , \ACCESS_BUSY[0][20] , 
        \ACCESS_BUSY[0][21] , \ACCESS_BUSY[0][22] , 
        \ACCESS_BUSY[0][23] , \ACCESS_BUSY[1][0] , \ACCESS_BUSY[1][1] , 
        \ACCESS_BUSY[1][2] , \ACCESS_BUSY[1][3] , \ACCESS_BUSY[1][4] , 
        \ACCESS_BUSY[1][5] , \ACCESS_BUSY[1][6] , \ACCESS_BUSY[1][7] , 
        \ACCESS_BUSY[1][8] , \ACCESS_BUSY[1][9] , \ACCESS_BUSY[1][10] , 
        \ACCESS_BUSY[1][11] , \ACCESS_BUSY[1][12] , 
        \ACCESS_BUSY[1][13] , \ACCESS_BUSY[1][14] , 
        \ACCESS_BUSY[1][15] , \ACCESS_BUSY[1][16] , 
        \ACCESS_BUSY[1][17] , \ACCESS_BUSY[1][18] , 
        \ACCESS_BUSY[1][19] , \ACCESS_BUSY[1][20] , 
        \ACCESS_BUSY[1][21] , \ACCESS_BUSY[1][22] , 
        \ACCESS_BUSY[1][23] , \ACCESS_BUSY[2][0] , \ACCESS_BUSY[2][1] , 
        \ACCESS_BUSY[2][2] , \ACCESS_BUSY[2][3] , \ACCESS_BUSY[2][4] , 
        \ACCESS_BUSY[2][5] , \ACCESS_BUSY[2][6] , \ACCESS_BUSY[2][7] , 
        \ACCESS_BUSY[2][8] , \ACCESS_BUSY[2][9] , \ACCESS_BUSY[2][10] , 
        \ACCESS_BUSY[2][11] , \ACCESS_BUSY[2][12] , 
        \ACCESS_BUSY[2][13] , \ACCESS_BUSY[2][14] , 
        \ACCESS_BUSY[2][15] , \ACCESS_BUSY[2][16] , 
        \ACCESS_BUSY[2][17] , \ACCESS_BUSY[2][18] , 
        \ACCESS_BUSY[2][19] , \ACCESS_BUSY[2][20] , 
        \ACCESS_BUSY[2][21] , \ACCESS_BUSY[2][22] , 
        \ACCESS_BUSY[2][23] , \ACCESS_BUSY[3][0] , \ACCESS_BUSY[3][1] , 
        \ACCESS_BUSY[3][2] , \ACCESS_BUSY[3][3] , \ACCESS_BUSY[3][4] , 
        \ACCESS_BUSY[3][5] , \ACCESS_BUSY[3][6] , \ACCESS_BUSY[3][7] , 
        \ACCESS_BUSY[3][8] , \ACCESS_BUSY[3][9] , \ACCESS_BUSY[3][10] , 
        \ACCESS_BUSY[3][11] , \ACCESS_BUSY[3][12] , 
        \ACCESS_BUSY[3][13] , \ACCESS_BUSY[3][14] , 
        \ACCESS_BUSY[3][15] , \ACCESS_BUSY[3][16] , 
        \ACCESS_BUSY[3][17] , \ACCESS_BUSY[3][18] , 
        \ACCESS_BUSY[3][19] , \ACCESS_BUSY[3][20] , 
        \ACCESS_BUSY[3][21] , \ACCESS_BUSY[3][22] , 
        \ACCESS_BUSY[3][23] , VCC, GND, ADLIB_VCC;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign ADLIB_VCC = VCC_power_net1;
    
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%10%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C10 (.A_DOUT({nc0, 
        nc1, nc2, nc3, nc4, nc5, nc6, nc7, nc8, nc9, nc10, nc11, nc12, 
        nc13, nc14, nc15, nc16, nc17, nc18, \A_DOUT_TEMPR3[10] }), 
        .B_DOUT({nc19, nc20, nc21, nc22, nc23, nc24, nc25, nc26, nc27, 
        nc28, nc29, nc30, nc31, nc32, nc33, nc34, nc35, nc36, nc37, 
        \B_DOUT_TEMPR3[10] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[3][10] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, A_ADDR[15], 
        A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[10]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[10]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%17%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C17 (.A_DOUT({nc38, 
        nc39, nc40, nc41, nc42, nc43, nc44, nc45, nc46, nc47, nc48, 
        nc49, nc50, nc51, nc52, nc53, nc54, nc55, nc56, 
        \A_DOUT_TEMPR2[17] }), .B_DOUT({nc57, nc58, nc59, nc60, nc61, 
        nc62, nc63, nc64, nc65, nc66, nc67, nc68, nc69, nc70, nc71, 
        nc72, nc73, nc74, nc75, \B_DOUT_TEMPR2[17] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][17] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[17]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[17]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[13]  (.A(\A_DOUT_TEMPR0[13] ), .B(
        \A_DOUT_TEMPR1[13] ), .C(\A_DOUT_TEMPR2[13] ), .D(
        \A_DOUT_TEMPR3[13] ), .Y(A_DOUT[13]));
    OR4 \OR4_B_DOUT[0]  (.A(\B_DOUT_TEMPR0[0] ), .B(\B_DOUT_TEMPR1[0] )
        , .C(\B_DOUT_TEMPR2[0] ), .D(\B_DOUT_TEMPR3[0] ), .Y(B_DOUT[0])
        );
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%5%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C5 (.A_DOUT({nc76, 
        nc77, nc78, nc79, nc80, nc81, nc82, nc83, nc84, nc85, nc86, 
        nc87, nc88, nc89, nc90, nc91, nc92, nc93, nc94, 
        \A_DOUT_TEMPR0[5] }), .B_DOUT({nc95, nc96, nc97, nc98, nc99, 
        nc100, nc101, nc102, nc103, nc104, nc105, nc106, nc107, nc108, 
        nc109, nc110, nc111, nc112, nc113, \B_DOUT_TEMPR0[5] }), 
        .DB_DETECT(), .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][5] ), 
        .A_ADDR({A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], 
        A_ADDR[9], A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], 
        A_ADDR[4], A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), 
        .A_BLK_EN({VCC, \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, A_DIN[5]}), .A_REN(VCC), 
        .A_WEN({GND, A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], 
        B_ADDR[11], B_ADDR[10], B_ADDR[9], B_ADDR[8], B_ADDR[7], 
        B_ADDR[6], B_ADDR[5], B_ADDR[4], B_ADDR[3], B_ADDR[2], 
        B_ADDR[1], B_ADDR[0]}), .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] })
        , .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        B_DIN[5]}), .B_REN(VCC), .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), 
        .B_DOUT_ARST_N(VCC), .B_DOUT_SRST_N(VCC), .ECC_EN(GND), 
        .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), .A_WMODE({GND, GND}), 
        .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND})
        , .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_B_DOUT[9]  (.A(\B_DOUT_TEMPR0[9] ), .B(\B_DOUT_TEMPR1[9] )
        , .C(\B_DOUT_TEMPR2[9] ), .D(\B_DOUT_TEMPR3[9] ), .Y(B_DOUT[9])
        );
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%14%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C14 (.A_DOUT({
        nc114, nc115, nc116, nc117, nc118, nc119, nc120, nc121, nc122, 
        nc123, nc124, nc125, nc126, nc127, nc128, nc129, nc130, nc131, 
        nc132, \A_DOUT_TEMPR3[14] }), .B_DOUT({nc133, nc134, nc135, 
        nc136, nc137, nc138, nc139, nc140, nc141, nc142, nc143, nc144, 
        nc145, nc146, nc147, nc148, nc149, nc150, nc151, 
        \B_DOUT_TEMPR3[14] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[3][14] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, A_ADDR[15], 
        A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[14]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[14]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%3%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C3 (.A_DOUT({nc152, 
        nc153, nc154, nc155, nc156, nc157, nc158, nc159, nc160, nc161, 
        nc162, nc163, nc164, nc165, nc166, nc167, nc168, nc169, nc170, 
        \A_DOUT_TEMPR0[3] }), .B_DOUT({nc171, nc172, nc173, nc174, 
        nc175, nc176, nc177, nc178, nc179, nc180, nc181, nc182, nc183, 
        nc184, nc185, nc186, nc187, nc188, nc189, \B_DOUT_TEMPR0[3] }), 
        .DB_DETECT(), .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][3] ), 
        .A_ADDR({A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], 
        A_ADDR[9], A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], 
        A_ADDR[4], A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), 
        .A_BLK_EN({VCC, \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, A_DIN[3]}), .A_REN(VCC), 
        .A_WEN({GND, A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], 
        B_ADDR[11], B_ADDR[10], B_ADDR[9], B_ADDR[8], B_ADDR[7], 
        B_ADDR[6], B_ADDR[5], B_ADDR[4], B_ADDR[3], B_ADDR[2], 
        B_ADDR[1], B_ADDR[0]}), .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] })
        , .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        B_DIN[3]}), .B_REN(VCC), .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), 
        .B_DOUT_ARST_N(VCC), .B_DOUT_SRST_N(VCC), .ECC_EN(GND), 
        .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), .A_WMODE({GND, GND}), 
        .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND})
        , .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%12%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C12 (.A_DOUT({
        nc190, nc191, nc192, nc193, nc194, nc195, nc196, nc197, nc198, 
        nc199, nc200, nc201, nc202, nc203, nc204, nc205, nc206, nc207, 
        nc208, \A_DOUT_TEMPR0[12] }), .B_DOUT({nc209, nc210, nc211, 
        nc212, nc213, nc214, nc215, nc216, nc217, nc218, nc219, nc220, 
        nc221, nc222, nc223, nc224, nc225, nc226, nc227, 
        \B_DOUT_TEMPR0[12] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][12] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, \BLKX1[0] , 
        \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[12]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[12]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[19]  (.A(\A_DOUT_TEMPR0[19] ), .B(
        \A_DOUT_TEMPR1[19] ), .C(\A_DOUT_TEMPR2[19] ), .D(
        \A_DOUT_TEMPR3[19] ), .Y(A_DOUT[19]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%2%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C2 (.A_DOUT({nc228, 
        nc229, nc230, nc231, nc232, nc233, nc234, nc235, nc236, nc237, 
        nc238, nc239, nc240, nc241, nc242, nc243, nc244, nc245, nc246, 
        \A_DOUT_TEMPR2[2] }), .B_DOUT({nc247, nc248, nc249, nc250, 
        nc251, nc252, nc253, nc254, nc255, nc256, nc257, nc258, nc259, 
        nc260, nc261, nc262, nc263, nc264, nc265, \B_DOUT_TEMPR2[2] }), 
        .DB_DETECT(), .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][2] ), 
        .A_ADDR({A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], 
        A_ADDR[9], A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], 
        A_ADDR[4], A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), 
        .A_BLK_EN({VCC, A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, A_DIN[2]}), .A_REN(VCC), 
        .A_WEN({GND, A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], 
        B_ADDR[11], B_ADDR[10], B_ADDR[9], B_ADDR[8], B_ADDR[7], 
        B_ADDR[6], B_ADDR[5], B_ADDR[4], B_ADDR[3], B_ADDR[2], 
        B_ADDR[1], B_ADDR[0]}), .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] })
        , .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        B_DIN[2]}), .B_REN(VCC), .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), 
        .B_DOUT_ARST_N(VCC), .B_DOUT_SRST_N(VCC), .ECC_EN(GND), 
        .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), .A_WMODE({GND, GND}), 
        .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND})
        , .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%19%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C19 (.A_DOUT({
        nc266, nc267, nc268, nc269, nc270, nc271, nc272, nc273, nc274, 
        nc275, nc276, nc277, nc278, nc279, nc280, nc281, nc282, nc283, 
        nc284, \A_DOUT_TEMPR0[19] }), .B_DOUT({nc285, nc286, nc287, 
        nc288, nc289, nc290, nc291, nc292, nc293, nc294, nc295, nc296, 
        nc297, nc298, nc299, nc300, nc301, nc302, nc303, 
        \B_DOUT_TEMPR0[19] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][19] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, \BLKX1[0] , 
        \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[19]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[19]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[17]  (.A(\A_DOUT_TEMPR0[17] ), .B(
        \A_DOUT_TEMPR1[17] ), .C(\A_DOUT_TEMPR2[17] ), .D(
        \A_DOUT_TEMPR3[17] ), .Y(A_DOUT[17]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%2%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C2 (.A_DOUT({nc304, 
        nc305, nc306, nc307, nc308, nc309, nc310, nc311, nc312, nc313, 
        nc314, nc315, nc316, nc317, nc318, nc319, nc320, nc321, nc322, 
        \A_DOUT_TEMPR1[2] }), .B_DOUT({nc323, nc324, nc325, nc326, 
        nc327, nc328, nc329, nc330, nc331, nc332, nc333, nc334, nc335, 
        nc336, nc337, nc338, nc339, nc340, nc341, \B_DOUT_TEMPR1[2] }), 
        .DB_DETECT(), .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][2] ), 
        .A_ADDR({A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], 
        A_ADDR[9], A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], 
        A_ADDR[4], A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), 
        .A_BLK_EN({VCC, \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, A_DIN[2]}), .A_REN(VCC), 
        .A_WEN({GND, A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], 
        B_ADDR[11], B_ADDR[10], B_ADDR[9], B_ADDR[8], B_ADDR[7], 
        B_ADDR[6], B_ADDR[5], B_ADDR[4], B_ADDR[3], B_ADDR[2], 
        B_ADDR[1], B_ADDR[0]}), .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]})
        , .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        B_DIN[2]}), .B_REN(VCC), .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), 
        .B_DOUT_ARST_N(VCC), .B_DOUT_SRST_N(VCC), .ECC_EN(GND), 
        .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), .A_WMODE({GND, GND}), 
        .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND})
        , .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[16]  (.A(\A_DOUT_TEMPR0[16] ), .B(
        \A_DOUT_TEMPR1[16] ), .C(\A_DOUT_TEMPR2[16] ), .D(
        \A_DOUT_TEMPR3[16] ), .Y(A_DOUT[16]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%4%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C4 (.A_DOUT({nc342, 
        nc343, nc344, nc345, nc346, nc347, nc348, nc349, nc350, nc351, 
        nc352, nc353, nc354, nc355, nc356, nc357, nc358, nc359, nc360, 
        \A_DOUT_TEMPR3[4] }), .B_DOUT({nc361, nc362, nc363, nc364, 
        nc365, nc366, nc367, nc368, nc369, nc370, nc371, nc372, nc373, 
        nc374, nc375, nc376, nc377, nc378, nc379, \B_DOUT_TEMPR3[4] }), 
        .DB_DETECT(), .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][4] ), 
        .A_ADDR({A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], 
        A_ADDR[9], A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], 
        A_ADDR[4], A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), 
        .A_BLK_EN({VCC, A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, A_DIN[4]}), .A_REN(VCC), 
        .A_WEN({GND, A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], 
        B_ADDR[11], B_ADDR[10], B_ADDR[9], B_ADDR[8], B_ADDR[7], 
        B_ADDR[6], B_ADDR[5], B_ADDR[4], B_ADDR[3], B_ADDR[2], 
        B_ADDR[1], B_ADDR[0]}), .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]})
        , .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        B_DIN[4]}), .B_REN(VCC), .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), 
        .B_DOUT_ARST_N(VCC), .B_DOUT_SRST_N(VCC), .ECC_EN(GND), 
        .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), .A_WMODE({GND, GND}), 
        .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND})
        , .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%15%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C15 (.A_DOUT({
        nc380, nc381, nc382, nc383, nc384, nc385, nc386, nc387, nc388, 
        nc389, nc390, nc391, nc392, nc393, nc394, nc395, nc396, nc397, 
        nc398, \A_DOUT_TEMPR0[15] }), .B_DOUT({nc399, nc400, nc401, 
        nc402, nc403, nc404, nc405, nc406, nc407, nc408, nc409, nc410, 
        nc411, nc412, nc413, nc414, nc415, nc416, nc417, 
        \B_DOUT_TEMPR0[15] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][15] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, \BLKX1[0] , 
        \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[15]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[15]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[22]  (.A(\A_DOUT_TEMPR0[22] ), .B(
        \A_DOUT_TEMPR1[22] ), .C(\A_DOUT_TEMPR2[22] ), .D(
        \A_DOUT_TEMPR3[22] ), .Y(A_DOUT[22]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%21%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C21 (.A_DOUT({
        nc418, nc419, nc420, nc421, nc422, nc423, nc424, nc425, nc426, 
        nc427, nc428, nc429, nc430, nc431, nc432, nc433, nc434, nc435, 
        nc436, \A_DOUT_TEMPR2[21] }), .B_DOUT({nc437, nc438, nc439, 
        nc440, nc441, nc442, nc443, nc444, nc445, nc446, nc447, nc448, 
        nc449, nc450, nc451, nc452, nc453, nc454, nc455, 
        \B_DOUT_TEMPR2[21] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[2][21] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, A_ADDR[15], 
        \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[21]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[21]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%21%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C21 (.A_DOUT({
        nc456, nc457, nc458, nc459, nc460, nc461, nc462, nc463, nc464, 
        nc465, nc466, nc467, nc468, nc469, nc470, nc471, nc472, nc473, 
        nc474, \A_DOUT_TEMPR1[21] }), .B_DOUT({nc475, nc476, nc477, 
        nc478, nc479, nc480, nc481, nc482, nc483, nc484, nc485, nc486, 
        nc487, nc488, nc489, nc490, nc491, nc492, nc493, 
        \B_DOUT_TEMPR1[21] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[1][21] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, \BLKX1[0] , 
        A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[21]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[21]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%22%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C22 (.A_DOUT({
        nc494, nc495, nc496, nc497, nc498, nc499, nc500, nc501, nc502, 
        nc503, nc504, nc505, nc506, nc507, nc508, nc509, nc510, nc511, 
        nc512, \A_DOUT_TEMPR0[22] }), .B_DOUT({nc513, nc514, nc515, 
        nc516, nc517, nc518, nc519, nc520, nc521, nc522, nc523, nc524, 
        nc525, nc526, nc527, nc528, nc529, nc530, nc531, 
        \B_DOUT_TEMPR0[22] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][22] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, \BLKX1[0] , 
        \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[22]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[22]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%1%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C1 (.A_DOUT({nc532, 
        nc533, nc534, nc535, nc536, nc537, nc538, nc539, nc540, nc541, 
        nc542, nc543, nc544, nc545, nc546, nc547, nc548, nc549, nc550, 
        \A_DOUT_TEMPR1[1] }), .B_DOUT({nc551, nc552, nc553, nc554, 
        nc555, nc556, nc557, nc558, nc559, nc560, nc561, nc562, nc563, 
        nc564, nc565, nc566, nc567, nc568, nc569, \B_DOUT_TEMPR1[1] }), 
        .DB_DETECT(), .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][1] ), 
        .A_ADDR({A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], 
        A_ADDR[9], A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], 
        A_ADDR[4], A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), 
        .A_BLK_EN({VCC, \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, A_DIN[1]}), .A_REN(VCC), 
        .A_WEN({GND, A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], 
        B_ADDR[11], B_ADDR[10], B_ADDR[9], B_ADDR[8], B_ADDR[7], 
        B_ADDR[6], B_ADDR[5], B_ADDR[4], B_ADDR[3], B_ADDR[2], 
        B_ADDR[1], B_ADDR[0]}), .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]})
        , .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        B_DIN[1]}), .B_REN(VCC), .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), 
        .B_DOUT_ARST_N(VCC), .B_DOUT_SRST_N(VCC), .ECC_EN(GND), 
        .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), .A_WMODE({GND, GND}), 
        .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND})
        , .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_B_DOUT[1]  (.A(\B_DOUT_TEMPR0[1] ), .B(\B_DOUT_TEMPR1[1] )
        , .C(\B_DOUT_TEMPR2[1] ), .D(\B_DOUT_TEMPR3[1] ), .Y(B_DOUT[1])
        );
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%23%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C23 (.A_DOUT({
        nc570, nc571, nc572, nc573, nc574, nc575, nc576, nc577, nc578, 
        nc579, nc580, nc581, nc582, nc583, nc584, nc585, nc586, nc587, 
        nc588, \A_DOUT_TEMPR2[23] }), .B_DOUT({nc589, nc590, nc591, 
        nc592, nc593, nc594, nc595, nc596, nc597, nc598, nc599, nc600, 
        nc601, nc602, nc603, nc604, nc605, nc606, nc607, 
        \B_DOUT_TEMPR2[23] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[2][23] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, A_ADDR[15], 
        \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[23]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[23]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%11%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C11 (.A_DOUT({
        nc608, nc609, nc610, nc611, nc612, nc613, nc614, nc615, nc616, 
        nc617, nc618, nc619, nc620, nc621, nc622, nc623, nc624, nc625, 
        nc626, \A_DOUT_TEMPR1[11] }), .B_DOUT({nc627, nc628, nc629, 
        nc630, nc631, nc632, nc633, nc634, nc635, nc636, nc637, nc638, 
        nc639, nc640, nc641, nc642, nc643, nc644, nc645, 
        \B_DOUT_TEMPR1[11] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[1][11] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, \BLKX1[0] , 
        A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[11]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[11]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%23%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C23 (.A_DOUT({
        nc646, nc647, nc648, nc649, nc650, nc651, nc652, nc653, nc654, 
        nc655, nc656, nc657, nc658, nc659, nc660, nc661, nc662, nc663, 
        nc664, \A_DOUT_TEMPR1[23] }), .B_DOUT({nc665, nc666, nc667, 
        nc668, nc669, nc670, nc671, nc672, nc673, nc674, nc675, nc676, 
        nc677, nc678, nc679, nc680, nc681, nc682, nc683, 
        \B_DOUT_TEMPR1[23] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[1][23] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, \BLKX1[0] , 
        A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[23]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[23]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%6%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C6 (.A_DOUT({nc684, 
        nc685, nc686, nc687, nc688, nc689, nc690, nc691, nc692, nc693, 
        nc694, nc695, nc696, nc697, nc698, nc699, nc700, nc701, nc702, 
        \A_DOUT_TEMPR3[6] }), .B_DOUT({nc703, nc704, nc705, nc706, 
        nc707, nc708, nc709, nc710, nc711, nc712, nc713, nc714, nc715, 
        nc716, nc717, nc718, nc719, nc720, nc721, \B_DOUT_TEMPR3[6] }), 
        .DB_DETECT(), .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][6] ), 
        .A_ADDR({A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], 
        A_ADDR[9], A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], 
        A_ADDR[4], A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), 
        .A_BLK_EN({VCC, A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, A_DIN[6]}), .A_REN(VCC), 
        .A_WEN({GND, A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], 
        B_ADDR[11], B_ADDR[10], B_ADDR[9], B_ADDR[8], B_ADDR[7], 
        B_ADDR[6], B_ADDR[5], B_ADDR[4], B_ADDR[3], B_ADDR[2], 
        B_ADDR[1], B_ADDR[0]}), .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]})
        , .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        B_DIN[6]}), .B_REN(VCC), .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), 
        .B_DOUT_ARST_N(VCC), .B_DOUT_SRST_N(VCC), .ECC_EN(GND), 
        .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), .A_WMODE({GND, GND}), 
        .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND})
        , .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_B_DOUT[5]  (.A(\B_DOUT_TEMPR0[5] ), .B(\B_DOUT_TEMPR1[5] )
        , .C(\B_DOUT_TEMPR2[5] ), .D(\B_DOUT_TEMPR3[5] ), .Y(B_DOUT[5])
        );
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%12%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C12 (.A_DOUT({
        nc722, nc723, nc724, nc725, nc726, nc727, nc728, nc729, nc730, 
        nc731, nc732, nc733, nc734, nc735, nc736, nc737, nc738, nc739, 
        nc740, \A_DOUT_TEMPR2[12] }), .B_DOUT({nc741, nc742, nc743, 
        nc744, nc745, nc746, nc747, nc748, nc749, nc750, nc751, nc752, 
        nc753, nc754, nc755, nc756, nc757, nc758, nc759, 
        \B_DOUT_TEMPR2[12] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[2][12] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, A_ADDR[15], 
        \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[12]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[12]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%19%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C19 (.A_DOUT({
        nc760, nc761, nc762, nc763, nc764, nc765, nc766, nc767, nc768, 
        nc769, nc770, nc771, nc772, nc773, nc774, nc775, nc776, nc777, 
        nc778, \A_DOUT_TEMPR2[19] }), .B_DOUT({nc779, nc780, nc781, 
        nc782, nc783, nc784, nc785, nc786, nc787, nc788, nc789, nc790, 
        nc791, nc792, nc793, nc794, nc795, nc796, nc797, 
        \B_DOUT_TEMPR2[19] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[2][19] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, A_ADDR[15], 
        \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[19]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[19]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_B_DOUT[19]  (.A(\B_DOUT_TEMPR0[19] ), .B(
        \B_DOUT_TEMPR1[19] ), .C(\B_DOUT_TEMPR2[19] ), .D(
        \B_DOUT_TEMPR3[19] ), .Y(B_DOUT[19]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%9%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C9 (.A_DOUT({nc798, 
        nc799, nc800, nc801, nc802, nc803, nc804, nc805, nc806, nc807, 
        nc808, nc809, nc810, nc811, nc812, nc813, nc814, nc815, nc816, 
        \A_DOUT_TEMPR3[9] }), .B_DOUT({nc817, nc818, nc819, nc820, 
        nc821, nc822, nc823, nc824, nc825, nc826, nc827, nc828, nc829, 
        nc830, nc831, nc832, nc833, nc834, nc835, \B_DOUT_TEMPR3[9] }), 
        .DB_DETECT(), .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][9] ), 
        .A_ADDR({A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], 
        A_ADDR[9], A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], 
        A_ADDR[4], A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), 
        .A_BLK_EN({VCC, A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, A_DIN[9]}), .A_REN(VCC), 
        .A_WEN({GND, A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], 
        B_ADDR[11], B_ADDR[10], B_ADDR[9], B_ADDR[8], B_ADDR[7], 
        B_ADDR[6], B_ADDR[5], B_ADDR[4], B_ADDR[3], B_ADDR[2], 
        B_ADDR[1], B_ADDR[0]}), .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]})
        , .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        B_DIN[9]}), .B_REN(VCC), .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), 
        .B_DOUT_ARST_N(VCC), .B_DOUT_SRST_N(VCC), .ECC_EN(GND), 
        .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), .A_WMODE({GND, GND}), 
        .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND})
        , .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%8%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C8 (.A_DOUT({nc836, 
        nc837, nc838, nc839, nc840, nc841, nc842, nc843, nc844, nc845, 
        nc846, nc847, nc848, nc849, nc850, nc851, nc852, nc853, nc854, 
        \A_DOUT_TEMPR0[8] }), .B_DOUT({nc855, nc856, nc857, nc858, 
        nc859, nc860, nc861, nc862, nc863, nc864, nc865, nc866, nc867, 
        nc868, nc869, nc870, nc871, nc872, nc873, \B_DOUT_TEMPR0[8] }), 
        .DB_DETECT(), .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][8] ), 
        .A_ADDR({A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], 
        A_ADDR[9], A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], 
        A_ADDR[4], A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), 
        .A_BLK_EN({VCC, \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, A_DIN[8]}), .A_REN(VCC), 
        .A_WEN({GND, A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], 
        B_ADDR[11], B_ADDR[10], B_ADDR[9], B_ADDR[8], B_ADDR[7], 
        B_ADDR[6], B_ADDR[5], B_ADDR[4], B_ADDR[3], B_ADDR[2], 
        B_ADDR[1], B_ADDR[0]}), .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] })
        , .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        B_DIN[8]}), .B_REN(VCC), .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), 
        .B_DOUT_ARST_N(VCC), .B_DOUT_SRST_N(VCC), .ECC_EN(GND), 
        .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), .A_WMODE({GND, GND}), 
        .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND})
        , .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%15%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C15 (.A_DOUT({
        nc874, nc875, nc876, nc877, nc878, nc879, nc880, nc881, nc882, 
        nc883, nc884, nc885, nc886, nc887, nc888, nc889, nc890, nc891, 
        nc892, \A_DOUT_TEMPR2[15] }), .B_DOUT({nc893, nc894, nc895, 
        nc896, nc897, nc898, nc899, nc900, nc901, nc902, nc903, nc904, 
        nc905, nc906, nc907, nc908, nc909, nc910, nc911, 
        \B_DOUT_TEMPR2[15] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[2][15] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, A_ADDR[15], 
        \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[15]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[15]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_B_DOUT[18]  (.A(\B_DOUT_TEMPR0[18] ), .B(
        \B_DOUT_TEMPR1[18] ), .C(\B_DOUT_TEMPR2[18] ), .D(
        \B_DOUT_TEMPR3[18] ), .Y(B_DOUT[18]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%13%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C13 (.A_DOUT({
        nc912, nc913, nc914, nc915, nc916, nc917, nc918, nc919, nc920, 
        nc921, nc922, nc923, nc924, nc925, nc926, nc927, nc928, nc929, 
        nc930, \A_DOUT_TEMPR1[13] }), .B_DOUT({nc931, nc932, nc933, 
        nc934, nc935, nc936, nc937, nc938, nc939, nc940, nc941, nc942, 
        nc943, nc944, nc945, nc946, nc947, nc948, nc949, 
        \B_DOUT_TEMPR1[13] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[1][13] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, \BLKX1[0] , 
        A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[13]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[13]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_B_DOUT[3]  (.A(\B_DOUT_TEMPR0[3] ), .B(\B_DOUT_TEMPR1[3] )
        , .C(\B_DOUT_TEMPR2[3] ), .D(\B_DOUT_TEMPR3[3] ), .Y(B_DOUT[3])
        );
    OR4 \OR4_B_DOUT[17]  (.A(\B_DOUT_TEMPR0[17] ), .B(
        \B_DOUT_TEMPR1[17] ), .C(\B_DOUT_TEMPR2[17] ), .D(
        \B_DOUT_TEMPR3[17] ), .Y(B_DOUT[17]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%16%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C16 (.A_DOUT({
        nc950, nc951, nc952, nc953, nc954, nc955, nc956, nc957, nc958, 
        nc959, nc960, nc961, nc962, nc963, nc964, nc965, nc966, nc967, 
        nc968, \A_DOUT_TEMPR0[16] }), .B_DOUT({nc969, nc970, nc971, 
        nc972, nc973, nc974, nc975, nc976, nc977, nc978, nc979, nc980, 
        nc981, nc982, nc983, nc984, nc985, nc986, nc987, 
        \B_DOUT_TEMPR0[16] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][16] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, \BLKX1[0] , 
        \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[16]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[16]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%7%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C7 (.A_DOUT({nc988, 
        nc989, nc990, nc991, nc992, nc993, nc994, nc995, nc996, nc997, 
        nc998, nc999, nc1000, nc1001, nc1002, nc1003, nc1004, nc1005, 
        nc1006, \A_DOUT_TEMPR0[7] }), .B_DOUT({nc1007, nc1008, nc1009, 
        nc1010, nc1011, nc1012, nc1013, nc1014, nc1015, nc1016, nc1017, 
        nc1018, nc1019, nc1020, nc1021, nc1022, nc1023, nc1024, nc1025, 
        \B_DOUT_TEMPR0[7] }), .DB_DETECT(), .SB_CORRECT(), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][7] ), .A_ADDR({A_ADDR[13], 
        A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], A_ADDR[8], 
        A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], A_ADDR[3], 
        A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, \BLKX1[0] , 
        \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, A_DIN[7]}), .A_REN(VCC), .A_WEN({GND, A_WEN}), 
        .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[7]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[12]  (.A(\A_DOUT_TEMPR0[12] ), .B(
        \A_DOUT_TEMPR1[12] ), .C(\A_DOUT_TEMPR2[12] ), .D(
        \A_DOUT_TEMPR3[12] ), .Y(A_DOUT[12]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%1%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C1 (.A_DOUT({
        nc1026, nc1027, nc1028, nc1029, nc1030, nc1031, nc1032, nc1033, 
        nc1034, nc1035, nc1036, nc1037, nc1038, nc1039, nc1040, nc1041, 
        nc1042, nc1043, nc1044, \A_DOUT_TEMPR3[1] }), .B_DOUT({nc1045, 
        nc1046, nc1047, nc1048, nc1049, nc1050, nc1051, nc1052, nc1053, 
        nc1054, nc1055, nc1056, nc1057, nc1058, nc1059, nc1060, nc1061, 
        nc1062, nc1063, \B_DOUT_TEMPR3[1] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][1] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[1]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[1]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%22%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C22 (.A_DOUT({
        nc1064, nc1065, nc1066, nc1067, nc1068, nc1069, nc1070, nc1071, 
        nc1072, nc1073, nc1074, nc1075, nc1076, nc1077, nc1078, nc1079, 
        nc1080, nc1081, nc1082, \A_DOUT_TEMPR3[22] }), .B_DOUT({nc1083, 
        nc1084, nc1085, nc1086, nc1087, nc1088, nc1089, nc1090, nc1091, 
        nc1092, nc1093, nc1094, nc1095, nc1096, nc1097, nc1098, nc1099, 
        nc1100, nc1101, \B_DOUT_TEMPR3[22] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][22] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[22]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[22]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%18%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C18 (.A_DOUT({
        nc1102, nc1103, nc1104, nc1105, nc1106, nc1107, nc1108, nc1109, 
        nc1110, nc1111, nc1112, nc1113, nc1114, nc1115, nc1116, nc1117, 
        nc1118, nc1119, nc1120, \A_DOUT_TEMPR1[18] }), .B_DOUT({nc1121, 
        nc1122, nc1123, nc1124, nc1125, nc1126, nc1127, nc1128, nc1129, 
        nc1130, nc1131, nc1132, nc1133, nc1134, nc1135, nc1136, nc1137, 
        nc1138, nc1139, \B_DOUT_TEMPR1[18] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][18] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[18]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[18]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_B_DOUT[23]  (.A(\B_DOUT_TEMPR0[23] ), .B(
        \B_DOUT_TEMPR1[23] ), .C(\B_DOUT_TEMPR2[23] ), .D(
        \B_DOUT_TEMPR3[23] ), .Y(B_DOUT[23]));
    OR4 \OR4_A_DOUT[8]  (.A(\A_DOUT_TEMPR0[8] ), .B(\A_DOUT_TEMPR1[8] )
        , .C(\A_DOUT_TEMPR2[8] ), .D(\A_DOUT_TEMPR3[8] ), .Y(A_DOUT[8])
        );
    OR4 \OR4_A_DOUT[4]  (.A(\A_DOUT_TEMPR0[4] ), .B(\A_DOUT_TEMPR1[4] )
        , .C(\A_DOUT_TEMPR2[4] ), .D(\A_DOUT_TEMPR3[4] ), .Y(A_DOUT[4])
        );
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%11%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C11 (.A_DOUT({
        nc1140, nc1141, nc1142, nc1143, nc1144, nc1145, nc1146, nc1147, 
        nc1148, nc1149, nc1150, nc1151, nc1152, nc1153, nc1154, nc1155, 
        nc1156, nc1157, nc1158, \A_DOUT_TEMPR3[11] }), .B_DOUT({nc1159, 
        nc1160, nc1161, nc1162, nc1163, nc1164, nc1165, nc1166, nc1167, 
        nc1168, nc1169, nc1170, nc1171, nc1172, nc1173, nc1174, nc1175, 
        nc1176, nc1177, \B_DOUT_TEMPR3[11] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][11] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[11]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[11]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%10%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C10 (.A_DOUT({
        nc1178, nc1179, nc1180, nc1181, nc1182, nc1183, nc1184, nc1185, 
        nc1186, nc1187, nc1188, nc1189, nc1190, nc1191, nc1192, nc1193, 
        nc1194, nc1195, nc1196, \A_DOUT_TEMPR0[10] }), .B_DOUT({nc1197, 
        nc1198, nc1199, nc1200, nc1201, nc1202, nc1203, nc1204, nc1205, 
        nc1206, nc1207, nc1208, nc1209, nc1210, nc1211, nc1212, nc1213, 
        nc1214, nc1215, \B_DOUT_TEMPR0[10] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][10] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[10]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[10]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%17%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C17 (.A_DOUT({
        nc1216, nc1217, nc1218, nc1219, nc1220, nc1221, nc1222, nc1223, 
        nc1224, nc1225, nc1226, nc1227, nc1228, nc1229, nc1230, nc1231, 
        nc1232, nc1233, nc1234, \A_DOUT_TEMPR1[17] }), .B_DOUT({nc1235, 
        nc1236, nc1237, nc1238, nc1239, nc1240, nc1241, nc1242, nc1243, 
        nc1244, nc1245, nc1246, nc1247, nc1248, nc1249, nc1250, nc1251, 
        nc1252, nc1253, \B_DOUT_TEMPR1[17] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][17] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[17]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[17]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%0%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C0 (.A_DOUT({
        nc1254, nc1255, nc1256, nc1257, nc1258, nc1259, nc1260, nc1261, 
        nc1262, nc1263, nc1264, nc1265, nc1266, nc1267, nc1268, nc1269, 
        nc1270, nc1271, nc1272, \A_DOUT_TEMPR3[0] }), .B_DOUT({nc1273, 
        nc1274, nc1275, nc1276, nc1277, nc1278, nc1279, nc1280, nc1281, 
        nc1282, nc1283, nc1284, nc1285, nc1286, nc1287, nc1288, nc1289, 
        nc1290, nc1291, \B_DOUT_TEMPR3[0] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][0] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[0]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[0]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%0%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C0 (.A_DOUT({
        nc1292, nc1293, nc1294, nc1295, nc1296, nc1297, nc1298, nc1299, 
        nc1300, nc1301, nc1302, nc1303, nc1304, nc1305, nc1306, nc1307, 
        nc1308, nc1309, nc1310, \A_DOUT_TEMPR0[0] }), .B_DOUT({nc1311, 
        nc1312, nc1313, nc1314, nc1315, nc1316, nc1317, nc1318, nc1319, 
        nc1320, nc1321, nc1322, nc1323, nc1324, nc1325, nc1326, nc1327, 
        nc1328, nc1329, \B_DOUT_TEMPR0[0] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][0] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[0]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[0]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%16%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C16 (.A_DOUT({
        nc1330, nc1331, nc1332, nc1333, nc1334, nc1335, nc1336, nc1337, 
        nc1338, nc1339, nc1340, nc1341, nc1342, nc1343, nc1344, nc1345, 
        nc1346, nc1347, nc1348, \A_DOUT_TEMPR2[16] }), .B_DOUT({nc1349, 
        nc1350, nc1351, nc1352, nc1353, nc1354, nc1355, nc1356, nc1357, 
        nc1358, nc1359, nc1360, nc1361, nc1362, nc1363, nc1364, nc1365, 
        nc1366, nc1367, \B_DOUT_TEMPR2[16] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][16] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[16]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[16]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%13%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C13 (.A_DOUT({
        nc1368, nc1369, nc1370, nc1371, nc1372, nc1373, nc1374, nc1375, 
        nc1376, nc1377, nc1378, nc1379, nc1380, nc1381, nc1382, nc1383, 
        nc1384, nc1385, nc1386, \A_DOUT_TEMPR3[13] }), .B_DOUT({nc1387, 
        nc1388, nc1389, nc1390, nc1391, nc1392, nc1393, nc1394, nc1395, 
        nc1396, nc1397, nc1398, nc1399, nc1400, nc1401, nc1402, nc1403, 
        nc1404, nc1405, \B_DOUT_TEMPR3[13] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][13] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[13]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[13]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%20%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C20 (.A_DOUT({
        nc1406, nc1407, nc1408, nc1409, nc1410, nc1411, nc1412, nc1413, 
        nc1414, nc1415, nc1416, nc1417, nc1418, nc1419, nc1420, nc1421, 
        nc1422, nc1423, nc1424, \A_DOUT_TEMPR0[20] }), .B_DOUT({nc1425, 
        nc1426, nc1427, nc1428, nc1429, nc1430, nc1431, nc1432, nc1433, 
        nc1434, nc1435, nc1436, nc1437, nc1438, nc1439, nc1440, nc1441, 
        nc1442, nc1443, \B_DOUT_TEMPR0[20] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][20] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[20]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[20]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%14%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C14 (.A_DOUT({
        nc1444, nc1445, nc1446, nc1447, nc1448, nc1449, nc1450, nc1451, 
        nc1452, nc1453, nc1454, nc1455, nc1456, nc1457, nc1458, nc1459, 
        nc1460, nc1461, nc1462, \A_DOUT_TEMPR0[14] }), .B_DOUT({nc1463, 
        nc1464, nc1465, nc1466, nc1467, nc1468, nc1469, nc1470, nc1471, 
        nc1472, nc1473, nc1474, nc1475, nc1476, nc1477, nc1478, nc1479, 
        nc1480, nc1481, \B_DOUT_TEMPR0[14] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][14] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[14]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[14]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%0%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C0 (.A_DOUT({
        nc1482, nc1483, nc1484, nc1485, nc1486, nc1487, nc1488, nc1489, 
        nc1490, nc1491, nc1492, nc1493, nc1494, nc1495, nc1496, nc1497, 
        nc1498, nc1499, nc1500, \A_DOUT_TEMPR2[0] }), .B_DOUT({nc1501, 
        nc1502, nc1503, nc1504, nc1505, nc1506, nc1507, nc1508, nc1509, 
        nc1510, nc1511, nc1512, nc1513, nc1514, nc1515, nc1516, nc1517, 
        nc1518, nc1519, \B_DOUT_TEMPR2[0] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][0] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[0]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[0]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_B_DOUT[16]  (.A(\B_DOUT_TEMPR0[16] ), .B(
        \B_DOUT_TEMPR1[16] ), .C(\B_DOUT_TEMPR2[16] ), .D(
        \B_DOUT_TEMPR3[16] ), .Y(B_DOUT[16]));
    OR4 \OR4_A_DOUT[15]  (.A(\A_DOUT_TEMPR0[15] ), .B(
        \A_DOUT_TEMPR1[15] ), .C(\A_DOUT_TEMPR2[15] ), .D(
        \A_DOUT_TEMPR3[15] ), .Y(A_DOUT[15]));
    OR4 \OR4_A_DOUT[21]  (.A(\A_DOUT_TEMPR0[21] ), .B(
        \A_DOUT_TEMPR1[21] ), .C(\A_DOUT_TEMPR2[21] ), .D(
        \A_DOUT_TEMPR3[21] ), .Y(A_DOUT[21]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%4%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C4 (.A_DOUT({
        nc1520, nc1521, nc1522, nc1523, nc1524, nc1525, nc1526, nc1527, 
        nc1528, nc1529, nc1530, nc1531, nc1532, nc1533, nc1534, nc1535, 
        nc1536, nc1537, nc1538, \A_DOUT_TEMPR1[4] }), .B_DOUT({nc1539, 
        nc1540, nc1541, nc1542, nc1543, nc1544, nc1545, nc1546, nc1547, 
        nc1548, nc1549, nc1550, nc1551, nc1552, nc1553, nc1554, nc1555, 
        nc1556, nc1557, \B_DOUT_TEMPR1[4] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][4] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[4]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[4]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[2]  (.A(\A_DOUT_TEMPR0[2] ), .B(\A_DOUT_TEMPR1[2] )
        , .C(\A_DOUT_TEMPR2[2] ), .D(\A_DOUT_TEMPR3[2] ), .Y(A_DOUT[2])
        );
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%18%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C18 (.A_DOUT({
        nc1558, nc1559, nc1560, nc1561, nc1562, nc1563, nc1564, nc1565, 
        nc1566, nc1567, nc1568, nc1569, nc1570, nc1571, nc1572, nc1573, 
        nc1574, nc1575, nc1576, \A_DOUT_TEMPR3[18] }), .B_DOUT({nc1577, 
        nc1578, nc1579, nc1580, nc1581, nc1582, nc1583, nc1584, nc1585, 
        nc1586, nc1587, nc1588, nc1589, nc1590, nc1591, nc1592, nc1593, 
        nc1594, nc1595, \B_DOUT_TEMPR3[18] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][18] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[18]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[18]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%10%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C10 (.A_DOUT({
        nc1596, nc1597, nc1598, nc1599, nc1600, nc1601, nc1602, nc1603, 
        nc1604, nc1605, nc1606, nc1607, nc1608, nc1609, nc1610, nc1611, 
        nc1612, nc1613, nc1614, \A_DOUT_TEMPR2[10] }), .B_DOUT({nc1615, 
        nc1616, nc1617, nc1618, nc1619, nc1620, nc1621, nc1622, nc1623, 
        nc1624, nc1625, nc1626, nc1627, nc1628, nc1629, nc1630, nc1631, 
        nc1632, nc1633, \B_DOUT_TEMPR2[10] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][10] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[10]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[10]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%7%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C7 (.A_DOUT({
        nc1634, nc1635, nc1636, nc1637, nc1638, nc1639, nc1640, nc1641, 
        nc1642, nc1643, nc1644, nc1645, nc1646, nc1647, nc1648, nc1649, 
        nc1650, nc1651, nc1652, \A_DOUT_TEMPR1[7] }), .B_DOUT({nc1653, 
        nc1654, nc1655, nc1656, nc1657, nc1658, nc1659, nc1660, nc1661, 
        nc1662, nc1663, nc1664, nc1665, nc1666, nc1667, nc1668, nc1669, 
        nc1670, nc1671, \B_DOUT_TEMPR1[7] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][7] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[7]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[7]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%8%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C8 (.A_DOUT({
        nc1672, nc1673, nc1674, nc1675, nc1676, nc1677, nc1678, nc1679, 
        nc1680, nc1681, nc1682, nc1683, nc1684, nc1685, nc1686, nc1687, 
        nc1688, nc1689, nc1690, \A_DOUT_TEMPR1[8] }), .B_DOUT({nc1691, 
        nc1692, nc1693, nc1694, nc1695, nc1696, nc1697, nc1698, nc1699, 
        nc1700, nc1701, nc1702, nc1703, nc1704, nc1705, nc1706, nc1707, 
        nc1708, nc1709, \B_DOUT_TEMPR1[8] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][8] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[8]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[8]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%6%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C6 (.A_DOUT({
        nc1710, nc1711, nc1712, nc1713, nc1714, nc1715, nc1716, nc1717, 
        nc1718, nc1719, nc1720, nc1721, nc1722, nc1723, nc1724, nc1725, 
        nc1726, nc1727, nc1728, \A_DOUT_TEMPR2[6] }), .B_DOUT({nc1729, 
        nc1730, nc1731, nc1732, nc1733, nc1734, nc1735, nc1736, nc1737, 
        nc1738, nc1739, nc1740, nc1741, nc1742, nc1743, nc1744, nc1745, 
        nc1746, nc1747, \B_DOUT_TEMPR2[6] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][6] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[6]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[6]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_B_DOUT[20]  (.A(\B_DOUT_TEMPR0[20] ), .B(
        \B_DOUT_TEMPR1[20] ), .C(\B_DOUT_TEMPR2[20] ), .D(
        \B_DOUT_TEMPR3[20] ), .Y(B_DOUT[20]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%8%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C8 (.A_DOUT({
        nc1748, nc1749, nc1750, nc1751, nc1752, nc1753, nc1754, nc1755, 
        nc1756, nc1757, nc1758, nc1759, nc1760, nc1761, nc1762, nc1763, 
        nc1764, nc1765, nc1766, \A_DOUT_TEMPR2[8] }), .B_DOUT({nc1767, 
        nc1768, nc1769, nc1770, nc1771, nc1772, nc1773, nc1774, nc1775, 
        nc1776, nc1777, nc1778, nc1779, nc1780, nc1781, nc1782, nc1783, 
        nc1784, nc1785, \B_DOUT_TEMPR2[8] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][8] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[8]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[8]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_B_DOUT[13]  (.A(\B_DOUT_TEMPR0[13] ), .B(
        \B_DOUT_TEMPR1[13] ), .C(\B_DOUT_TEMPR2[13] ), .D(
        \B_DOUT_TEMPR3[13] ), .Y(B_DOUT[13]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%22%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C22 (.A_DOUT({
        nc1786, nc1787, nc1788, nc1789, nc1790, nc1791, nc1792, nc1793, 
        nc1794, nc1795, nc1796, nc1797, nc1798, nc1799, nc1800, nc1801, 
        nc1802, nc1803, nc1804, \A_DOUT_TEMPR2[22] }), .B_DOUT({nc1805, 
        nc1806, nc1807, nc1808, nc1809, nc1810, nc1811, nc1812, nc1813, 
        nc1814, nc1815, nc1816, nc1817, nc1818, nc1819, nc1820, nc1821, 
        nc1822, nc1823, \B_DOUT_TEMPR2[22] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][22] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[22]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[22]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[6]  (.A(\A_DOUT_TEMPR0[6] ), .B(\A_DOUT_TEMPR1[6] )
        , .C(\A_DOUT_TEMPR2[6] ), .D(\A_DOUT_TEMPR3[6] ), .Y(A_DOUT[6])
        );
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%22%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C22 (.A_DOUT({
        nc1824, nc1825, nc1826, nc1827, nc1828, nc1829, nc1830, nc1831, 
        nc1832, nc1833, nc1834, nc1835, nc1836, nc1837, nc1838, nc1839, 
        nc1840, nc1841, nc1842, \A_DOUT_TEMPR1[22] }), .B_DOUT({nc1843, 
        nc1844, nc1845, nc1846, nc1847, nc1848, nc1849, nc1850, nc1851, 
        nc1852, nc1853, nc1854, nc1855, nc1856, nc1857, nc1858, nc1859, 
        nc1860, nc1861, \B_DOUT_TEMPR1[22] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][22] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[22]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[22]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%17%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C17 (.A_DOUT({
        nc1862, nc1863, nc1864, nc1865, nc1866, nc1867, nc1868, nc1869, 
        nc1870, nc1871, nc1872, nc1873, nc1874, nc1875, nc1876, nc1877, 
        nc1878, nc1879, nc1880, \A_DOUT_TEMPR3[17] }), .B_DOUT({nc1881, 
        nc1882, nc1883, nc1884, nc1885, nc1886, nc1887, nc1888, nc1889, 
        nc1890, nc1891, nc1892, nc1893, nc1894, nc1895, nc1896, nc1897, 
        nc1898, nc1899, \B_DOUT_TEMPR3[17] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][17] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[17]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[17]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[20]  (.A(\A_DOUT_TEMPR0[20] ), .B(
        \A_DOUT_TEMPR1[20] ), .C(\A_DOUT_TEMPR2[20] ), .D(
        \A_DOUT_TEMPR3[20] ), .Y(A_DOUT[20]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%14%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C14 (.A_DOUT({
        nc1900, nc1901, nc1902, nc1903, nc1904, nc1905, nc1906, nc1907, 
        nc1908, nc1909, nc1910, nc1911, nc1912, nc1913, nc1914, nc1915, 
        nc1916, nc1917, nc1918, \A_DOUT_TEMPR2[14] }), .B_DOUT({nc1919, 
        nc1920, nc1921, nc1922, nc1923, nc1924, nc1925, nc1926, nc1927, 
        nc1928, nc1929, nc1930, nc1931, nc1932, nc1933, nc1934, nc1935, 
        nc1936, nc1937, \B_DOUT_TEMPR2[14] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][14] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[14]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[14]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%3%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C3 (.A_DOUT({
        nc1938, nc1939, nc1940, nc1941, nc1942, nc1943, nc1944, nc1945, 
        nc1946, nc1947, nc1948, nc1949, nc1950, nc1951, nc1952, nc1953, 
        nc1954, nc1955, nc1956, \A_DOUT_TEMPR3[3] }), .B_DOUT({nc1957, 
        nc1958, nc1959, nc1960, nc1961, nc1962, nc1963, nc1964, nc1965, 
        nc1966, nc1967, nc1968, nc1969, nc1970, nc1971, nc1972, nc1973, 
        nc1974, nc1975, \B_DOUT_TEMPR3[3] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][3] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[3]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[3]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%12%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C12 (.A_DOUT({
        nc1976, nc1977, nc1978, nc1979, nc1980, nc1981, nc1982, nc1983, 
        nc1984, nc1985, nc1986, nc1987, nc1988, nc1989, nc1990, nc1991, 
        nc1992, nc1993, nc1994, \A_DOUT_TEMPR1[12] }), .B_DOUT({nc1995, 
        nc1996, nc1997, nc1998, nc1999, nc2000, nc2001, nc2002, nc2003, 
        nc2004, nc2005, nc2006, nc2007, nc2008, nc2009, nc2010, nc2011, 
        nc2012, nc2013, \B_DOUT_TEMPR1[12] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][12] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[12]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[12]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%19%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C19 (.A_DOUT({
        nc2014, nc2015, nc2016, nc2017, nc2018, nc2019, nc2020, nc2021, 
        nc2022, nc2023, nc2024, nc2025, nc2026, nc2027, nc2028, nc2029, 
        nc2030, nc2031, nc2032, \A_DOUT_TEMPR1[19] }), .B_DOUT({nc2033, 
        nc2034, nc2035, nc2036, nc2037, nc2038, nc2039, nc2040, nc2041, 
        nc2042, nc2043, nc2044, nc2045, nc2046, nc2047, nc2048, nc2049, 
        nc2050, nc2051, \B_DOUT_TEMPR1[19] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][19] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[19]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[19]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%6%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C6 (.A_DOUT({
        nc2052, nc2053, nc2054, nc2055, nc2056, nc2057, nc2058, nc2059, 
        nc2060, nc2061, nc2062, nc2063, nc2064, nc2065, nc2066, nc2067, 
        nc2068, nc2069, nc2070, \A_DOUT_TEMPR0[6] }), .B_DOUT({nc2071, 
        nc2072, nc2073, nc2074, nc2075, nc2076, nc2077, nc2078, nc2079, 
        nc2080, nc2081, nc2082, nc2083, nc2084, nc2085, nc2086, nc2087, 
        nc2088, nc2089, \B_DOUT_TEMPR0[6] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][6] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[6]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[6]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[7]  (.A(\A_DOUT_TEMPR0[7] ), .B(\A_DOUT_TEMPR1[7] )
        , .C(\A_DOUT_TEMPR2[7] ), .D(\A_DOUT_TEMPR3[7] ), .Y(A_DOUT[7])
        );
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%20%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C20 (.A_DOUT({
        nc2090, nc2091, nc2092, nc2093, nc2094, nc2095, nc2096, nc2097, 
        nc2098, nc2099, nc2100, nc2101, nc2102, nc2103, nc2104, nc2105, 
        nc2106, nc2107, nc2108, \A_DOUT_TEMPR3[20] }), .B_DOUT({nc2109, 
        nc2110, nc2111, nc2112, nc2113, nc2114, nc2115, nc2116, nc2117, 
        nc2118, nc2119, nc2120, nc2121, nc2122, nc2123, nc2124, nc2125, 
        nc2126, nc2127, \B_DOUT_TEMPR3[20] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][20] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[20]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[20]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%4%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C4 (.A_DOUT({
        nc2128, nc2129, nc2130, nc2131, nc2132, nc2133, nc2134, nc2135, 
        nc2136, nc2137, nc2138, nc2139, nc2140, nc2141, nc2142, nc2143, 
        nc2144, nc2145, nc2146, \A_DOUT_TEMPR2[4] }), .B_DOUT({nc2147, 
        nc2148, nc2149, nc2150, nc2151, nc2152, nc2153, nc2154, nc2155, 
        nc2156, nc2157, nc2158, nc2159, nc2160, nc2161, nc2162, nc2163, 
        nc2164, nc2165, \B_DOUT_TEMPR2[4] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][4] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[4]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[4]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%15%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C15 (.A_DOUT({
        nc2166, nc2167, nc2168, nc2169, nc2170, nc2171, nc2172, nc2173, 
        nc2174, nc2175, nc2176, nc2177, nc2178, nc2179, nc2180, nc2181, 
        nc2182, nc2183, nc2184, \A_DOUT_TEMPR1[15] }), .B_DOUT({nc2185, 
        nc2186, nc2187, nc2188, nc2189, nc2190, nc2191, nc2192, nc2193, 
        nc2194, nc2195, nc2196, nc2197, nc2198, nc2199, nc2200, nc2201, 
        nc2202, nc2203, \B_DOUT_TEMPR1[15] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][15] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[15]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[15]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%9%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C9 (.A_DOUT({
        nc2204, nc2205, nc2206, nc2207, nc2208, nc2209, nc2210, nc2211, 
        nc2212, nc2213, nc2214, nc2215, nc2216, nc2217, nc2218, nc2219, 
        nc2220, nc2221, nc2222, \A_DOUT_TEMPR2[9] }), .B_DOUT({nc2223, 
        nc2224, nc2225, nc2226, nc2227, nc2228, nc2229, nc2230, nc2231, 
        nc2232, nc2233, nc2234, nc2235, nc2236, nc2237, nc2238, nc2239, 
        nc2240, nc2241, \B_DOUT_TEMPR2[9] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][9] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[9]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[9]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%6%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C6 (.A_DOUT({
        nc2242, nc2243, nc2244, nc2245, nc2246, nc2247, nc2248, nc2249, 
        nc2250, nc2251, nc2252, nc2253, nc2254, nc2255, nc2256, nc2257, 
        nc2258, nc2259, nc2260, \A_DOUT_TEMPR1[6] }), .B_DOUT({nc2261, 
        nc2262, nc2263, nc2264, nc2265, nc2266, nc2267, nc2268, nc2269, 
        nc2270, nc2271, nc2272, nc2273, nc2274, nc2275, nc2276, nc2277, 
        nc2278, nc2279, \B_DOUT_TEMPR1[6] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][6] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[6]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[6]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[11]  (.A(\A_DOUT_TEMPR0[11] ), .B(
        \A_DOUT_TEMPR1[11] ), .C(\A_DOUT_TEMPR2[11] ), .D(
        \A_DOUT_TEMPR3[11] ), .Y(A_DOUT[11]));
    OR4 \OR4_B_DOUT[8]  (.A(\B_DOUT_TEMPR0[8] ), .B(\B_DOUT_TEMPR1[8] )
        , .C(\B_DOUT_TEMPR2[8] ), .D(\B_DOUT_TEMPR3[8] ), .Y(B_DOUT[8])
        );
    OR4 \OR4_B_DOUT[4]  (.A(\B_DOUT_TEMPR0[4] ), .B(\B_DOUT_TEMPR1[4] )
        , .C(\B_DOUT_TEMPR2[4] ), .D(\B_DOUT_TEMPR3[4] ), .Y(B_DOUT[4])
        );
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%4%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C4 (.A_DOUT({
        nc2280, nc2281, nc2282, nc2283, nc2284, nc2285, nc2286, nc2287, 
        nc2288, nc2289, nc2290, nc2291, nc2292, nc2293, nc2294, nc2295, 
        nc2296, nc2297, nc2298, \A_DOUT_TEMPR0[4] }), .B_DOUT({nc2299, 
        nc2300, nc2301, nc2302, nc2303, nc2304, nc2305, nc2306, nc2307, 
        nc2308, nc2309, nc2310, nc2311, nc2312, nc2313, nc2314, nc2315, 
        nc2316, nc2317, \B_DOUT_TEMPR0[4] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][4] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[4]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[4]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%1%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C1 (.A_DOUT({
        nc2318, nc2319, nc2320, nc2321, nc2322, nc2323, nc2324, nc2325, 
        nc2326, nc2327, nc2328, nc2329, nc2330, nc2331, nc2332, nc2333, 
        nc2334, nc2335, nc2336, \A_DOUT_TEMPR0[1] }), .B_DOUT({nc2337, 
        nc2338, nc2339, nc2340, nc2341, nc2342, nc2343, nc2344, nc2345, 
        nc2346, nc2347, nc2348, nc2349, nc2350, nc2351, nc2352, nc2353, 
        nc2354, nc2355, \B_DOUT_TEMPR0[1] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][1] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[1]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[1]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_B_DOUT[10]  (.A(\B_DOUT_TEMPR0[10] ), .B(
        \B_DOUT_TEMPR1[10] ), .C(\B_DOUT_TEMPR2[10] ), .D(
        \B_DOUT_TEMPR3[10] ), .Y(B_DOUT[10]));
    OR4 \OR4_B_DOUT[21]  (.A(\B_DOUT_TEMPR0[21] ), .B(
        \B_DOUT_TEMPR1[21] ), .C(\B_DOUT_TEMPR2[21] ), .D(
        \B_DOUT_TEMPR3[21] ), .Y(B_DOUT[21]));
    OR4 \OR4_A_DOUT[10]  (.A(\A_DOUT_TEMPR0[10] ), .B(
        \A_DOUT_TEMPR1[10] ), .C(\A_DOUT_TEMPR2[10] ), .D(
        \A_DOUT_TEMPR3[10] ), .Y(A_DOUT[10]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%11%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C11 (.A_DOUT({
        nc2356, nc2357, nc2358, nc2359, nc2360, nc2361, nc2362, nc2363, 
        nc2364, nc2365, nc2366, nc2367, nc2368, nc2369, nc2370, nc2371, 
        nc2372, nc2373, nc2374, \A_DOUT_TEMPR0[11] }), .B_DOUT({nc2375, 
        nc2376, nc2377, nc2378, nc2379, nc2380, nc2381, nc2382, nc2383, 
        nc2384, nc2385, nc2386, nc2387, nc2388, nc2389, nc2390, nc2391, 
        nc2392, nc2393, \B_DOUT_TEMPR0[11] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][11] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[11]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[11]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_B_DOUT[22]  (.A(\B_DOUT_TEMPR0[22] ), .B(
        \B_DOUT_TEMPR1[22] ), .C(\B_DOUT_TEMPR2[22] ), .D(
        \B_DOUT_TEMPR3[22] ), .Y(B_DOUT[22]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%2%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C2 (.A_DOUT({
        nc2394, nc2395, nc2396, nc2397, nc2398, nc2399, nc2400, nc2401, 
        nc2402, nc2403, nc2404, nc2405, nc2406, nc2407, nc2408, nc2409, 
        nc2410, nc2411, nc2412, \A_DOUT_TEMPR0[2] }), .B_DOUT({nc2413, 
        nc2414, nc2415, nc2416, nc2417, nc2418, nc2419, nc2420, nc2421, 
        nc2422, nc2423, nc2424, nc2425, nc2426, nc2427, nc2428, nc2429, 
        nc2430, nc2431, \B_DOUT_TEMPR0[2] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][2] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[2]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[2]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    CFG1 #( .INIT(2'h1) )  \INVBLKX0[0]  (.A(A_ADDR[14]), .Y(
        \BLKX0[0] ));
    OR4 \OR4_A_DOUT[0]  (.A(\A_DOUT_TEMPR0[0] ), .B(\A_DOUT_TEMPR1[0] )
        , .C(\A_DOUT_TEMPR2[0] ), .D(\A_DOUT_TEMPR3[0] ), .Y(A_DOUT[0])
        );
    OR4 \OR4_B_DOUT[15]  (.A(\B_DOUT_TEMPR0[15] ), .B(
        \B_DOUT_TEMPR1[15] ), .C(\B_DOUT_TEMPR2[15] ), .D(
        \B_DOUT_TEMPR3[15] ), .Y(B_DOUT[15]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%3%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C3 (.A_DOUT({
        nc2432, nc2433, nc2434, nc2435, nc2436, nc2437, nc2438, nc2439, 
        nc2440, nc2441, nc2442, nc2443, nc2444, nc2445, nc2446, nc2447, 
        nc2448, nc2449, nc2450, \A_DOUT_TEMPR2[3] }), .B_DOUT({nc2451, 
        nc2452, nc2453, nc2454, nc2455, nc2456, nc2457, nc2458, nc2459, 
        nc2460, nc2461, nc2462, nc2463, nc2464, nc2465, nc2466, nc2467, 
        nc2468, nc2469, \B_DOUT_TEMPR2[3] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][3] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[3]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[3]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%12%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C12 (.A_DOUT({
        nc2470, nc2471, nc2472, nc2473, nc2474, nc2475, nc2476, nc2477, 
        nc2478, nc2479, nc2480, nc2481, nc2482, nc2483, nc2484, nc2485, 
        nc2486, nc2487, nc2488, \A_DOUT_TEMPR3[12] }), .B_DOUT({nc2489, 
        nc2490, nc2491, nc2492, nc2493, nc2494, nc2495, nc2496, nc2497, 
        nc2498, nc2499, nc2500, nc2501, nc2502, nc2503, nc2504, nc2505, 
        nc2506, nc2507, \B_DOUT_TEMPR3[12] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][12] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[12]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[12]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%19%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C19 (.A_DOUT({
        nc2508, nc2509, nc2510, nc2511, nc2512, nc2513, nc2514, nc2515, 
        nc2516, nc2517, nc2518, nc2519, nc2520, nc2521, nc2522, nc2523, 
        nc2524, nc2525, nc2526, \A_DOUT_TEMPR3[19] }), .B_DOUT({nc2527, 
        nc2528, nc2529, nc2530, nc2531, nc2532, nc2533, nc2534, nc2535, 
        nc2536, nc2537, nc2538, nc2539, nc2540, nc2541, nc2542, nc2543, 
        nc2544, nc2545, \B_DOUT_TEMPR3[19] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][19] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[19]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[19]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%3%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C3 (.A_DOUT({
        nc2546, nc2547, nc2548, nc2549, nc2550, nc2551, nc2552, nc2553, 
        nc2554, nc2555, nc2556, nc2557, nc2558, nc2559, nc2560, nc2561, 
        nc2562, nc2563, nc2564, \A_DOUT_TEMPR1[3] }), .B_DOUT({nc2565, 
        nc2566, nc2567, nc2568, nc2569, nc2570, nc2571, nc2572, nc2573, 
        nc2574, nc2575, nc2576, nc2577, nc2578, nc2579, nc2580, nc2581, 
        nc2582, nc2583, \B_DOUT_TEMPR1[3] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][3] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[3]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[3]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%21%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C21 (.A_DOUT({
        nc2584, nc2585, nc2586, nc2587, nc2588, nc2589, nc2590, nc2591, 
        nc2592, nc2593, nc2594, nc2595, nc2596, nc2597, nc2598, nc2599, 
        nc2600, nc2601, nc2602, \A_DOUT_TEMPR0[21] }), .B_DOUT({nc2603, 
        nc2604, nc2605, nc2606, nc2607, nc2608, nc2609, nc2610, nc2611, 
        nc2612, nc2613, nc2614, nc2615, nc2616, nc2617, nc2618, nc2619, 
        nc2620, nc2621, \B_DOUT_TEMPR0[21] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][21] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[21]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[21]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[9]  (.A(\A_DOUT_TEMPR0[9] ), .B(\A_DOUT_TEMPR1[9] )
        , .C(\A_DOUT_TEMPR2[9] ), .D(\A_DOUT_TEMPR3[9] ), .Y(A_DOUT[9])
        );
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%16%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C16 (.A_DOUT({
        nc2622, nc2623, nc2624, nc2625, nc2626, nc2627, nc2628, nc2629, 
        nc2630, nc2631, nc2632, nc2633, nc2634, nc2635, nc2636, nc2637, 
        nc2638, nc2639, nc2640, \A_DOUT_TEMPR1[16] }), .B_DOUT({nc2641, 
        nc2642, nc2643, nc2644, nc2645, nc2646, nc2647, nc2648, nc2649, 
        nc2650, nc2651, nc2652, nc2653, nc2654, nc2655, nc2656, nc2657, 
        nc2658, nc2659, \B_DOUT_TEMPR1[16] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][16] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[16]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[16]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%15%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C15 (.A_DOUT({
        nc2660, nc2661, nc2662, nc2663, nc2664, nc2665, nc2666, nc2667, 
        nc2668, nc2669, nc2670, nc2671, nc2672, nc2673, nc2674, nc2675, 
        nc2676, nc2677, nc2678, \A_DOUT_TEMPR3[15] }), .B_DOUT({nc2679, 
        nc2680, nc2681, nc2682, nc2683, nc2684, nc2685, nc2686, nc2687, 
        nc2688, nc2689, nc2690, nc2691, nc2692, nc2693, nc2694, nc2695, 
        nc2696, nc2697, \B_DOUT_TEMPR3[15] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][15] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[15]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[15]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    CFG1 #( .INIT(2'h1) )  \INVBLKX1[0]  (.A(A_ADDR[15]), .Y(
        \BLKX1[0] ));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%13%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C13 (.A_DOUT({
        nc2698, nc2699, nc2700, nc2701, nc2702, nc2703, nc2704, nc2705, 
        nc2706, nc2707, nc2708, nc2709, nc2710, nc2711, nc2712, nc2713, 
        nc2714, nc2715, nc2716, \A_DOUT_TEMPR0[13] }), .B_DOUT({nc2717, 
        nc2718, nc2719, nc2720, nc2721, nc2722, nc2723, nc2724, nc2725, 
        nc2726, nc2727, nc2728, nc2729, nc2730, nc2731, nc2732, nc2733, 
        nc2734, nc2735, \B_DOUT_TEMPR0[13] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][13] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[13]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[13]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_B_DOUT[2]  (.A(\B_DOUT_TEMPR0[2] ), .B(\B_DOUT_TEMPR1[2] )
        , .C(\B_DOUT_TEMPR2[2] ), .D(\B_DOUT_TEMPR3[2] ), .Y(B_DOUT[2])
        );
    CFG1 #( .INIT(2'h1) )  \INVBLKY0[0]  (.A(B_ADDR[14]), .Y(
        \BLKY0[0] ));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%9%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C9 (.A_DOUT({
        nc2736, nc2737, nc2738, nc2739, nc2740, nc2741, nc2742, nc2743, 
        nc2744, nc2745, nc2746, nc2747, nc2748, nc2749, nc2750, nc2751, 
        nc2752, nc2753, nc2754, \A_DOUT_TEMPR1[9] }), .B_DOUT({nc2755, 
        nc2756, nc2757, nc2758, nc2759, nc2760, nc2761, nc2762, nc2763, 
        nc2764, nc2765, nc2766, nc2767, nc2768, nc2769, nc2770, nc2771, 
        nc2772, nc2773, \B_DOUT_TEMPR1[9] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][9] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[9]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[9]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%20%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C20 (.A_DOUT({
        nc2774, nc2775, nc2776, nc2777, nc2778, nc2779, nc2780, nc2781, 
        nc2782, nc2783, nc2784, nc2785, nc2786, nc2787, nc2788, nc2789, 
        nc2790, nc2791, nc2792, \A_DOUT_TEMPR2[20] }), .B_DOUT({nc2793, 
        nc2794, nc2795, nc2796, nc2797, nc2798, nc2799, nc2800, nc2801, 
        nc2802, nc2803, nc2804, nc2805, nc2806, nc2807, nc2808, nc2809, 
        nc2810, nc2811, \B_DOUT_TEMPR2[20] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][20] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[20]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[20]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%1%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C1 (.A_DOUT({
        nc2812, nc2813, nc2814, nc2815, nc2816, nc2817, nc2818, nc2819, 
        nc2820, nc2821, nc2822, nc2823, nc2824, nc2825, nc2826, nc2827, 
        nc2828, nc2829, nc2830, \A_DOUT_TEMPR2[1] }), .B_DOUT({nc2831, 
        nc2832, nc2833, nc2834, nc2835, nc2836, nc2837, nc2838, nc2839, 
        nc2840, nc2841, nc2842, nc2843, nc2844, nc2845, nc2846, nc2847, 
        nc2848, nc2849, \B_DOUT_TEMPR2[1] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][1] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[1]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[1]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[14]  (.A(\A_DOUT_TEMPR0[14] ), .B(
        \A_DOUT_TEMPR1[14] ), .C(\A_DOUT_TEMPR2[14] ), .D(
        \A_DOUT_TEMPR3[14] ), .Y(A_DOUT[14]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%20%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C20 (.A_DOUT({
        nc2850, nc2851, nc2852, nc2853, nc2854, nc2855, nc2856, nc2857, 
        nc2858, nc2859, nc2860, nc2861, nc2862, nc2863, nc2864, nc2865, 
        nc2866, nc2867, nc2868, \A_DOUT_TEMPR1[20] }), .B_DOUT({nc2869, 
        nc2870, nc2871, nc2872, nc2873, nc2874, nc2875, nc2876, nc2877, 
        nc2878, nc2879, nc2880, nc2881, nc2882, nc2883, nc2884, nc2885, 
        nc2886, nc2887, \B_DOUT_TEMPR1[20] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][20] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[20]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[20]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%7%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C7 (.A_DOUT({
        nc2888, nc2889, nc2890, nc2891, nc2892, nc2893, nc2894, nc2895, 
        nc2896, nc2897, nc2898, nc2899, nc2900, nc2901, nc2902, nc2903, 
        nc2904, nc2905, nc2906, \A_DOUT_TEMPR2[7] }), .B_DOUT({nc2907, 
        nc2908, nc2909, nc2910, nc2911, nc2912, nc2913, nc2914, nc2915, 
        nc2916, nc2917, nc2918, nc2919, nc2920, nc2921, nc2922, nc2923, 
        nc2924, nc2925, \B_DOUT_TEMPR2[7] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][7] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[7]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[7]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%23%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C23 (.A_DOUT({
        nc2926, nc2927, nc2928, nc2929, nc2930, nc2931, nc2932, nc2933, 
        nc2934, nc2935, nc2936, nc2937, nc2938, nc2939, nc2940, nc2941, 
        nc2942, nc2943, nc2944, \A_DOUT_TEMPR0[23] }), .B_DOUT({nc2945, 
        nc2946, nc2947, nc2948, nc2949, nc2950, nc2951, nc2952, nc2953, 
        nc2954, nc2955, nc2956, nc2957, nc2958, nc2959, nc2960, nc2961, 
        nc2962, nc2963, \B_DOUT_TEMPR0[23] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][23] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[23]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[23]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%8%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C8 (.A_DOUT({
        nc2964, nc2965, nc2966, nc2967, nc2968, nc2969, nc2970, nc2971, 
        nc2972, nc2973, nc2974, nc2975, nc2976, nc2977, nc2978, nc2979, 
        nc2980, nc2981, nc2982, \A_DOUT_TEMPR3[8] }), .B_DOUT({nc2983, 
        nc2984, nc2985, nc2986, nc2987, nc2988, nc2989, nc2990, nc2991, 
        nc2992, nc2993, nc2994, nc2995, nc2996, nc2997, nc2998, nc2999, 
        nc3000, nc3001, \B_DOUT_TEMPR3[8] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][8] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[8]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[8]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_B_DOUT[6]  (.A(\B_DOUT_TEMPR0[6] ), .B(\B_DOUT_TEMPR1[6] )
        , .C(\B_DOUT_TEMPR2[6] ), .D(\B_DOUT_TEMPR3[6] ), .Y(B_DOUT[6])
        );
    CFG1 #( .INIT(2'h1) )  \INVBLKY1[0]  (.A(B_ADDR[15]), .Y(
        \BLKY1[0] ));
    OR4 \OR4_B_DOUT[14]  (.A(\B_DOUT_TEMPR0[14] ), .B(
        \B_DOUT_TEMPR1[14] ), .C(\B_DOUT_TEMPR2[14] ), .D(
        \B_DOUT_TEMPR3[14] ), .Y(B_DOUT[14]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%11%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C11 (.A_DOUT({
        nc3002, nc3003, nc3004, nc3005, nc3006, nc3007, nc3008, nc3009, 
        nc3010, nc3011, nc3012, nc3013, nc3014, nc3015, nc3016, nc3017, 
        nc3018, nc3019, nc3020, \A_DOUT_TEMPR2[11] }), .B_DOUT({nc3021, 
        nc3022, nc3023, nc3024, nc3025, nc3026, nc3027, nc3028, nc3029, 
        nc3030, nc3031, nc3032, nc3033, nc3034, nc3035, nc3036, nc3037, 
        nc3038, nc3039, \B_DOUT_TEMPR2[11] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][11] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[11]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[11]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%0%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C0 (.A_DOUT({
        nc3040, nc3041, nc3042, nc3043, nc3044, nc3045, nc3046, nc3047, 
        nc3048, nc3049, nc3050, nc3051, nc3052, nc3053, nc3054, nc3055, 
        nc3056, nc3057, nc3058, \A_DOUT_TEMPR1[0] }), .B_DOUT({nc3059, 
        nc3060, nc3061, nc3062, nc3063, nc3064, nc3065, nc3066, nc3067, 
        nc3068, nc3069, nc3070, nc3071, nc3072, nc3073, nc3074, nc3075, 
        nc3076, nc3077, \B_DOUT_TEMPR1[0] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][0] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[0]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[0]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%18%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C18 (.A_DOUT({
        nc3078, nc3079, nc3080, nc3081, nc3082, nc3083, nc3084, nc3085, 
        nc3086, nc3087, nc3088, nc3089, nc3090, nc3091, nc3092, nc3093, 
        nc3094, nc3095, nc3096, \A_DOUT_TEMPR0[18] }), .B_DOUT({nc3097, 
        nc3098, nc3099, nc3100, nc3101, nc3102, nc3103, nc3104, nc3105, 
        nc3106, nc3107, nc3108, nc3109, nc3110, nc3111, nc3112, nc3113, 
        nc3114, nc3115, \B_DOUT_TEMPR0[18] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][18] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[18]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[18]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[23]  (.A(\A_DOUT_TEMPR0[23] ), .B(
        \A_DOUT_TEMPR1[23] ), .C(\A_DOUT_TEMPR2[23] ), .D(
        \A_DOUT_TEMPR3[23] ), .Y(A_DOUT[23]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%5%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C5 (.A_DOUT({
        nc3116, nc3117, nc3118, nc3119, nc3120, nc3121, nc3122, nc3123, 
        nc3124, nc3125, nc3126, nc3127, nc3128, nc3129, nc3130, nc3131, 
        nc3132, nc3133, nc3134, \A_DOUT_TEMPR1[5] }), .B_DOUT({nc3135, 
        nc3136, nc3137, nc3138, nc3139, nc3140, nc3141, nc3142, nc3143, 
        nc3144, nc3145, nc3146, nc3147, nc3148, nc3149, nc3150, nc3151, 
        nc3152, nc3153, \B_DOUT_TEMPR1[5] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][5] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[5]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[5]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%10%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C10 (.A_DOUT({
        nc3154, nc3155, nc3156, nc3157, nc3158, nc3159, nc3160, nc3161, 
        nc3162, nc3163, nc3164, nc3165, nc3166, nc3167, nc3168, nc3169, 
        nc3170, nc3171, nc3172, \A_DOUT_TEMPR1[10] }), .B_DOUT({nc3173, 
        nc3174, nc3175, nc3176, nc3177, nc3178, nc3179, nc3180, nc3181, 
        nc3182, nc3183, nc3184, nc3185, nc3186, nc3187, nc3188, nc3189, 
        nc3190, nc3191, \B_DOUT_TEMPR1[10] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][10] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[10]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[10]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_B_DOUT[11]  (.A(\B_DOUT_TEMPR0[11] ), .B(
        \B_DOUT_TEMPR1[11] ), .C(\B_DOUT_TEMPR2[11] ), .D(
        \B_DOUT_TEMPR3[11] ), .Y(B_DOUT[11]));
    OR4 \OR4_A_DOUT[1]  (.A(\A_DOUT_TEMPR0[1] ), .B(\A_DOUT_TEMPR1[1] )
        , .C(\A_DOUT_TEMPR2[1] ), .D(\A_DOUT_TEMPR3[1] ), .Y(A_DOUT[1])
        );
    OR4 \OR4_B_DOUT[12]  (.A(\B_DOUT_TEMPR0[12] ), .B(
        \B_DOUT_TEMPR1[12] ), .C(\B_DOUT_TEMPR2[12] ), .D(
        \B_DOUT_TEMPR3[12] ), .Y(B_DOUT[12]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%5%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C5 (.A_DOUT({
        nc3192, nc3193, nc3194, nc3195, nc3196, nc3197, nc3198, nc3199, 
        nc3200, nc3201, nc3202, nc3203, nc3204, nc3205, nc3206, nc3207, 
        nc3208, nc3209, nc3210, \A_DOUT_TEMPR3[5] }), .B_DOUT({nc3211, 
        nc3212, nc3213, nc3214, nc3215, nc3216, nc3217, nc3218, nc3219, 
        nc3220, nc3221, nc3222, nc3223, nc3224, nc3225, nc3226, nc3227, 
        nc3228, nc3229, \B_DOUT_TEMPR3[5] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][5] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[5]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[5]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%17%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C17 (.A_DOUT({
        nc3230, nc3231, nc3232, nc3233, nc3234, nc3235, nc3236, nc3237, 
        nc3238, nc3239, nc3240, nc3241, nc3242, nc3243, nc3244, nc3245, 
        nc3246, nc3247, nc3248, \A_DOUT_TEMPR0[17] }), .B_DOUT({nc3249, 
        nc3250, nc3251, nc3252, nc3253, nc3254, nc3255, nc3256, nc3257, 
        nc3258, nc3259, nc3260, nc3261, nc3262, nc3263, nc3264, nc3265, 
        nc3266, nc3267, \B_DOUT_TEMPR0[17] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][17] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[17]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[17]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_B_DOUT[7]  (.A(\B_DOUT_TEMPR0[7] ), .B(\B_DOUT_TEMPR1[7] )
        , .C(\B_DOUT_TEMPR2[7] ), .D(\B_DOUT_TEMPR3[7] ), .Y(B_DOUT[7])
        );
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%13%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C13 (.A_DOUT({
        nc3268, nc3269, nc3270, nc3271, nc3272, nc3273, nc3274, nc3275, 
        nc3276, nc3277, nc3278, nc3279, nc3280, nc3281, nc3282, nc3283, 
        nc3284, nc3285, nc3286, \A_DOUT_TEMPR2[13] }), .B_DOUT({nc3287, 
        nc3288, nc3289, nc3290, nc3291, nc3292, nc3293, nc3294, nc3295, 
        nc3296, nc3297, nc3298, nc3299, nc3300, nc3301, nc3302, nc3303, 
        nc3304, nc3305, \B_DOUT_TEMPR2[13] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][13] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[13]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[13]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%2%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C2 (.A_DOUT({
        nc3306, nc3307, nc3308, nc3309, nc3310, nc3311, nc3312, nc3313, 
        nc3314, nc3315, nc3316, nc3317, nc3318, nc3319, nc3320, nc3321, 
        nc3322, nc3323, nc3324, \A_DOUT_TEMPR3[2] }), .B_DOUT({nc3325, 
        nc3326, nc3327, nc3328, nc3329, nc3330, nc3331, nc3332, nc3333, 
        nc3334, nc3335, nc3336, nc3337, nc3338, nc3339, nc3340, nc3341, 
        nc3342, nc3343, \B_DOUT_TEMPR3[2] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][2] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[2]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[2]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%1%14%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R1C14 (.A_DOUT({
        nc3344, nc3345, nc3346, nc3347, nc3348, nc3349, nc3350, nc3351, 
        nc3352, nc3353, nc3354, nc3355, nc3356, nc3357, nc3358, nc3359, 
        nc3360, nc3361, nc3362, \A_DOUT_TEMPR1[14] }), .B_DOUT({nc3363, 
        nc3364, nc3365, nc3366, nc3367, nc3368, nc3369, nc3370, nc3371, 
        nc3372, nc3373, nc3374, nc3375, nc3376, nc3377, nc3378, nc3379, 
        nc3380, nc3381, \B_DOUT_TEMPR1[14] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[1][14] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[14]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[14]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%5%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C5 (.A_DOUT({
        nc3382, nc3383, nc3384, nc3385, nc3386, nc3387, nc3388, nc3389, 
        nc3390, nc3391, nc3392, nc3393, nc3394, nc3395, nc3396, nc3397, 
        nc3398, nc3399, nc3400, \A_DOUT_TEMPR2[5] }), .B_DOUT({nc3401, 
        nc3402, nc3403, nc3404, nc3405, nc3406, nc3407, nc3408, nc3409, 
        nc3410, nc3411, nc3412, nc3413, nc3414, nc3415, nc3416, nc3417, 
        nc3418, nc3419, \B_DOUT_TEMPR2[5] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][5] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[5]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[5]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%16%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C16 (.A_DOUT({
        nc3420, nc3421, nc3422, nc3423, nc3424, nc3425, nc3426, nc3427, 
        nc3428, nc3429, nc3430, nc3431, nc3432, nc3433, nc3434, nc3435, 
        nc3436, nc3437, nc3438, \A_DOUT_TEMPR3[16] }), .B_DOUT({nc3439, 
        nc3440, nc3441, nc3442, nc3443, nc3444, nc3445, nc3446, nc3447, 
        nc3448, nc3449, nc3450, nc3451, nc3452, nc3453, nc3454, nc3455, 
        nc3456, nc3457, \B_DOUT_TEMPR3[16] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][16] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[16]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[16]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[5]  (.A(\A_DOUT_TEMPR0[5] ), .B(\A_DOUT_TEMPR1[5] )
        , .C(\A_DOUT_TEMPR2[5] ), .D(\A_DOUT_TEMPR3[5] ), .Y(A_DOUT[5])
        );
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%0%9%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R0C9 (.A_DOUT({
        nc3458, nc3459, nc3460, nc3461, nc3462, nc3463, nc3464, nc3465, 
        nc3466, nc3467, nc3468, nc3469, nc3470, nc3471, nc3472, nc3473, 
        nc3474, nc3475, nc3476, \A_DOUT_TEMPR0[9] }), .B_DOUT({nc3477, 
        nc3478, nc3479, nc3480, nc3481, nc3482, nc3483, nc3484, nc3485, 
        nc3486, nc3487, nc3488, nc3489, nc3490, nc3491, nc3492, nc3493, 
        nc3494, nc3495, \B_DOUT_TEMPR0[9] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][9] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        \BLKX1[0] , \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[9]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, \BLKY1[0] , \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[9]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%21%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C21 (.A_DOUT({
        nc3496, nc3497, nc3498, nc3499, nc3500, nc3501, nc3502, nc3503, 
        nc3504, nc3505, nc3506, nc3507, nc3508, nc3509, nc3510, nc3511, 
        nc3512, nc3513, nc3514, \A_DOUT_TEMPR3[21] }), .B_DOUT({nc3515, 
        nc3516, nc3517, nc3518, nc3519, nc3520, nc3521, nc3522, nc3523, 
        nc3524, nc3525, nc3526, nc3527, nc3528, nc3529, nc3530, nc3531, 
        nc3532, nc3533, \B_DOUT_TEMPR3[21] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][21] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[21]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[21]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%7%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C7 (.A_DOUT({
        nc3534, nc3535, nc3536, nc3537, nc3538, nc3539, nc3540, nc3541, 
        nc3542, nc3543, nc3544, nc3545, nc3546, nc3547, nc3548, nc3549, 
        nc3550, nc3551, nc3552, \A_DOUT_TEMPR3[7] }), .B_DOUT({nc3553, 
        nc3554, nc3555, nc3556, nc3557, nc3558, nc3559, nc3560, nc3561, 
        nc3562, nc3563, nc3564, nc3565, nc3566, nc3567, nc3568, nc3569, 
        nc3570, nc3571, \B_DOUT_TEMPR3[7] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][7] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[7]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[7]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[18]  (.A(\A_DOUT_TEMPR0[18] ), .B(
        \A_DOUT_TEMPR1[18] ), .C(\A_DOUT_TEMPR2[18] ), .D(
        \A_DOUT_TEMPR3[18] ), .Y(A_DOUT[18]));
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%2%18%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R2C18 (.A_DOUT({
        nc3572, nc3573, nc3574, nc3575, nc3576, nc3577, nc3578, nc3579, 
        nc3580, nc3581, nc3582, nc3583, nc3584, nc3585, nc3586, nc3587, 
        nc3588, nc3589, nc3590, \A_DOUT_TEMPR2[18] }), .B_DOUT({nc3591, 
        nc3592, nc3593, nc3594, nc3595, nc3596, nc3597, nc3598, nc3599, 
        nc3600, nc3601, nc3602, nc3603, nc3604, nc3605, nc3606, nc3607, 
        nc3608, nc3609, \B_DOUT_TEMPR2[18] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[2][18] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], \BLKX0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[18]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], \BLKY0[0] }), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[18]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_A_DOUT[3]  (.A(\A_DOUT_TEMPR0[3] ), .B(\A_DOUT_TEMPR1[3] )
        , .C(\A_DOUT_TEMPR2[3] ), .D(\A_DOUT_TEMPR3[3] ), .Y(A_DOUT[3])
        );
    RAM1K20 #( .RAMINDEX("PF_DPSRAM_C0_0%65536-65536%24-24%SPEED%3%23%DUAL-PORT%ECC_EN-0")
         )  PF_DPSRAM_C0_PF_DPSRAM_C0_0_PF_DPSRAM_R3C23 (.A_DOUT({
        nc3610, nc3611, nc3612, nc3613, nc3614, nc3615, nc3616, nc3617, 
        nc3618, nc3619, nc3620, nc3621, nc3622, nc3623, nc3624, nc3625, 
        nc3626, nc3627, nc3628, \A_DOUT_TEMPR3[23] }), .B_DOUT({nc3629, 
        nc3630, nc3631, nc3632, nc3633, nc3634, nc3635, nc3636, nc3637, 
        nc3638, nc3639, nc3640, nc3641, nc3642, nc3643, nc3644, nc3645, 
        nc3646, nc3647, \B_DOUT_TEMPR3[23] }), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[3][23] ), .A_ADDR({
        A_ADDR[13], A_ADDR[12], A_ADDR[11], A_ADDR[10], A_ADDR[9], 
        A_ADDR[8], A_ADDR[7], A_ADDR[6], A_ADDR[5], A_ADDR[4], 
        A_ADDR[3], A_ADDR[2], A_ADDR[1], A_ADDR[0]}), .A_BLK_EN({VCC, 
        A_ADDR[15], A_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, A_DIN[23]}), .A_REN(VCC), .A_WEN({GND, 
        A_WEN}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(
        VCC), .B_ADDR({B_ADDR[13], B_ADDR[12], B_ADDR[11], B_ADDR[10], 
        B_ADDR[9], B_ADDR[8], B_ADDR[7], B_ADDR[6], B_ADDR[5], 
        B_ADDR[4], B_ADDR[3], B_ADDR[2], B_ADDR[1], B_ADDR[0]}), 
        .B_BLK_EN({VCC, B_ADDR[15], B_ADDR[14]}), .B_CLK(CLK), .B_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, B_DIN[23]}), .B_REN(VCC), 
        .B_WEN({GND, B_WEN}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
