FROM ubuntu:latest

RUN apt update

RUN apt install -y bind9 bind9utils bind9-doc vim

RUN mkdir -p /var/log/named/
RUN mkdir -p /etc/bind/zones/

CMD /usr/sbin/named -f -g