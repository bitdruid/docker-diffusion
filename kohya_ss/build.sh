#!bin/bash

git clone --recursive https://github.com/bmaltais/kohya_ss
cd kohya_ss
docker build -t kohya_ss:latest --build-arg UID=1000 .
cd ..
rm -rf kohya_ss
