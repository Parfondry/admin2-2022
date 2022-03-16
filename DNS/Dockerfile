FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install bind9 bind9utils dnsutils net-tools -y

#Fichier de configuration à créer :

#COPY named.conf /etc/bind/
#COPY named.conf.local /etc/bind/
#COPY named.conf.options /etc/bind/
#COPY m1-1.ephec-ti.be /etc/bind/

EXPOSE 53/udp
EXPOSE 53/tcp

#CMD ["named", "-c", "/etc/bind/named.conf", "-g"]
