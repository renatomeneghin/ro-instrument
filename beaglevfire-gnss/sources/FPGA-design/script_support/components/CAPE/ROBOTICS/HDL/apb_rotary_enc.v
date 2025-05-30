

module apb_rotary_enc
  (
    input         presetn,
    input         pclk,
    input         psel,
    input         penable,
    input         pwrite,
    output        pslverr,
    output        pready,
    input  [7:0]  paddr,
    input  [31:0] pwdata,
    output [31:0] prdata,
    input         enc0_a,
    input         enc0_b,
    input         enc1_a,
    input         enc1_b,
    input         enc2_a,
    input         enc2_b,
    input         enc3_a,
    input         enc3_b
  );

  reg [7:0] ctrl_reg;

  reg [31:0] apb_read_value;

  wire write_from_apb;
  wire [9:0] cmd_index;
  wire [31:0] cmd_word;

  assign pslverr = 1'b0;
  assign pready= 1'b1;
  assign prdata= apb_read_value;;

  wire [31:0] count0;
  wire [31:0] count1;
  wire [31:0] count2;
  wire [31:0] count3;
  wire enc_clk;

  wire debounced_enc0_a;
  wire debounced_enc0_b;
  wire debounced_enc1_a;
  wire debounced_enc1_b;
  wire debounced_enc2_a;
  wire debounced_enc2_b;
  wire debounced_enc3_a;
  wire debounced_enc3_b;


  reg [1:0] counter;
  assign enc_clk = counter[1];

  //---------------------------------------------------------------------------
  always @(negedge pclk)
    begin
      counter <= counter + 1;
    end

  //---------------------------------------------------------------------------
  debounce debounce_0a
    (
      .clk(enc_clk),
      .switch_in(enc0_a),
      .switch_out(debounced_enc0_a)
    );

  debounce debounce_0b
    (
      .clk(enc_clk),
      .switch_in(enc0_b),
      .switch_out(debounced_enc0_b)
    );

  debounce debounce_1a
    (
      .clk(enc_clk),
      .switch_in(enc1_a),
      .switch_out(debounced_enc1_a)
    );

  debounce debounce_1b
    (
      .clk(enc_clk),
      .switch_in(enc1_b),
      .switch_out(debounced_enc1_b)
    );

  debounce debounce_2a
    (
      .clk(enc_clk),
      .switch_in(enc2_a),
      .switch_out(debounced_enc2_a)
    );

  debounce debounce_2b
    (
      .clk(enc_clk),
      .switch_in(enc2_b),
      .switch_out(debounced_enc2_b)
    );

  debounce debounce_3a
    (
      .clk(enc_clk),
      .switch_in(enc3_a),
      .switch_out(debounced_enc3_a)
    );

  debounce debounce_3b
    (
      .clk(enc_clk),
      .switch_in(enc3_b),
      .switch_out(debounced_enc3_b)
    );

  //---------------------------------------------------------------------------
  rotary_encoder rotary_encoder0
    (
      .clk(enc_clk),
      .reset_n(presetn),
      .in_a(debounced_enc0_a),
      .in_b(debounced_enc0_b),
      .count(count0)
    );

  //---------------------------------------------------------------------------
  rotary_encoder rotary_encoder1
    (
      .clk(enc_clk),
      .reset_n(presetn),
      .in_a(debounced_enc1_a),
      .in_b(debounced_enc1_b),
      .count(count1)
    );

  //---------------------------------------------------------------------------
  rotary_encoder rotary_encoder2
    (
      .clk(enc_clk),
      .reset_n(presetn),
      .in_a(debounced_enc2_a),
      .in_b(debounced_enc2_b),
      .count(count2)
    );

  //---------------------------------------------------------------------------
  rotary_encoder rotary_encoder3
    (
      .clk(enc_clk),
      .reset_n(presetn),
      .in_a(debounced_enc3_a),
      .in_b(debounced_enc3_b),
      .count(count3)
    );

  //---------------------------------------------------------------------------
  always @(negedge pclk)
    begin
      case (paddr)
        8'h00:    apb_read_value <= count0;
        8'h10:    apb_read_value <= count1;
        8'h20:    apb_read_value <= count2;
        8'h30:    apb_read_value <= count3;
        default:  apb_read_value <= 32'h00000000;
      endcase
    end

endmodule

