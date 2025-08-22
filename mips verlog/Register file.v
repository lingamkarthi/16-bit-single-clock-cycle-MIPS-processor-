`timescale 1ns / 1ps 
module register( 
input clk, 
input RegWrite, 
input [3:0] rs, 
input [3:0] rt, 
input [3:0] Write_reg, 
input [15:0] Write_data, 
output reg [15:0] Read_data1, 
output reg [15:0] Read_data2 
); 
reg [15:0] register_mem [15:0]; 
initial begin 
register_mem[0]  = 16'd10;    // <-- Make sure R0 is initialized to 0 
register_mem[1]  = 16'd20; 
register_mem[2]  = 16'd30; 
register_mem[3]  = 16'd50; 
register_mem[4]  = 16'd40; 
register_mem[5]  = 16'd60; 
register_mem[6]  = 16'd70; 
register_mem[7]  = 16'd80; 
register_mem[8]  = 16'd90; 
register_mem[9]  = 16'd100; 
register_mem[10] = 16'd110; 
register_mem[11] = 16'd120; 
register_mem[12] = 16'd130; 
register_mem[13] = 16'd140; 
register_mem[14] = 16'd150; 
register_mem[15] = 16'd160; 
end 
// Read ports (combinational) 
always @(*) begin 
Read_data1 = register_mem[rs]; 
Read_data2 = register_mem[rt]; 
end 
// Write port (synchronous, prevent writing to register 0) 
always @(posedge clk) begin 
if (RegWrite && Write_reg != 4'b0000) 
register_mem[Write_reg] <= Write_data; 
end 
endmodule