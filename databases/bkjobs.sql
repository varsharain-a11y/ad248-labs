DROP DATABASE IF EXISTS `bkjobs`;

CREATE DATABASE IF NOT EXISTS `bkjobs`;

GRANT ALL PRIVILEGES ON bkjobs.* TO 'bookstore'@'%' identified by 'redhat';
 
