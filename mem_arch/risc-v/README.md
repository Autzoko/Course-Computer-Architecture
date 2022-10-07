## Running On RISC-V

### Cross Compile

To install RISC-V cross compile toolchain in Linux x86_64, please run
```shell
bash tools_chain_install.sh
```
After the environment is installed, use command
```shell
riscv64-unknown-elf-gcc
```
to compile c language file into RISC-V binary file or assembly file.
Or could directly use command
```shell
bash run.sh
```
to generate related files.
The cross-compiler generated assembly file is **riscv_fibonacci.s**.
Here use qemu to run RISC-V binary file. Use command
```shell
qemu-riscv64 riscv_fibonacci.o
```
to complete. The running output is recorded in file **riscv_run_output.log**.

### Run Online
Online Assembler link: www.kvakil.me/venus/. Copy the self-written assembly code from **fibonacci.s** under this directory to the website then
run the file step by step. 
#### Explanation
Besides the first two number in fibonacci array, every each number will be calculated between register *x1* and *x2*. Registers *x10*, *x11* and *x12* are for counting times. The results will be stored to 0x0 to 0x9 in the virtual memory. 
