$ORIGIN m1-1.ephec-ti.be.
$TTL	3600
@	    IN	    SOA	    ns.m1-1.ephec-ti.be.   root.m1-1.ephec-ti.be. (

		    1	        ; Serial
			3600		; Refresh
			600		    ; Retry
			86400		; Expire
			600 )	    ; Negative Cache TTL


;Nom de serveur faisant autoriter sur le domaine m1-1.ephec-ti.be.
m1-1.ephec-ti.be.      IN      NS      ns.m1-1.ephec-ti.be.



;Le nom de mon serveur assigner à son IP
ns			IN	A	176.96.231.195;

;Serveur Web
b2b			IN	A	176.96.231.196;
www			IN	A	176.96.231.196;

; Serveur Mail
mail			IN	A	176.96.231.197;
@			IN	MX	10	mail.m1-1.ephec-ti.be.
