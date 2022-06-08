#!/bin/sh

curl -o docker-compose.yml https://raw.githubusercontent.com/Parfondry/admin2-2022/main/Services Internes/docker-compose.yml
mkdir soa
curl -o SOA interne/Dockerfile https://raw.githubusercontent.com/Parfondry/admin2-2022/main/Services Internes/SOA interne/Dockerfile
curl -o SOA interne/named.conf https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/SOA interne/named.conf
curl -o SOA interne/named.conf.local https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/SOA interne/named.conf.local
curl -o SOA interne/named.conf.options https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/SOA interne/named.conf.options
curl -o SOA interne/named.conf.default-zones https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/SOA interne/named.conf.default-zones
curl -o SOA interne/db.intranet.m1-1.ephec-ti.be https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/SOA interne/db.intranet.m1-1.ephec-ti.be



mkdir resolver
curl -o resolver/Dockerfile https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/resolver/Dockerfile
curl -o resolver/named.conf https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/resolver/named.conf
curl -o resolver/named.conf.local https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/resolver/named.conf.local
curl -o resolver/named.conf.options https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/resolver/named.conf.options
curl -o resolver/named.conf.default-zones https://github.com/Parfondry/admin2-2022/blob/main/Services Internes/resolver/named.conf.default-zones
