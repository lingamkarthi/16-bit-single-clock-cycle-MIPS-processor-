`timescale 1ns / 1ps 
module decode( 
input [15:0] instruction_in, 
output reg [3:0] rs, rt, opcode, rd, im, 
output reg [11:0] jump 
); 
always @(*) begin 
// Default values 
rs = 4'b0000; 
rt = 4'b0000; 
rd = 4'b0000; 
im = 4'b0000; 
jump = 12'b000000000000; 
opcode = instruction_in[15:12];    
case(opcode) 
4'b0000: begin  // ADD 
rd = instruction_in[11:8]; 
rs = instruction_in[7:4]; 
rt = instruction_in[3:0]; 
end 
4'b0001: begin  // SUB 
rd = instruction_in[11:8]; 
rs = instruction_in[7:4]; 
rt = instruction_in[3:0]; 
end 
4'b0010: begin  // ADDI 
rd = instruction_in[11:8]; 
rs = instruction_in[7:4]; 
im = instruction_in[3:0]; 
end 
4'b0011: begin  // LW 
rd = instruction_in[11:8]; // destination register to load into 
rs = instruction_in[7:4];  // base register 
im = instruction_in[3:0];  // offset 
end 
4'b0100: begin  // SW 
rt = instruction_in[11:8]; // ? source register to store FROM (fix) 
rs = instruction_in[7:4];  // ? base register 
im = instruction_in[3:0];  // ? offset 
end 
4'b0101: begin  // JUMP 
jump = instruction_in[11:0]; 
end 
4'b0110: begin  // XOR 
rd = instruction_in[11:8]; 
rs = instruction_in[7:4]; 
rt = instruction_in[3:0]; 
end 
4'b0111: begin  // OR 
rd = instruction_in[11:8]; 
rs = instruction_in[7:4]; 
rt = instruction_in[3:0]; 
end 
endcase 
end 
endmodule