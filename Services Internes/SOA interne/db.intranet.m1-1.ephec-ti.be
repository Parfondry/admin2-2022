$ ORIGIN m1-1.ephec-ti.be.
$TTL	3600
@	    IN	    SOA	    ns.intranet.m1-1.ephec-ti.be.   root.m1-1.ephec-ti.be. (

		    		    2017060101  ; serial
                                    86400       ; refesh 
                                    3600        ; retry 
                                    3600000     ; expire 
                                    3600        ; minimun

; name servers - NS record
@				IN	NS			ns.intranet.m1-1.ephec-ti.be.
ns				IN	A	141.95.159.154


;Serveur Web
b2b			IN	A	141.95.159.154;
www			IN	A	141.95.159.154;

resolv			IN     A              141.95.159.154
