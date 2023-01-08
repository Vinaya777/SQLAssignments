
create table Dept(deptid int primary key,deptname varchar(40))
create table Employe(empId int primary key,empname varchar(20) 
not null,email varchar(40),age int check (age>18),country varchar(20) default 'India',
deptid int foreign key references Dept(deptid)

)

select * from Employe
select * from Dept

insert into Dept values(1,'HR')
insert into Dept values(2,'Test')
insert into Dept values(3,'Sales')
insert into Dept values(4,'Production')

sp_help Dept


insert into Employe (empId,empname,email,age,country,deptid)values(1,'Manisha','mk@gmail.com',21,'India',1)

insert into Employe (empId,empname,email,age,country,deptid)values(2,'Rajvi','rk@gmail.com',23,'Germany',2)

insert into Employe (empId,empname,email,age,country,deptid) values(3,'Raj','rk@gmail.com',23,'US',3)

insert into Employe (empId,empname,email,age,country,deptid) values(4,'rajshreee','rvk@gmail.com',24,'UK',4)

insert into Employe (empId,empname,email,age,country,deptid) values(5,'Revati','ukask@gmail.com',25,'US',299)

insert into Employe (empId,empname,email,age,country,deptid) values(6,'Kiran','kiran@gmail.com',27,'Thailand',275)

insert into Employe (empId,empname,email,age,country,deptid) values(7,'Manav','manavk@gmail.com',23,'Cannada',254)

insert into Employe (empId,empname,email,age,country,deptid) values(8,'Jeet','rlkjh@gmail.com',27,'Germany',452)

insert into Employe (empId,empname,email,age,country,deptid) values(9,'Majiri','MAnnu@gmail.com',18,'India',555)

insert into Employe (empId,empname,email,age,country,deptid) values(10,'amruta','aamkh@gmail.com',23,'Nigera',654)

insert into Employe (empId,empname,email,age,country,deptid) values(11,'saurabh','saurakk@gmail.com',23,'Japan',954)

insert into Employe (empId,empname,email,age,country,deptid) values(12,'Danisha','daanish@gmail.com',27,'Chaina',748)

insert into Employe (empId,empname,email,age,country,deptid) values(13,'Ruchaa','rhuuuuu@gmail.com',25,'London',954)

insert into Employe (empId,empname,email,age,country,deptid) values(14,'Aryaa','aaaryaaa@gmail.com',22,'Manmar',101)

insert into Employe (empId,empname,email,age,country,deptid) values(15,'Vinay','vini@gmail.com',25,'Indonesia',105)

insert into Employe (empId,empname,email,age,country,deptid) values(16,'Nehaa','Neha@gmail.com',28,'Australia',201)

insert into Employe (empId,empname,email,age,country,deptid)values(17,'Ayushi','ayuuu@gmail.com',18,'Africa',222)

insert into Employe (empId,empname,email,age,country,deptid)values(18,'Purvi','purviii@gmail.com',26,'India',256)


alter table Employe add depid int

update Employe set deptid=256,age=23 where empId=2
alter table Employe add Salary decimal

----DML---update---to modify the existing record
update Employe set Salary=230000,age =25 where empId=5

update Employe set Salary=250000,age =25 where empId=4

update Employe set Salary=220000,age =25 where empId=10

update Employe set Salary=270000,age =25 where empId=15

update Employe set Salary=300000,age =25 where empId=16

update Employe set Salary=200000,age=23 where empId=11


---DML -Delete ---> it is used to delete the record

delete from Employe where empId=11

delete from Employe where empId=21

select * from Employe where deptid in(2,4,8)


-- not in --> records those are not matched
select * from Employe where deptid not in(1,2,4)

select * from Employe where age in(23,24,25,26)
select * from Employe where empid not in (1,4,6,8,9)

-- like used to match the string with specific pattern

select * from Employe where empname like 'a%' -- name start with s & contains any no of chars
select * from Employe where empname like '%l' -- name end with j
select * from Employe where empname like '%s%' -- name may contains a anywhere in the string

select * from Employe where empname like '%[asr]'
select * from Employe where empname like '[asr]%'

select * from Employe where empname like '[a-h]%' -- range
select * from Employe where empname like '%[d-r]'

select * from Employe where empname like 'a______'
select * from Employe where empname like '___l'
select * from Employe where empname like '____o_'

-- not like
select * from Employe where empname not like 'a%'
select * from Employe where empname not like '[asr]%'

select * from Employe where deptid=2 and country='UK'

select * from Employe where deptid=2 or country='Uk'

select * from Employe where not country='UK' 

