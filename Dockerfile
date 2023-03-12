FROM alpine
RUN  apt update
RUN  apt-get install git
RUN mkdir repo 
COPY file  /repo
