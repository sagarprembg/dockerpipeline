FROM ubuntu
RUN apt-get update
RUN apt-get install git -y
RUN mkdir repo 
COPY file  /repo
