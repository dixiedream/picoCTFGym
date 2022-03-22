FROM python

RUN apt-get update && apt-get install -y gcc gdb netcat
