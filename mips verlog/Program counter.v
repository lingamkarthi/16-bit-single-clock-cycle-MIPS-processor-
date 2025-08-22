`timescale 1ns / 1ps 
module PC( 
input clk, 
input rst, 
input jump, 
input [15:0] jump_address, 
output wire [15:0] pc_out 
); 
reg [15:0] p_c; 
wire [15:0] pc_next; 
assign pc_next = (jump) ? jump_address : (p_c + 2); 
always @(posedge clk or posedge rst) begin 
if (rst) 
p_c <= 0; 
else if (p_c >= 16'd30)  // wrap at last instruction (15*2 = 30) 
p_c <= 0; 
else 
p_c <= pc_next; 
end 
assign pc_out = p_c; 
endmodule