FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y git
RUN apt-get update
RUN apt-get install -y python3.6

WORKDIR /root
RUN mkdir /root/A /root/B /root/C
RUN mkdir files
RUN git clone https://github.com/Parkprogrammer/mypy.git

WORKDIR /root/files
RUN touch a.txt
RUN touch b.txt
RUN touch c.txt
