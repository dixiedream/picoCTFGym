#!/bin/sh

python -c "print('a'*(50000 - 32));print('a'*32);" | nc mercury.picoctf.net 58913