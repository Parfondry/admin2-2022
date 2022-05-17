$ORIGIN m1-1.ephec-ti.be.
$TTL    604800
@       IN      SOA     ns.m1-1.ephec-ti.be. admin.m1-1.ephec-ti.be. (
                     2006020201 ; Serial
                         43200 ; Refresh
                          7200 ; Retry
                        2419200 ; Expire
                         86400); Negative Cache TTL
;

; name servers - NS record
@				IN	NS			ns.m1-1.ephec-ti.be.
@				IN	MX	10		mail.m1-1.ephec-ti.be.

; name servers - A record
@				  IN	A	176.96.231.197
;@				IN	AAAA	fe80::250:56ff:feaa:91ce
ns				IN	A	176.96.231.197
;				  IN	AAAA	fe80::250:56ff:feaa:91ce

; mail server
mail				IN	A	176.96.231.197
smtp				IN	CNAME	mail
pop				  IN	CNAME	mail
imap				IN	CNAME	mail
