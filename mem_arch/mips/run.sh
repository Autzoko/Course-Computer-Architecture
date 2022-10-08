echo "Running on mips"

echo "Generating binary file..."
mipsel-linux-gcc ../fibonacci.c -static -o mips_fibonacci.o
echo "Generating assembly file..."
mipsel-linux-gcc ../fibonacci.c -S -o mips_fibonacci.s

echo "Running file"
qemu-mipsel mips_fibonacci.o | tee output.log