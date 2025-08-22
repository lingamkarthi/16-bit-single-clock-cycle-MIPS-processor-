`timescale 1ns / 1ps 
module control_unit( 
input [3:0] opcode, 
output reg RegDst, ALUsrc, MemtoReg, MemWrite, MemRead, RegWrite, 
jump, 
output reg [3:0] ALUOp 
); 
always @(*) begin 
case (opcode) 
4'b0000: begin  // ADD 
RegDst = 1; ALUsrc = 0; MemtoReg = 0; RegWrite = 1; 
MemWrite = 0; MemRead = 0; jump = 0; ALUOp = 4'b0000; 
end 
4'b0001: begin  // SUB 
RegDst = 1; ALUsrc = 0; MemtoReg = 0; RegWrite = 1; 
MemWrite = 0; MemRead = 0; jump = 0; ALUOp = 4'b0001; 
end 
4'b0010: begin  // ADDI 
RegDst = 0; ALUsrc = 1; MemtoReg = 0; RegWrite = 1; 
MemWrite = 0; MemRead = 0; jump = 0; ALUOp = 4'b0010; 
end 
4'b0011: begin  // LW 
RegDst = 0; ALUsrc = 1; MemtoReg = 1; RegWrite = 1; 
MemWrite = 0; MemRead = 1; jump = 0; ALUOp = 4'b0011; 
end 
4'b0100: begin  // SW 
RegDst = 0; ALUsrc = 1; MemtoReg = 0; RegWrite = 0; 
MemWrite = 1; MemRead = 0; jump = 0; ALUOp = 4'b0100; 
end 
4'b0101: begin  // JUMP 
RegDst = 0; ALUsrc = 0; MemtoReg = 0; RegWrite = 0; 
MemWrite = 0; MemRead = 0; jump = 1; ALUOp = 4'b0000; 
end 
4'b0110: begin  // XOR 
RegDst = 1; ALUsrc = 0; MemtoReg = 0; RegWrite = 1; 
MemWrite = 0; MemRead = 0; jump = 0; ALUOp = 4'b0110; 
end 
4'b0111: begin  // OR 
RegDst = 1; ALUsrc = 0; MemtoReg = 0; RegWrite = 1; 
MemWrite = 0; MemRead = 0; jump = 0; ALUOp = 4'b0111; 
end 
default: begin 
RegDst = 0; ALUsrc = 0; MemtoReg = 0; RegWrite = 0; 
MemWrite = 0; MemRead = 0; jump = 0; ALUOp = 4'b0000; 
end 
endcase 
end 
endmodule