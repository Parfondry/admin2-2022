#!/bin/sh

curl -o https://raw.githubusercontent.com/Parfondry/admin2-2022/main/Services Internes/docker-compose.yml
mkdir soa && cd resolver
curl -o https://raw.githubusercontent.com/Parfondry/admin2-2022/main/Services Internes/SOA interne/Dockerfile
curl -o https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/SOA interne/named.conf
curl -o https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/SOA interne/named.conf.local
curl -o https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/SOA interne/named.conf.options
curl -o https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/SOA interne/named.conf.default-zones
curl -o https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/SOA interne/db.intranet.m1-1.ephec-ti.be

cd..
mkdir resolver && cd resolver
curl -o https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/resolver/Dockerfile
curl -o https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/resolver/named.conf
curl -o https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/resolver/named.conf.local
curl -o https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/resolver/named.conf.options
curl -o https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/resolver/named.conf.default-zones
