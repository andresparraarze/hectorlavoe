DROP DATABASE IF EXISTS em_db;
CREATE DATABASE em_db;

USE em_db;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(35) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT ,
    title VARCHAR(35),
    salary DECIMAL (10) NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(35) NULL,
    last_name VARCHAR(35) NULL,
    role_id INT NULL,
    manager_id INT NULL,
    PRIMARY KEY (id)
);