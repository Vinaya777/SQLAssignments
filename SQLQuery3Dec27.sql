create table Dept1(
deptid int primary key,
deptname varchar(10)
)

create table Employee(
empid int primary key,
empname varchar(20) not null,
email varchar(40) unique,
age int check (age>18),
country varchar(20) default 'India',
deptid int foreign key references Dept1(deptid))
-------OR

create table Employeee(
empid int primary key,
empname varchar(20) not null,
email varchar(40) unique,
age int check (age>18),
country varchar(20) default 'India',
deptid int,
constraint fk_empdept foreign key (deptid) references dept(deptid)
)
-- apply FK constraint on emp table for deptid col

alter table employee add constraint fk_empdept foreign key (deptid) references dept(deptid)

-- remove FK constraint
alter table employee drop constraint fk_empdept

