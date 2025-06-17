`timescale 1 ns/100 ps
// Version: 2023.2 2023.2.0.8


module COREFFT_C1_COREFFT_C1_0_lsram_g5(
       DI,
       DO,
       WADDR,
       RADDR,
       WRB,
       WCLOCK,
       RCLOCK,
       DO_nGrst,
       DO_en,
       DO_rst
    );
input  [63:0] DI;
output [63:0] DO;
input  [8:0] WADDR;
input  [8:0] RADDR;
input  WRB;
input  WCLOCK;
input  RCLOCK;
input  DO_nGrst;
input  DO_en;
input  DO_rst;

    wire DOUTSRSTAP, \ACCESS_BUSY[0][0] , \ACCESS_BUSY[0][1] , VCC, 
        GND, ADLIB_VCC;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign ADLIB_VCC = VCC_power_net1;
    
    CFG1 #( .INIT(2'h1) )  INVDOUTSRSTAP (.A(DO_rst), .Y(DOUTSRSTAP));
    RAM1K20 #( .RAMINDEX("COREFFT_C1_0%512-512%64-64%SPEED%0%0%TWO-PORT%ECC_EN-0")
         )  COREFFT_C1_COREFFT_C1_0_lsram_g5_R0C0 (.A_DOUT({nc0, nc1, 
        DO[31], DO[30], DO[29], DO[28], DO[27], DO[26], DO[25], DO[24], 
        nc2, nc3, DO[23], DO[22], DO[21], DO[20], DO[19], DO[18], 
        DO[17], DO[16]}), .B_DOUT({nc4, nc5, DO[15], DO[14], DO[13], 
        DO[12], DO[11], DO[10], DO[9], DO[8], nc6, nc7, DO[7], DO[6], 
        DO[5], DO[4], DO[3], DO[2], DO[1], DO[0]}), .DB_DETECT(), 
        .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][0] ), .A_ADDR({
        RADDR[8], RADDR[7], RADDR[6], RADDR[5], RADDR[4], RADDR[3], 
        RADDR[2], RADDR[1], RADDR[0], GND, GND, GND, GND, GND}), 
        .A_BLK_EN({VCC, VCC, VCC}), .A_CLK(RCLOCK), .A_DIN({GND, GND, 
        DI[31], DI[30], DI[29], DI[28], DI[27], DI[26], DI[25], DI[24], 
        GND, GND, DI[23], DI[22], DI[21], DI[20], DI[19], DI[18], 
        DI[17], DI[16]}), .A_REN(VCC), .A_WEN({VCC, VCC}), .A_DOUT_EN(
        DO_en), .A_DOUT_ARST_N(DO_nGrst), .A_DOUT_SRST_N(DOUTSRSTAP), 
        .B_ADDR({WADDR[8], WADDR[7], WADDR[6], WADDR[5], WADDR[4], 
        WADDR[3], WADDR[2], WADDR[1], WADDR[0], GND, GND, GND, GND, 
        GND}), .B_BLK_EN({WRB, VCC, VCC}), .B_CLK(WCLOCK), .B_DIN({GND, 
        GND, DI[15], DI[14], DI[13], DI[12], DI[11], DI[10], DI[9], 
        DI[8], GND, GND, DI[7], DI[6], DI[5], DI[4], DI[3], DI[2], 
        DI[1], DI[0]}), .B_REN(VCC), .B_WEN({VCC, VCC}), .B_DOUT_EN(
        DO_en), .B_DOUT_ARST_N(DO_nGrst), .B_DOUT_SRST_N(DOUTSRSTAP), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({VCC, GND, VCC}), 
        .A_WMODE({GND, GND}), .A_BYPASS(GND), .B_WIDTH({VCC, GND, VCC})
        , .B_WMODE({GND, GND}), .B_BYPASS(GND), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("COREFFT_C1_0%512-512%64-64%SPEED%0%1%TWO-PORT%ECC_EN-0")
         )  COREFFT_C1_COREFFT_C1_0_lsram_g5_R0C1 (.A_DOUT({nc8, nc9, 
        DO[63], DO[62], DO[61], DO[60], DO[59], DO[58], DO[57], DO[56], 
        nc10, nc11, DO[55], DO[54], DO[53], DO[52], DO[51], DO[50], 
        DO[49], DO[48]}), .B_DOUT({nc12, nc13, DO[47], DO[46], DO[45], 
        DO[44], DO[43], DO[42], DO[41], DO[40], nc14, nc15, DO[39], 
        DO[38], DO[37], DO[36], DO[35], DO[34], DO[33], DO[32]}), 
        .DB_DETECT(), .SB_CORRECT(), .ACCESS_BUSY(\ACCESS_BUSY[0][1] ), 
        .A_ADDR({RADDR[8], RADDR[7], RADDR[6], RADDR[5], RADDR[4], 
        RADDR[3], RADDR[2], RADDR[1], RADDR[0], GND, GND, GND, GND, 
        GND}), .A_BLK_EN({VCC, VCC, VCC}), .A_CLK(RCLOCK), .A_DIN({GND, 
        GND, DI[63], DI[62], DI[61], DI[60], DI[59], DI[58], DI[57], 
        DI[56], GND, GND, DI[55], DI[54], DI[53], DI[52], DI[51], 
        DI[50], DI[49], DI[48]}), .A_REN(VCC), .A_WEN({VCC, VCC}), 
        .A_DOUT_EN(DO_en), .A_DOUT_ARST_N(DO_nGrst), .A_DOUT_SRST_N(
        DOUTSRSTAP), .B_ADDR({WADDR[8], WADDR[7], WADDR[6], WADDR[5], 
        WADDR[4], WADDR[3], WADDR[2], WADDR[1], WADDR[0], GND, GND, 
        GND, GND, GND}), .B_BLK_EN({WRB, VCC, VCC}), .B_CLK(WCLOCK), 
        .B_DIN({GND, GND, DI[47], DI[46], DI[45], DI[44], DI[43], 
        DI[42], DI[41], DI[40], GND, GND, DI[39], DI[38], DI[37], 
        DI[36], DI[35], DI[34], DI[33], DI[32]}), .B_REN(VCC), .B_WEN({
        VCC, VCC}), .B_DOUT_EN(DO_en), .B_DOUT_ARST_N(DO_nGrst), 
        .B_DOUT_SRST_N(DOUTSRSTAP), .ECC_EN(GND), .BUSY_FB(GND), 
        .A_WIDTH({VCC, GND, VCC}), .A_WMODE({GND, GND}), .A_BYPASS(GND)
        , .B_WIDTH({VCC, GND, VCC}), .B_WMODE({GND, GND}), .B_BYPASS(
        GND), .ECC_BYPASS(GND));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
