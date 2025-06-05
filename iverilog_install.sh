sudo apt-get update
sudo apt-get install git build-essential autoconf flex bison gperf
cd
cd
git clone https://github.com/steveicarus/iverilog.git
cd iverilog
autoconf
./configure
make
sudo make install