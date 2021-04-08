DROP DATABASE IF EXISTS CZ3002WebApp;
DROP USER IF EXISTS 'admin'@'localhost';

CREATE DATABASE IF NOT EXISTS CZ3002WebApp;
USE CZ3002WebApp;

CREATE USER 'admin'@'localhost' IDENTIFIED BY '1234@asdf';
GRANT ALL ON CZ3002WebApp.* To 'admin'@'localhost' ;

CREATE TABLE IF NOT EXISTS users (
  id INT NOT NULL AUTO_INCREMENT,
  username TINYTEXT NOT NULL,
  password TINYTEXT NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO users (username, password) VALUES("YO0001AO","BO55man");
INSERT INTO users (username, password) VALUES("test","test");
