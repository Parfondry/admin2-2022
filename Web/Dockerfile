FROM nginx:latest

RUN apt-get update && apt-get install -y nginx-full

RUN mkdir /usr/share/nginx/html/www
RUN mkdir /usr/share/nginx/html/b2b

COPY index.html /usr/share/nginx/html/www/
COPY index.php /usr/share/nginx/html/b2b/
COPY nginx.conf /etc/nginx/

EXPOSE 80
EXPOSE 443