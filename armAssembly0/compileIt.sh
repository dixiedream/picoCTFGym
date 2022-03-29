#!/bin/sh

aarch64-linux-gnu-as -o a.o chall.S
aarch64-linux-gnu-gcc -static -o chall.o a.o
rm -rf a.o
