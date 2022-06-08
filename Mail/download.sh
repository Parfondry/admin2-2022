sudo apt-get install postfix postfix-mysql dovecot-core dovecot-imapd dovecot-pop3d dovecot-lmtpd dovecot-mysql

#Postfix
mkdir Postfix && cd Postfix
curl -o https://raw.githubusercontent.com/Parfondry/admin2-2022/mail/Mail/Postfix/main.cf
curl -o https://raw.githubusercontent.com/Parfondry/admin2-2022/mail/Mail/Postfix/master.cf
curl -o https://raw.githubusercontent.com/Parfondry/admin2-2022/mail/Mail/Postfix/mysql-virtual-alias-maps.cf
curl -o https://raw.githubusercontent.com/Parfondry/admin2-2022/mail/Mail/Postfix/mysql-virtual-email2email.cf
curl -o https://raw.githubusercontent.com/Parfondry/admin2-2022/mail/Mail/Postfix/mysql-virtual-mailbox-domains.cf
curl -o https://raw.githubusercontent.com/Parfondry/admin2-2022/mail/Mail/Postfix/mysql-virtual-mailbox-maps.cf

sudo cp main.cf /etc/postfix/main.cf
sudo cp master.cf /etc/postfix/master.cf
sudo cp mysql-virtual-mailbox-domains.cf /etc/postfix/mysql-virtual-mailbox-domains.cf
sudo cp mysql-virtual-mailbox-maps.cf /etc/postfix/mysql-virtual-mailbox-maps.cf
sudo cp mysql-virtual-alias-maps.cf /etc/postfix/mysql-virtual-alias-maps.cf
sudo cp mysql-virtual-email2email.cf /etc/postfix/mysql-virtual-email2email.cf

sudo chmod -R o-rwx /etc/postfix
sudo systemctl restart postfix

#Dovecot
cd..
mkdir Dovecot && cd Dovecot
sudo cp dovecot.conf /etc/dovecot/dovecot.conf.orig
sudo cp conf.d/10-mail.conf /etc/dovecot/conf.d/10-mail.conf.orig
sudo cp conf.d/10-auth.conf /etc/dovecot/conf.d/10-auth.conf.orig
sudo cp dovecot-sql.conf.ext /etc/dovecot/dovecot-sql.conf.ext.orig
sudo cp conf.d/10-master.conf /etc/dovecot/conf.d/10-master.conf.orig
sudo cp conf.d/10-ssl.conf /etc/dovecot/conf.d/10-ssl.conf.orig

sudo mkdir -p /var/mail/vhosts/m1-1.ephec-ti.be
sudo groupadd -g 5000 vmail
sudo useradd -g vmail -u 5000 vmail -d /var/mail
sudo chown -R vmail:vmail /var/mail

sudo chown -R vmail:dovecot /etc/dovecot
sudo chmod -R o-rwx /etc/dovecot

sudo systemctl restart dovecot
