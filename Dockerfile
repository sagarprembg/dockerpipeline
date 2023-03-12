FROM alpine
RUN apt-get update
RUN apt-get install git
RUN mkdir repo 
COPY file  /repo
