#!/bin/sh

docker run -it --rm --privileged multiarch/qemu-user-static --credential yes --persistent yes
docker run --rm -t -v chall.o:/chall.o arm64v8/ubuntu bash