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
