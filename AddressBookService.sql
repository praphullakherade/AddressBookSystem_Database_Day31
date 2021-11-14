-- Welcome to Address Book System database

-- UC1
create database address_book_service;
show databases;
use address_book_service;

-- UC2
use address_book_service;
create table aadress_book(first_name varchar(250), last_name varchar(250), address varchar(250), city varchar(250), state varchar(250), zip char(10), phone_number char(10), email varchar(120));
desc aadress_book;