`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2022 01:43:35 PM
// Design Name: 
// Module Name: add_sub
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

interface add_sub_conect #(parameter NUM_OF_BITS=32) (input clk);
    //Input 
    logic [NUM_OF_BITS -1:0] A;
    logic [NUM_OF_BITS -1:0] B;
    logic [NUM_OF_BITS -1:0] N;
    logic B_bit;
    logic carry_in;
    logic borrow_1_in;
    logic borrow_2_in;
    logic enable;
    logic reset_n;
    
    //Output
    logic [NUM_OF_BITS -1:0] S0;
    logic [NUM_OF_BITS -1:0] S1;
    logic [NUM_OF_BITS -1:0] S2;
    logic carry_out;
    logic borrow_1_out;
    logic borrow_2_out;
    modport TB (output A, B, N, B_bit, carry_in, borrow_1_in, borrow_2_in, enable, reset_n, input S0, S1, S2, carry_out, borrow_1_out, borrow_2_out, clk);
    modport DUT (input A, B, N, B_bit, carry_in, borrow_1_in, borrow_2_in, enable, reset_n, clk, output S0, S1, S2, carry_out, borrow_1_out, borrow_2_out);
endinterface
        
module add_sub #(parameter NUM_OF_BITS=32) ( add_sub_conect conect);
logic [NUM_OF_BITS:0] adder_out_A;
logic [NUM_OF_BITS:0] adder_out_C;
logic [NUM_OF_BITS:0] adder_out;


logic signed [NUM_OF_BITS:0] sub_1_out;
logic signed [NUM_OF_BITS:0] sub_2_out;


always @* begin
     adder_out_A <= conect.A + conect.B + conect.carry_in;
     adder_out_C <= conect.B + conect.carry_in;
     adder_out <= conect.B_bit ? adder_out_A : adder_out_C;
    
     sub_1_out <= signed'(adder_out) - signed'(conect.N) - conect.borrow_1_in;
    
     sub_2_out <= signed'(adder_out) - signed'(conect.N << 1) - conect.borrow_2_in;
end

always_ff @(posedge conect.clk) begin

    if(conect.reset_n == 0) begin
     conect.S0 <= 0;
     conect.S1 <= 0;
     conect.S2 <= 0;
     conect.carry_out <= 0;
     conect.borrow_1_out <= 0;
     conect.borrow_2_out <= 0;
    
   end else if(conect.enable == 1) begin
     conect.S0 <= adder_out[NUM_OF_BITS-1:0];
     conect.S1 <= sub_1_out[NUM_OF_BITS-1:0];
     conect.S2 <= sub_2_out[NUM_OF_BITS-1:0];
     conect.carry_out <= adder_out[NUM_OF_BITS];
     conect.borrow_1_out <= sub_1_out[NUM_OF_BITS];
     conect.borrow_2_out <= sub_2_out[NUM_OF_BITS];
    end
end

endmodule
