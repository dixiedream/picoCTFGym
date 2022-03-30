FROM ubuntu

ENV ARG1=4134207980
ENV ARG2=950176538

RUN apt-get update && apt-get install -y \
    file \
    binutils-aarch64-linux-gnu \
    gcc-aarch64-linux-gnu \
    qemu-user-static

RUN mkdir /app

WORKDIR /app

COPY ./chall.S ./

RUN aarch64-linux-gnu-as -o chall.o chall.S
RUN aarch64-linux-gnu-gcc -static -o chall chall.o

CMD qemu-aarch64-static ./chall $ARG1 $ARG2
