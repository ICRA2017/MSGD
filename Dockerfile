# 7989444
# https://github.com/chaogao-cam/MSGD

FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
	build-essential git \
	&& rm -rf /var/lib/apt/lists
	
RUN git clone https://github.com/ICRA2017/MSGD.git \\
	&& git checkout reproducible

RUN cd MSGD && make all

