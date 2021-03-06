FROM ubuntu:18.04

RUN apt-get update && apt-get -y dist-upgrade
RUN apt-get -y install openssh-server
RUN apt-get -y install apache2
RUN apt-get -y install supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY foo /etc/foo

EXPOSE 22 80

CMD ["/usr/bin/supervisord"]
