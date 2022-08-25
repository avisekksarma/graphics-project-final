#!/usr/bin/env bash

fileName=$(echo $1 | cut -f1 -d '.' -)
#echo $0
#echo $fileName
g++ -std=c++11 -c "$1" glad.c && g++ "$fileName".o glad.o -o open.exec -lGL -lGLU -lglfw -lX11 -lXxf86vm -lXrandr -lpthread -lXi  -ldl -lGLESv2  -lassimp && ./open.exec

# ./cleanup.sh

