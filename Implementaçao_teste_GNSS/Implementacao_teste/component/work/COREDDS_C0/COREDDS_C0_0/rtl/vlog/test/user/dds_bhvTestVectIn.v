// CoreDDS Input Test Vectors.
// - When PH_INC_MODE==1 use the FREQ_OFFSET and FREQ_OFFSET_WE signals
// - When PH_OFFSET_MODE==2 use the PH_OFFSET and PH_OFFSET_WE signals
// Test run length = 510

`timescale 1 ns/100 ps

module dds_bhvTestVectIn (sample_num, freq_offset, freq_offset_we,
                          ph_offset, ph_offset_we);
    parameter PH_OFFSET_BITS = 10;
    parameter FREQ_OFFSET_BITS = 10;
  input [9:0] sample_num;
  output[FREQ_OFFSET_BITS-1:0] freq_offset;
  output[PH_OFFSET_BITS-1:0]  ph_offset;
  output freq_offset_we, ph_offset_we;
  reg [FREQ_OFFSET_BITS-1:0] freq_offset;
  reg [PH_OFFSET_BITS-1:0]  ph_offset;
  reg freq_offset_we, ph_offset_we;

  always @ (sample_num) 
    case (sample_num)
        0: begin
             freq_offset = 3'd0;
             freq_offset_we = 1'b1;
             ph_offset = 3'd0;
             ph_offset_we = 1'b1;
           end
        1: begin
             freq_offset = 3'd0;
             freq_offset_we = 1'b1;
             ph_offset = 3'd0;
             ph_offset_we = 1'b1;
           end
  default: begin
             freq_offset_we = 1'b0;
             ph_offset_we   = 1'b0;
           end
    endcase
endmodule
