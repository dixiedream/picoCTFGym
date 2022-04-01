FROM kalilinux/kali-rolling

RUN apt-get update && apt-get install -y \
    wget \
    elfutils \
    patchelf 

RUN mkdir -p /app

WORKDIR /app

COPY ./ /app

RUN wget https://github.com/io12/pwninit/releases/download/3.2.0/pwninit && \
    chmod +x ./pwninit

#RUN ./pwninit --bin heapedit && \
#    LD_PREALOAD=./libc.so.6 ./ld-2.27.so ./heapedit
