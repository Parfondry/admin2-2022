#!/bin/sh

curl -o https://raw.githubusercontent.com/Parfondry/admin2-2022/main/DNS/test/docker-compose.yml
mkdir externe 
curl -o https://raw.githubusercontent.com/Parfondry/admin2-2022/main/DNS/test/bind/Dockerfile
curl -o https://raw.githubusercontent.com/Parfondry/admin2-2022/main/DNS/test/bind/named.conf
curl -o https://raw.githubusercontent.com/Parfondry/admin2-2022/main/DNS/test/bind/named.conf.local
curl -o https://raw.githubusercontent.com/Parfondry/admin2-2022/main/DNS/test/bind/named.conf.options
curl -o https://raw.githubusercontent.com/Parfondry/admin2-2022/main/DNS/test/bind/named.conf.default-zones
curl -o https://github.com/Parfondry/admin2-2022/main/DNS/test/bind/db.intranet.m1-1.ephec-ti.be
