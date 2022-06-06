FROM ubuntu:latest

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install net-tools bind9 bind9-utils dnsutils nano -y

COPY named.conf /etc/bind/
COPY named.conf.options /etc/bind/
COPY named.conf.default-zones /etc/bind/
COPY named.conf.local /etc/bind/
COPY db.intranet.m1-1.ephec-ti.be /etc/bind/

EXPOSE 53/TCP
EXPOSE 53/UDP

CMD ["named", "-c", "/etc/bind/named.conf", "-g"]
