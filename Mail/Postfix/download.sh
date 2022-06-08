sudo apt-get install postfix postfix-mysql dovecot-core dovecot-imapd dovecot-pop3d dovecot-lmtpd dovecot-mysql

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
