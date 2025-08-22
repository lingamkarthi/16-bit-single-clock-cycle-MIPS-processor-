`timescale 1ns / 1ps 
module instruction_memory( 
input [15:0] p_in, 
output wire [15:0] instruction 
); 
reg [15:0] instruction1; 
reg [15:0] rom [15:0]; 
initial begin 
rom[0]  = 16'b0000_0001_0010_0011;  // ADD 
rom[1]  = 16'b0001_0010_0011_0100;  // SUB 
rom[2]  = 16'b0010_0011_0100_0101;  // ADDI 
rom[3]  = 16'b0011_0100_0101_0011;  // LW 
rom[4]  = 16'b0100_0101_0100_0011;  // SW 
rom[5]  = 16'b0110_0100_0011_0011;  // XOR 
rom[6]  = 16'b0111_0000_0000_0011;  // OR 
rom[7]  = 16'b0010_0010_0010_1111;  // ADDI 
rom[8]  = 16'b0000_0001_0001_0001;  // ADD 
rom[9]  = 16'b0001_0011_0001_0000;  // SUB 
rom[10] = 16'b0011_0001_0010_0100;  // LW 
rom[11] = 16'b0100_0010_0011_0100;  // SW 
rom[12] = 16'b0010_0011_0000_0001;  // ADDI 
rom[13] = 16'b0001_0001_0000_0001;  // SUB 
rom[14] = 16'b0111_0000_0101_0100;  // OR 
rom[15] = 16'b0101_0000_0000_0000;  // JUMP (to 0) 
end 
always @(*) begin 
if ((p_in >> 1) < 16) 
instruction1 = rom[p_in >> 1]; 
else 
instruction1 = 16'b0000_0000_0000_0000; 
end 
assign instruction = instruction1; 
endmodule