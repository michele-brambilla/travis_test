#!/usr/bin/env bash
# Build script for continuous integration
set -ev
env | sort

# Install packages
#sudo yum update
sudo yum install -y libhiredis-dev libev-dev libgtest-dev redis-server

sudo yum install libzmq3-dev
#sudo apt-get update
#sudo apt-get install -y libhiredis-dev libev-dev libgtest-dev redis-server
#sudo apt-get install libzmq3-dev

pkg-config --libs libzmq
pkg-config --cflags libzmq

## Make gtest
#git clone https://github.com/google/googletest
#cd googletest
#mkdir build
#cd build
#cmake -DBUILD_GMOCK=OFF -DBUILD_GTEST=ON -DBUILD_SHARED_LIBS=ON ..
#time make -j2
#cd ../..
#sudo cp googletest/build/googletest/libg* /usr/local/lib/
#sudo cp -r googletest/googletest/include/gtest /usr/local/include
#
# Make
#make test

