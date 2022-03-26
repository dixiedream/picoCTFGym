#!/bin/sh

charToPrint=${1:-'\x00'}
n=${#str}
iterations=eval(50000 - 32)


for i in {0..iterations}; 
    do echo -n $charToPrint; 
done; 