#!/bin/sh

charToPrint=${1:-'\x00'}
n=${#str}


for i in {0..32}; # 50000 - 32 
    do echo -n $charToPrint; 
done; 

# Enc fla 51124f4d194969633e4b52026f4c07513a6f4d05516e1e50536c4954066a1c57
# Enc key 6f2448093f2448096b2448513f4b6c483a1a6c486c496c48381b6c486d1a6c48