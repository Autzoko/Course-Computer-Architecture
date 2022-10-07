echo "Installing RISC-V cross compile tools chain"
cd /home/
mkdir riscv
cd riscv
sudo git clone https://github.com/riscv/riscv-tools.git
cd riscv-tools
sudo git submodule update --init --recursive

cd ../
git clone --recursive https://github.com/riscv/riscv-gnu-toolchain

cd riscv-gnu-toolchain
sudo apt-get install autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev
sudo apt-get install libnewlib-dev

INSTALL_PATH='opt/riscv'
export PATH=$PATH:$INSTALL_PATH/BIN
./configure --prefix=$INSTALL_PATH
sudo make -j8