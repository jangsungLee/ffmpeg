#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y fswebcam build-essential

cd /home/pi
git clone https://code.videolan.org/videolan/x264.git
cd x264
./configure --host=arm-unknown-linux-gnueabi --enable-static --disable-opencl
make -j4  # 코어 수를 적어주시면 됩니다.
sudo make install

sudo apt-get install -y libav-tools
cd /home/pi
git clone https://github.com/FFmpeg/FFmpeg.git
cd FFmpeg
sudo ./configure --arch=armel --target-os=linux --enable-gpl --enable-libx264 --enable-nonfree
make -j4 # 코어 수를 적어주시면 됩니다.
sudo make install

