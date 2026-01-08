///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: Divider_Signed.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::PolarFireSoC> <Die::MPFS025T> <Package::FCSG325>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module Divider_Signed #(
    parameter WIDTH = 32
    )(
    input wire clk, 
    input wire rst, 
    input wire start, 
    input wire signed [WIDTH-1:0] num,
    input wire signed [WIDTH-1:0] den,
    
    output reg signed [WIDTH-1:0] quot,
    output reg signed [WIDTH:0]   rema,
    output reg done_op
    );
//<statements>
    reg [WIDTH-1:0]             num_abs, den_abs;
    reg [WIDTH-1:0]             quotient;
    reg [WIDTH:0]               remainder;
    reg                         sign_q;
    reg [$clog2(WIDTH+1)-1:0]   count;
    
    localparam IDLE = 0, INIT = 1, DIV = 2, FIX = 3, DONE = 4;
    reg [2:0] state;
    
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            done_op <= 1'b0;
        end else begin
            done_op <= 1'b0;
            
            case (state)
            
                IDLE: begin
                    if (start) state <= INIT;
                end
                
                INIT: begin
                    sign_q  <= num[WIDTH-1] ^ den[WIDTH-1];
                    num_abs <= num[WIDTH-1]? -num : num;
                    den_abs <= den[WIDTH-1]? -den : den;
                    
                    quotient    <= 0;
                    remainder   <= 0;
                    count       <= WIDTH;
                    state       <= DIV;
                end
                    
                DIV: begin
                    remainder   <= {remainder[WIDTH-1:0], num_abs[WIDTH-1]};
                    num_abs     <= {num_abs[WIDTH-2:0],1'b0};
                    
                    if (remainder >= den_abs) begin
                        remainder   <= remainder - den_abs;
                        quotient    <= {quotient[WIDTH-2], 1'b1};
                    end else begin
                        quotient    <= {quotient[WIDTH-2], 1'b0};
                    end
                    
                    count <= count - 1;
                    if (count == 1)
                        state <= FIX;
                    end
        
                FIX: begin
                    quot    <= sign_q? -quotient : quotient;
                    rema    <= sign_q? -remainder: remainder;
                    state   <= DONE;
                end
                
                DONE: begin
                    done_op    <= 1'b1;
                    state       <= IDLE;
                end
            endcase
        end
    end
    
endmodule

