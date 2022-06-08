CREATE DATABASE mailserver;
CREATE USER 'mailuser'@'127.0.0.1' IDENTIFIED BY 'password';
GRANT SELECT ON mailserver.* TO 'mailuser'@'127.0.0.1';
FLUSH PRIVILEGES;
USE mailserver;

CREATE TABLE `virtual_domains` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `virtual_users` (
  `id` int(11) NOT NULL auto_increment,
  `domain_id` int(11) NOT NULL,
  `password` varchar(106) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  FOREIGN KEY (domain_id) REFERENCES virtual_domains(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `virtual_aliases` (
  `id` int(11) NOT NULL auto_increment,
  `domain_id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (domain_id) REFERENCES virtual_domains(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO mailserver.virtual_domains (name) VALUES ('m1-1.ephec-ti.be');

INSERT INTO mailserver.virtual_users (domain_id, password , email) VALUES ('1', '***', 'directeur@m1-1.ephec-ti.be'), ('1', '***', 'secretariat@m1-1.ephec-ti.be'), ('1', '***', 'robin@m1-1.ephec-ti.be');
INSERT INTO mailserver.virtual_users (domain_id, password , email) VALUES ('1', '***', 'atelier@m1-1.ephec-ti.be');

INSERT INTO mailserver.virtual_aliases (domain_id, source, destination) VALUES ('1', 'directeur@m1-1.ephec-ti.be', 'he201674@students.ephec.be');
