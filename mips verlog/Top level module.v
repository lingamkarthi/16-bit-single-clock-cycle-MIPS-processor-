module data_memory( 
input clk, 
input mem_write, 
input mem_read, 
input [7:0] address, 
input [15:0] write_data, 
output reg [15:0] read_data 
); 
reg [15:0] memory [0:255]; 
// Initialize some RAM locations to avoid X 
initial begin 
memory[3]   = 123; 
memory[14]  = 34; 
memory[43]  = 0; 
memory[54]  = 0; 
memory[58]  = 0; 
memory[63]  = 123; 
memory[150] = 0; 
memory[154] = 10; 
end 
always @(posedge clk) begin 
if (mem_write) begin 
memory[address] <= write_data; 
$display("[RAM WRITE] At time %t: memory[%0d] <= %0d", $time, 
address, write_data); 
end 
// Print read only once on posedge clk if mem_read is active 
if (mem_read) begin 
read_data <= memory[address]; 
$display("[RAM READ]  At time %t: memory[%0d] => %0d", $time, 
address, memory[address]); 
end else begin 
read_data <= 16'b0; 
end 
end 
endmodule