`timescale 1 ns/100 ps
// Version: 2023.2 2023.2.0.8


module COREFFT_C0_COREFFT_C0_0_pipeFFT_bit_rev0_g5_L(
       DI,
       DO,
       WADDR,
       RADDR,
       WRB,
       RDB,
       WCLOCK,
       RCLOCK
    );
input  [63:0] DI;
output [63:0] DO;
input  [9:0] WADDR;
input  [9:0] RADDR;
input  WRB;
input  RDB;
input  WCLOCK;
input  RCLOCK;

    wire \ACCESS_BUSY[0][0] , \ACCESS_BUSY[0][1] , \ACCESS_BUSY[0][2] , 
        \ACCESS_BUSY[0][3] , VCC, GND, ADLIB_VCC;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign ADLIB_VCC = VCC_power_net1;
    
    RAM1K20 #( .RAMINDEX("COREFFT_C0_0%1024-1024%64-64%SPEED%0%2%TWO-PORT%ECC_EN-0")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_bit_rev0_g5_L_R0C2 (
        .A_DOUT({nc0, nc1, DO[47], DO[46], DO[45], DO[44], DO[43], 
        DO[42], DO[41], DO[40], nc2, nc3, DO[39], DO[38], DO[37], 
        DO[36], DO[35], DO[34], DO[33], DO[32]}), .B_DOUT({nc4, nc5, 
        nc6, nc7, nc8, nc9, nc10, nc11, nc12, nc13, nc14, nc15, nc16, 
        nc17, nc18, nc19, nc20, nc21, nc22, nc23}), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][2] ), .A_ADDR({
        RADDR[9], RADDR[8], RADDR[7], RADDR[6], RADDR[5], RADDR[4], 
        RADDR[3], RADDR[2], RADDR[1], RADDR[0], GND, GND, GND, GND}), 
        .A_BLK_EN({VCC, VCC, VCC}), .A_CLK(RCLOCK), .A_DIN({GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND}), .A_REN(RDB), .A_WEN({GND, GND})
        , .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({WADDR[9], WADDR[8], WADDR[7], WADDR[6], WADDR[5], 
        WADDR[4], WADDR[3], WADDR[2], WADDR[1], WADDR[0], GND, GND, 
        GND, GND}), .B_BLK_EN({WRB, VCC, VCC}), .B_CLK(WCLOCK), .B_DIN({
        GND, GND, DI[47], DI[46], DI[45], DI[44], DI[43], DI[42], 
        DI[41], DI[40], GND, GND, DI[39], DI[38], DI[37], DI[36], 
        DI[35], DI[34], DI[33], DI[32]}), .B_REN(VCC), .B_WEN({VCC, 
        VCC}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(
        VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({VCC, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(GND), .B_WIDTH({VCC, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(GND), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("COREFFT_C0_0%1024-1024%64-64%SPEED%0%3%TWO-PORT%ECC_EN-0")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_bit_rev0_g5_L_R0C3 (
        .A_DOUT({nc24, nc25, DO[63], DO[62], DO[61], DO[60], DO[59], 
        DO[58], DO[57], DO[56], nc26, nc27, DO[55], DO[54], DO[53], 
        DO[52], DO[51], DO[50], DO[49], DO[48]}), .B_DOUT({nc28, nc29, 
        nc30, nc31, nc32, nc33, nc34, nc35, nc36, nc37, nc38, nc39, 
        nc40, nc41, nc42, nc43, nc44, nc45, nc46, nc47}), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][3] ), .A_ADDR({
        RADDR[9], RADDR[8], RADDR[7], RADDR[6], RADDR[5], RADDR[4], 
        RADDR[3], RADDR[2], RADDR[1], RADDR[0], GND, GND, GND, GND}), 
        .A_BLK_EN({VCC, VCC, VCC}), .A_CLK(RCLOCK), .A_DIN({GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND}), .A_REN(RDB), .A_WEN({GND, GND})
        , .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({WADDR[9], WADDR[8], WADDR[7], WADDR[6], WADDR[5], 
        WADDR[4], WADDR[3], WADDR[2], WADDR[1], WADDR[0], GND, GND, 
        GND, GND}), .B_BLK_EN({WRB, VCC, VCC}), .B_CLK(WCLOCK), .B_DIN({
        GND, GND, DI[63], DI[62], DI[61], DI[60], DI[59], DI[58], 
        DI[57], DI[56], GND, GND, DI[55], DI[54], DI[53], DI[52], 
        DI[51], DI[50], DI[49], DI[48]}), .B_REN(VCC), .B_WEN({VCC, 
        VCC}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(
        VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({VCC, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(GND), .B_WIDTH({VCC, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(GND), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("COREFFT_C0_0%1024-1024%64-64%SPEED%0%0%TWO-PORT%ECC_EN-0")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_bit_rev0_g5_L_R0C0 (
        .A_DOUT({nc48, nc49, DO[15], DO[14], DO[13], DO[12], DO[11], 
        DO[10], DO[9], DO[8], nc50, nc51, DO[7], DO[6], DO[5], DO[4], 
        DO[3], DO[2], DO[1], DO[0]}), .B_DOUT({nc52, nc53, nc54, nc55, 
        nc56, nc57, nc58, nc59, nc60, nc61, nc62, nc63, nc64, nc65, 
        nc66, nc67, nc68, nc69, nc70, nc71}), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][0] ), .A_ADDR({
        RADDR[9], RADDR[8], RADDR[7], RADDR[6], RADDR[5], RADDR[4], 
        RADDR[3], RADDR[2], RADDR[1], RADDR[0], GND, GND, GND, GND}), 
        .A_BLK_EN({VCC, VCC, VCC}), .A_CLK(RCLOCK), .A_DIN({GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND}), .A_REN(RDB), .A_WEN({GND, GND})
        , .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({WADDR[9], WADDR[8], WADDR[7], WADDR[6], WADDR[5], 
        WADDR[4], WADDR[3], WADDR[2], WADDR[1], WADDR[0], GND, GND, 
        GND, GND}), .B_BLK_EN({WRB, VCC, VCC}), .B_CLK(WCLOCK), .B_DIN({
        GND, GND, DI[15], DI[14], DI[13], DI[12], DI[11], DI[10], 
        DI[9], DI[8], GND, GND, DI[7], DI[6], DI[5], DI[4], DI[3], 
        DI[2], DI[1], DI[0]}), .B_REN(VCC), .B_WEN({VCC, VCC}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({VCC, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(GND), .B_WIDTH({VCC, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(GND), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("COREFFT_C0_0%1024-1024%64-64%SPEED%0%1%TWO-PORT%ECC_EN-0")
         )  COREFFT_C0_COREFFT_C0_0_pipeFFT_bit_rev0_g5_L_R0C1 (
        .A_DOUT({nc72, nc73, DO[31], DO[30], DO[29], DO[28], DO[27], 
        DO[26], DO[25], DO[24], nc74, nc75, DO[23], DO[22], DO[21], 
        DO[20], DO[19], DO[18], DO[17], DO[16]}), .B_DOUT({nc76, nc77, 
        nc78, nc79, nc80, nc81, nc82, nc83, nc84, nc85, nc86, nc87, 
        nc88, nc89, nc90, nc91, nc92, nc93, nc94, nc95}), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][1] ), .A_ADDR({
        RADDR[9], RADDR[8], RADDR[7], RADDR[6], RADDR[5], RADDR[4], 
        RADDR[3], RADDR[2], RADDR[1], RADDR[0], GND, GND, GND, GND}), 
        .A_BLK_EN({VCC, VCC, VCC}), .A_CLK(RCLOCK), .A_DIN({GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND}), .A_REN(RDB), .A_WEN({GND, GND})
        , .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), 
        .B_ADDR({WADDR[9], WADDR[8], WADDR[7], WADDR[6], WADDR[5], 
        WADDR[4], WADDR[3], WADDR[2], WADDR[1], WADDR[0], GND, GND, 
        GND, GND}), .B_BLK_EN({WRB, VCC, VCC}), .B_CLK(WCLOCK), .B_DIN({
        GND, GND, DI[31], DI[30], DI[29], DI[28], DI[27], DI[26], 
        DI[25], DI[24], GND, GND, DI[23], DI[22], DI[21], DI[20], 
        DI[19], DI[18], DI[17], DI[16]}), .B_REN(VCC), .B_WEN({VCC, 
        VCC}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(
        VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({VCC, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(GND), .B_WIDTH({VCC, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(GND), .ECC_BYPASS(GND));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
