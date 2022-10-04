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
and
```shell
objdump -h fibonacci.o
```
to check the disassembly result of the executive file "fibonacci.o" 

The disassembly results of the main section are as follow: (from *dis_d.log*)
```assembly
0000000000001169 <main>:
    1169:	f3 0f 1e fa          	endbr64 
    116d:	55                   	push   %rbp
    116e:	48 89 e5             	mov    %rsp,%rbp
    1171:	48 83 ec 40          	sub    $0x40,%rsp
    1175:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    117c:	00 00 
    117e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1182:	31 c0                	xor    %eax,%eax
    1184:	c7 45 d0 01 00 00 00 	movl   $0x1,-0x30(%rbp)
    118b:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%rbp)
    1192:	c7 45 c8 02 00 00 00 	movl   $0x2,-0x38(%rbp)
    1199:	eb 27                	jmp    11c2 <main+0x59>
    119b:	8b 45 c8             	mov    -0x38(%rbp),%eax
    119e:	83 e8 01             	sub    $0x1,%eax
    11a1:	48 98                	cltq   
    11a3:	8b 54 85 d0          	mov    -0x30(%rbp,%rax,4),%edx
    11a7:	8b 45 c8             	mov    -0x38(%rbp),%eax
    11aa:	83 e8 02             	sub    $0x2,%eax
    11ad:	48 98                	cltq   
    11af:	8b 44 85 d0          	mov    -0x30(%rbp,%rax,4),%eax
    11b3:	01 c2                	add    %eax,%edx
    11b5:	8b 45 c8             	mov    -0x38(%rbp),%eax
    11b8:	48 98                	cltq   
    11ba:	89 54 85 d0          	mov    %edx,-0x30(%rbp,%rax,4)
    11be:	83 45 c8 01          	addl   $0x1,-0x38(%rbp)
    11c2:	83 7d c8 09          	cmpl   $0x9,-0x38(%rbp)
    11c6:	7e d3                	jle    119b <main+0x32>
    11c8:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
    11cf:	eb 37                	jmp    1208 <main+0x9f>
    11d1:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    11d5:	8b 55 c8             	mov    -0x38(%rbp),%edx
    11d8:	48 63 d2             	movslq %edx,%rdx
    11db:	48 c1 e2 02          	shl    $0x2,%rdx
    11df:	48 01 d0             	add    %rdx,%rax
    11e2:	89 45 cc             	mov    %eax,-0x34(%rbp)
    11e5:	8b 45 c8             	mov    -0x38(%rbp),%eax
    11e8:	48 98                	cltq   
    11ea:	8b 44 85 d0          	mov    -0x30(%rbp,%rax,4),%eax
    11ee:	8b 55 cc             	mov    -0x34(%rbp),%edx
    11f1:	89 c6                	mov    %eax,%esi
    11f3:	48 8d 3d 0a 0e 00 00 	lea    0xe0a(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    11fa:	b8 00 00 00 00       	mov    $0x0,%eax
    11ff:	e8 6c fe ff ff       	callq  1070 <printf@plt>
    1204:	83 45 c8 01          	addl   $0x1,-0x38(%rbp)
    1208:	83 7d c8 09          	cmpl   $0x9,-0x38(%rbp)
    120c:	7e c3                	jle    11d1 <main+0x68>
    120e:	b8 00 00 00 00       	mov    $0x0,%eax
    1213:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1217:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    121e:	00 00 
    1220:	74 05                	je     1227 <main+0xbe>
    1222:	e8 39 fe ff ff       	callq  1060 <__stack_chk_fail@plt>
    1227:	c9                   	leaveq 
    1228:	c3                   	retq   
    1229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
```