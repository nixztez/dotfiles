#!/usr/bin/bash

git clone https://github.com/Valloric/ycmd.git 
cd ycmd
git submodule update --init --recursive
python3 build.py --all

