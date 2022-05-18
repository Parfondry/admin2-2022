## Fichiers de configuration pour Postfix

### main.cf

* Ce fichier contient principalement les informations concernant notre nom de domaine ```m1-1.ephec-ti.be```.
* Il contient également les chemins d'accès au certificat SSL et à la clé privée afin d'utiliser SMTPs.
* Il déclare aussi l'emplacement des fichiers ```virtual_mailbox_domains```, ```virtual_mailbox_maps``` et ```virtual_alias_maps```. Ces derniers contiennet les informations de connexion pour les tables créé via MYSQL. Postfix utilisera ces données afin d'identifier le domaine, les boîtes aux lettres et les utilisateurs.

### Les 4 fichiers mysql

* Ceux-ci contiennent les informations de connexion pour la base de données et possède chacun la requête adéquate pour récupérer les informations de la table souhaité.

### master.cf

* C'est ici que ce trouve les paramètres les plus important du service Postfix.
* Il permet de surveiller tous les processus de Postfix, de les répertorier et de gérer la façon dont ils doivent être démarrés.
* Ce dernier a donc été protégé via la commande ```sudo chmod -R o-rwx /etc/postfix``` afin de limiter les autorisations du répertoire (ici seul le propriétaire et le groupe correspondant y ont accès).
