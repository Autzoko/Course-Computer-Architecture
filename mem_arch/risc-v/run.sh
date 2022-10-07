echo "Compile fibonacci.c with RISC-V cross compiler"
echo "Under directory:risc-v"
cd ../
echo "Generating RISC-V binary file"
riscv64-unknown-elf-gcc fibonacci.c -o ./risc-v/riscv_fibonacci.o
echo "Generating RISC-V assembly file"
riscv64-unknown-elf-gcc fibonacci.c -S -o ./risc-v/riscv_fibonacci.s

echo "Running with qemu"
qemu-riscv64 riscv_fibonacci.o | tee riscv_run_output.log