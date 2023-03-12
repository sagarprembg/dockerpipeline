FROM alpine
RUN  sudo apt-get update
RUN  sudo apt-get install git
RUN mkdir repo 
COPY file  /repo
