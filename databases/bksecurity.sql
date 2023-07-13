DROP DATABASE IF EXISTS `bksecurity`;

CREATE DATABASE IF NOT EXISTS `bksecurity`;

CREATE USER 'bkadmin'@'%' IDENTIFIED BY 'redhat';
GRANT ALL PRIVILEGES ON bksecurity.* TO 'bkadmin'@'%' identified by 'redhat';

USE `bksecurity`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE users (username VARCHAR(255) NOT NULL PRIMARY KEY, password VARCHAR(255) NOT NULL);
insert into users(username,password) values('admin','jGl25bVBBBW96Qi9Te4V37Fnqchz/Eu4qB9vKrRIqRg=');
insert into users(username,password) values('qa1','J8VGI0FzTS658c6BTvQR7X1rfp7JvdUSG5nBCzzLKBI=');

DROP TABLE IF EXISTS `roles`;
CREATE TABLE roles (username VARCHAR(255) NOT NULL, role VARCHAR(32) NOT NULL,PRIMARY KEY (username, role));
insert into roles(username,role) values('admin','admin');
insert into roles(username,role) values('qa1','tester');
 
