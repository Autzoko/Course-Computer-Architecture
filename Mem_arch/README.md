### Assignment Requirements
- Write a Fibonacci.c storing the first ten sequence numbers. Run the Fibonacci program in your computer, analyze the assembly code for the Fibonacci.c.
- Observe the memory areas in bytes for the Fibonacci numbers given by the computer where the Fibonacci program running. Analyze what you have seen.
- Cross compile the Fibonacci.c for RISC-V targets, or write the assembly code of Fibonacci.c in RISC-V assembly language, and run it in RISC-V online simulator (www.kvakil.me/venus/). Observe the memory areas in bytes for the Fibonacci numbers given by the RISC-V simulator.
- Cross compile the Fibonacci.c for MIPS targets, or write the assembly code of Fibonacci.c in MIPS assembly language, and run it in Mars simulator. Observe the memory areas in bytes for the Fibonacci numbers given by the Mars simulator.
- write the assembly code of Fibonacci.c in MIPS assembly language, and run it in WinMIPS64 simulator. Observe the memory areas in bytes for the Fibonacci numbers given by the WinMIPS simulator.
- (optional) Cross compile the Fibonacci.c for LoongArch64 targets, analyze the assembly code of Fibonacci.c in LoongArch64.

#### Run file
```shell
bash ./run.sh
```

### Analysis
Instructions that have a prefix of "." are not the content of
original codes, these instructions are called the assembler instrctions which is for guiding the assembler to process codes.
Here I use instruction
```shell
objdump -d fibonacci.o
```
to check the disassembly result of the executive file "fibonacci.o" 