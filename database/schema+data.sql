drop database if exists dvba;
create database if not exists dvba;
use dvba;

create table users (
  id integer PRIMARY KEY auto_increment,
  username varchar(100) UNIQUE NOT NULL,
  password varchar(1024) NOT NULL,
  account_number integer UNIQUE,
  balance integer default 10000 NOT NULL,
  is_admin boolean default false
) engine = innodb;

create table transactions (
  id integer PRIMARY KEY auto_increment,
  from_account int(11) NOT NULL,
  to_account int(11) NOT NULL,
  amount int NOT NULL
) engine = innodb;

create table beneficiaries (
  id integer PRIMARY KEY auto_increment,
  account_number int(11) NOT NULL,
  beneficiary_account_number int(11) NOT NULL,
  approved boolean default false NOT NULL
) engine = innodb;

create table boards
(
    id        int not null auto_increment,
    userId    varchar(30),
    title     VARCHAR(255),
    content   VARCHAR(255),
    createdAt DATETIME,
    updatedAt DATETIME,
    PRIMARY KEY (id)
) engine = innodb;


INSERT INTO `users`
values (default, "admin", "8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918", 999999, default, true);