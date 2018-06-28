#! /bin/bash

set -e
set -x

# TODO: make configurable
AFL_PATH="/home/vegard/VPZ/afl"

python rules2code.py < rules/js.txt > rules/js.hh
g++ -std=c++11 -I"${AFL_PATH}" -Wall -g -o main main.cc

mkdir -p output
