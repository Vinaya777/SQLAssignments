--this is coment in sql

create table Student(
studentid int,
name varchar(20)
)

--this drop table Student

create table Employe(
empId int,
empname varchar(30),
empDept varchar(40),
empSalary decimal(6,4),
empAge int,
)
create table Person(
personid int,
name varchar(20)
)
alter table person alter column personid int not null
alter table person add constraint pk_person primary key (personid)
--sp_helper Person
alter table person drop constraint pk_person


