$ ORIGIN m1-1.ephec-ti.be.
$TTL	3600
@	    IN	    SOA	    ns.intranet.m1-1.ephec-ti.be.   root.m1-1.ephec-ti.be. (

		        2	        ; Serial
			3600		; Refresh
			600		; Retry
			86400		; Expire
			600 	        ; Negative Cache TTL
			)


; name servers - NS record
@				IN	NS			ns.m1-1.ephec-ti.be.


; name servers - A record
@				  IN	A	176.96.231.195
;@				IN	AAAA	fe80::250:56ff:feaa:91ce
ns				IN	A	176.96.231.195
;				  IN	AAAA	fe80::250:56ff:feaa:91ce

;Serveur Web
b2b			IN	A	176.96.231.196;
www			IN	A	176.96.231.196;
