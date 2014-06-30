FROM debian:wheezy

MAINTAINER Mitar <mitar.docker@tnode.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q -q
RUN apt-get install apt-utils --yes --force-yes

RUN /bin/echo -e 'America/Los_Angeles' > /etc/timezone
RUN dpkg-reconfigure tzdata

RUN apt-get upgrade --yes --force-yes
