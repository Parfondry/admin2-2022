FROM php:7.2-apache

#Ajouts des packets utilisés
RUN apt update -y && apt upgrade -y
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt install openssl

#Mise en place du certificat pour le site en B2B
RUN openssl genrsa -out /etc/ssl/certs/b2b.key 2048
RUN openssl req -new -sha256 -key /etc/ssl/certs/b2b.key -out /etc/ssl/certs/b2b.csr -subj "/C=BE/ST=Brabant-wallon/L=Louvain-La-Neuve/O=Ephec/OU=IT/CN=b2b.m1-1.ephec-ti.be"
RUN openssl x509 -req -days 365 -in /etc/ssl/certs/b2b.csr -signkey /etc/ssl/certs/b2b.key -out /etc/ssl/certs/b2b.crt

#Mise en place du certificat pour le site public
RUN openssl genrsa -out /etc/ssl/certs/www.key 2048
RUN openssl req -new -sha256 -key /etc/ssl/certs/www.key -out /etc/ssl/certs/www.csr -subj "/C=BE/ST=Brabant-wallon/L=Louvain-La-Neuve/O=Ephec/OU=IT/CN=www.m1-1.ephec-ti.be"
RUN openssl x509 -req -days 365 -in /etc/ssl/certs/www.csr -signkey /etc/ssl/certs/www.key -out /etc/ssl/certs/www.crt

#Faits une copie des fichiers utilisés pour le container docker
COPY config/www.m1-1.ephec-ti.be.conf /etc/apache2/sites-available
COPY config/b2b.m1-1.ephec-ti.be.conf /etc/apache2/sites-available

#Faits le liens entre site-available et site-enabled
RUN ln -s /etc/apache2/sites-available/www.m1-1.ephec-ti.be.conf /etc/apache2/sites-enabled
RUN ln -s /etc/apache2/sites-available/b2b.m1-1.ephec-ti.be.conf /etc/apache2/sites-enabled

#Création de nouveaux répertoires dans nos containers
RUN mkdir /var/www/b2b.m1-1.ephec-ti.be
RUN mkdir /var/www/www.m1-1.ephec-ti.be

#Créé une copie des fichier des pages web à afficher
COPY /sites/www/index.html /var/www/www.m1-1.ephec-ti.be
COPY /sites/b2b/index.php /var/www/b2b.m1-1.ephec-ti.be

#Lance SSL et le service apache
RUN a2enmod ssl
RUN service apache2 start