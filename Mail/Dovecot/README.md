## Fichiers de configuration pour Dovecot

### dovecot.conf

* J'ai rajouté ici les protocoles que nous avons utilisé : ```protocols = imap pop3 lmtp```.
* Et indiqué notre nom de domaine ```postmaster_address = postmaster at m1-1.ephec-ti.be```.

### dovecot-sql.conf.ext

* Il contient toutes les informations de connexexion à la base de données MySQL.

### /conf/10-mail.conf

* Ce fichier contrôle la façon dont Dovecot intéragit avec le système de fichiers du serveur pour stocker et récupérer les messages.
* J'ai donc choisi comme chemin : ```maildir:/var/mail/vhosts/%d/%n/```
* Par exemple la boite mail du directeur : ```maildir:/var/mail/vhosts/m1-1.ephec-ti.be/directeur```

### /conf.d/10-auth.conf

* Celui gère les paramètres pour l'authentification des utilisateurs, comme désactiver l'authentification en texte clair et mettre les mécanismes d'authentification en simple connexion. Ces paramètres seront utiles lors de la connexion via thunderbird.

### conf.d/10-master.conf

* Ici on définit sur quel port nos services vont tourner 
* Par exemple : ```IMAPs = 993```, on active ```ssl``` et on désactive le IMAP non chiffré en définissant le port sur ```0```.
* Idem pour le protocole ```POP3/POP3s```

### conf.d/10-ssl.conf

* Ce dernier contient le chemin vers l'emplacement du certificat SSL et la clé privé du domaine.
