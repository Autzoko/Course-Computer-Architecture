echo "RUNNING FILE FIBONACCI.C"
cd Mem_arch
gcc fibonacci.c -S -w -o fibonacci.s
gcc fibonacci.c -w -o fibnacci.o
./fibnacci.o | tee output.log
cd ../