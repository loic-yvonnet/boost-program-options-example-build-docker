#!/bin/bash

git clone git@github.com:loic-yvonnet/boost-program-options-example-dev.git 
mv boost-program-options-example-dev/CMakeLists.txt .
mv boost-program-options-example-dev/src .
rm -rf boost-program-options-example-dev

./start.sh
