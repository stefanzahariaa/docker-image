# getting base image from Ubuntu
FROM ubuntu

MAINTAINER stefan zaharia <stefan.zaharia93@yahoo.com>

RUN apt-get update

CMD ["echo" , "Hello guys, this is my first docker image :)"]


