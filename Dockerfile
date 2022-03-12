FROM ubuntu:latest

WORKDIR /tmp

RUN apt update && apt install -y gcc g++ gcc-multilib

COPY ./prog_c.c .
COPY ./prog_asm.s .
COPY ./prog_cpp.cpp .

RUN gcc -m32 -no-pie ./prog_asm.s -o 1
RUN g++ prog_cpp.cpp -o 2
RUN gcc prog_c.c -o 3
