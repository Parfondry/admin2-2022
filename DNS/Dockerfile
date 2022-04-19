#Notre image seras issus d'un image ubuntu
FROM ubuntu:latest

# verification de MAJ,installation de MAj,installions bind9 sur notre image
RUN apt update && apt upgrade -y && apt install bind9 bind9utils dnsutils net-tools -y

#Fichier de configuration à créer :

COPY named.conf /etc/bind/
COPY named.conf.local /etc/bind/
COPY named.conf.options /etc/bind/
COPY m1-1.ephec-ti.be /etc/bind/

#Ouverture du port 53 en UDP/TCP
EXPOSE 53/udp
EXPOSE 53/tcp

#commande qui permet au serveur la lecture de la configuration BINd9
#CMD ["named", "-c", "/etc/bind/named.conf", "-g"]
