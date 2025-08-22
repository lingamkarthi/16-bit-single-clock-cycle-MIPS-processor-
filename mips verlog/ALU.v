`timescale 1ns / 1ps 
module ALU( 
input [15:0] s1, 
input [15:0] s2, 
input ALUsrc, 
input [3:0] ALUop, 
input [15:0] im, 
output reg [15:0] ALU_out 
); 
wire [15:0] operand2; 
assign operand2 = ALUsrc ? im : s2; 
always @(*) begin 
case (ALUop) 
4'b0000: ALU_out = s1 + operand2;      
4'b0001: ALU_out = s1 - operand2;      
4'b0010: ALU_out = s1 + operand2;      
4'b0011: ALU_out = s1 + operand2;      
4'b0100: ALU_out = s1 + operand2;      
4'b0110: ALU_out = s1 ^ operand2;      
4'b0111: ALU_out = s1 | operand2;      
default: ALU_out = 16'hDEAD;           
endcase 
end 
endmodule