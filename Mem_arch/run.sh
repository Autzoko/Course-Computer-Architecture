echo "RUNNING FILE FIBONACCI.C"
cd Mem_arch
gcc fibonacci.c -S -w -o fibonacci.s
gcc fibonacci.c -w -o fibonacci.o
./fibonacci.o | tee output.log
objdump -d fibonacci.o | tee disassembling.log
cd ../