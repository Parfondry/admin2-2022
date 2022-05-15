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

; name servers - A record
ns 		        	IN	A	176.96.231.197

; mail server
@				MX	10	mail.m1-1.ephec-ti.be
mail				A	176.96.231.197
