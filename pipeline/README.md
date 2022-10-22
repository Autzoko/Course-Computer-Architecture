# Computer Architecture Lab: Analysis of Instruction Execution Pipeline

## Assignment Requirements
Using the following code fragment:
```assembly
Loop:
    LW      R1, 0(R2); Load R1 from address [0+R2]
    ADDI    R1, R1, #1; R1=R1+1
    SW      0(R2), R1; Store R1 at address [0+R2]
    ADDI    R2, R2, #4; R2=R2+4
    SUB     R4, R3, R2; R4=R3-R2
    BNEZ    R4, Loop; Branch to loop if R4 != 0
```
Assume that the initial value of R3 is R2+396.
Analyze (a) by showing the timing of the first two iterations and calculate the total cycles needed; implement (b) and (c) in WinMIPS64. Execute the code in MARS, describe the difference between WinMIPS64 and MARS.
- (a)**Show** the timing of this instruction sequence for the RISC pipeline **without any forwarding or bypassing** hardware but assuming *a register read and a write in the same clock cycle “forwards” through the register file. Assume that the branch is handled by flushing the pipeline.* If all memory references take 1 cycle, **how many** cycles does this loop take to execute?
- (b)**Show** the timing of this instruction sequence for the RISC pipeline **with normal forwarding and bypassing hardware.** *Assume that the branch is handled by predicting it as not taken.* If all memory references take 1 cycle, **how many** cycles does this loop take to execute?
- (c)Assume the RISC pipeline with a single-cycle delayed branch and normal forwarding and bypassing hardware. Schedule the instructions in the loop including the branch delay slot. You **may reorder instructions and modify the individual instruction operands**, but do not undertake other loop transformations that change the number or opcode of the instructions in the loop. **Show** a pipeline timing diagram and compute **the number of cycles needed** to execute the entire loop.