FROM coala/base
MAINTAINER Lasse Schuirmann <lasse@schuirmann.net>

RUN pacman -S unzip --noconfirm

RUN mkdir /files
WORKDIR /files

COPY ./runit.sh /files
CMD runit.sh
