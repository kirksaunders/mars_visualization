#!/bin/sh
#
#To make this script executable type:
#chmod +x ./build_linuxRel.sh
#
#Place this shell script in the root of your Module
#and execute it to start the linux build process.
#Linux Release using ccmake (console-based cmake)
#This script assumes you have *already* setup the
#prerequisites described in 
#"/aburn/engine/LINUX Build HOWTO.txt"
echo "This script expects to be run from root of a new module\n"
echo "For detailed into on compiling engine and modules,"
echo "aburn/engine/LINUX Build HOWTO.txt\n"

mkdir build_linuxRel ; cd build_linuxRel
ccmake ../src/ -DCMAKE_PREFIX_PATH=$CONDA_PREFIX
cd build_linuxRel

echo "After ccmake exits with a generate Makefile, type:"
echo "cd build_linuxRel ; make -j16\n"
