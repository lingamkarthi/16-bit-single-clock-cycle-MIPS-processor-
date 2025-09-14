# 16-bit-single-clock-cycle-MIPS-processor-


This project focuses on designing a 16-bit Single Cycle MIPS Processor using Verilog, a hardware description language. The processor executes each instruction within a single clock cycle, ensuring fast and efficient performance. It supports essential MIPS instructions for arithmetic, logic, memory access, and control flow operations. Key components include the program counter, instruction memory, ALU, register file, control unit, and data memory—all integrated into a unified datapath. The design is thoroughly tested for correctness and performance using simulation tools. The outcome is a functional, Verilogbased processor core suitable for educational use and as a foundational element in custom digital system designs. it is implemented using cadence digital tool


## METHODOLOGY

The Verilog code developed implements a 16-bit Single Cycle MIPS Processor that executes one instruction per clock cycle. The processor supports a basic subset of MIPS instructions including arithmetic, logical, load/store, and branch operations. It is structured into several modules, each responsible for a specific function in the instruction execution cycle. 
 Instruction Fetch (IF) Stage: The Program Counter (PC) holds the address of the current instruction. On every positive clock edge, the PC is updated to point to the next instruction unless a branch is taken. 
 Instruction Decode (ID) Stage: The instruction fetched from memory is decoded by the Control Unit, which generates appropriate control signals based on the opcode and function fields. The Register File reads the source operands during this stage. 
 Execution (EX) Stage: The Arithmetic Logic Unit (ALU) performs the required operation (add, sub, AND, OR, etc.) based on the control signals. For branch instructions, it also evaluates the condition anddetermines the target address. 
 Memory Access (MEM) Stage: For lw and sw instructions, the Data Memory module is accessed. The data is either read from memory into a register or written from a register to memory. 


#   Advantages

Simple Architecture makes it ideal for educational purposes and easy to understand, design, and debug. 
Faster Execution per Instruction since each instruction completes in a single clock cycle, ensuring minimal latency for basic operations. 
Efficient Control Logic due to the single-cycle design, which avoids the complexity of pipeline hazards and forwarding. 
Compact and Cost-Effective implementation suitable for low-power and resource-constrained applications such as embedded systems. 
FPGA and ASIC Compatible design allows seamless implementation on hardware platforms for real-world prototyping and testing. 

#   Conclusion

The 16-bit Single Cycle MIPS Processor demonstrates the fundamental principles of processor design, where each instruction is executed in a single clock cycle for efficient and predictable performance. Its straightforward architecture makes it ideal for educational purposes and lightweight embedded applications. This design effectively showcases how complex instruction execution can be broken down into manageable digital operations, such as fetching, decoding, executing, and memory access—all coordinated within a single cycle. With its modular structure and compatibility with FPGA platforms, this processor serves as a strong foundation for learning, experimentation, and further enhancements like pipelining or multi-cycle execution.


