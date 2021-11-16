-- Welcome to Address Book System database

-- UC1
create database address_book_service;
show databases;
use address_book_service;

-- UC2
use address_book_service;
create table aadress_book(first_name varchar(250), last_name varchar(250), address varchar(250), city varchar(250), state varchar(250), zip char(10), phone_number char(10), email varchar(120));
desc aadress_book;

-- UC3
insert into aadress_book values('Praphulla', 'Khearde', 'Bhandup', 'Mumbai', 'Maharashtra', 400078, 8104703089, 'prafullkherade9@gmail.com');
insert into aadress_book values('Sayali', 'Thakur', 'Chiplun', 'Ratnagiri', 'Maharashtra', 415722, 8704583785, 'thakursayali@gmail.com');
insert into aadress_book values('Virat', 'Kohli', 'Mathura Road', 'Narela', 'Delhi', 110054, 9104458389, 'viratkohli18@gmail.com');
insert into aadress_book values('Rutuja', 'Sharma', 'Vijay Nagar', 'Agra', 'UP', 140054, 9154458787, 'rutuja@gmail.com');
select * from aadress_book;

-- UC4
update aadress_book set address='Rohit' where first_name='Virat'; 
select * from aadress_book;

-- UC5
delete from aadress_book where first_name='Virat';
select * from aadress_book;

-- UC6
select * from aadress_book where city='Mumbai' or state='Maharashtra';

-- UC7
select count(city) from aadress_book;
select count(state) from aadress_book;

-- UC8
select * from aadress_book group by city order by first_name ASC ;
select * from aadress_book group by city order by first_name DESC ;

-- UC9
alter table aadress_book add column type varchar(20);
desc aadress_book;
update aadress_book set type='friend';
select * from aadress_book;

-- UC10
insert into aadress_book values('Sagar', 'Yadav', 'Ram Nagar', 'Mandla', 'MP', 454778, 7104803089, 'sagaryadav@gmail.com','Profession');
insert into aadress_book values('Mitali', 'Kadam', 'Kothrud', 'Pune', 'Maharashtra', 515722, 8706593785, 'mitalikadam0@gmail.com','Profession');
insert into aadress_book values('Raj', 'Vilankar', 'Khed', 'Ratnagiri', 'Maharashtra', 410054, 8475458389, 'rjvilan@gmail.com','Family');
insert into aadress_book values('Darshana', 'More', 'Ganesh Nagar', 'Thane', 'Maharashtra', 410754, 9154458587, 'darshumore@gmail.com','Family');
select * from aadress_book;
select count(type),type from aadress_book group by type;

-- UC11
insert into aadress_book values('Roshan', 'Jadhav', 'Mulund', 'Mumbai', 'Maharashtra', 844054, 9658958787, 'roshan@gmail.com','Family and friend');
select * from aadress_book;

-- UC13
create table contact(contact_id int not null, contact_type varchar(50), name varchar(50));
desc contact;

insert into contact values (1, 'Family', 'Tushar');
insert into contact values (2, 'friend', 'Vinay');
insert into contact values (3, 'friend', 'Akshay');

select * from contact;
select * from contact where name='Tushar' or contact_id='1';
select * from contact where name='Tushar' or contact_id='2';

select count(name) from contact;
select count(contact_id) from contact;

select * from contact group by name order by contact_id ASC ;
select * from contact group by name order by contact_type ASC ;
select * from contact group by name order by contact_id DESC ;
alter table contact add column gender varchar(20);
update contact set gender='F' where contact_id=1;
desc contact;

insert into contact values (4, 'Profession', 'Sayali','F');
insert into contact values (5, 'Family', 'Sagar','M');
insert into contact values (6, 'friend', 'Vinaya','F');
insert into contact values (7, 'friend', 'Roshan','M');
select * from contact;
select count(contact_type),contact_type from contact group by contact_type;



