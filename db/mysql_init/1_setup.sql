create database if not exists sample;

create table if not exists sample.users (
  id integer not null,
  name varchar(100) not null,
  email varchar(100) not null,
  primary key (id)
) engine=InnoDB default charset=utf8mb4;