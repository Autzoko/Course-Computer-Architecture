echo "RUNNING FILE FIBONACCI.C"
cd Mem_arch
gcc fibonacci.c -S -w -o fibonacci.s
gcc fibonacci.c -w -o fibonacci.o
gcc fibonacci.c -w -g -o fibonacci_debug.o
./fibonacci.o | tee output.log
objdump -d fibonacci.o | tee dis_d.log
objdump -h fibonacci.o | tee dis_h.log
cd ../

echo "DEBUG..."
gdb ./Mem_arch/fibonacci_debug.o