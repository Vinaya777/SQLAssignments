create table Student(studId int , studName varchar(30)
studId int foreign key references Student(studId))

alter table Student alter column studId int not null
alter table Student add constraint pk_StudentId primary key (studId)
sp_help Student


create table DepartmentAttCom(deptid int primary key,deptname varchar(40) ,
deptstudentemail varchar(20) unique,age int check(age>18), course varchar(20)default 'Computers',
--studId int,constraint fk_CallingStudentId foreign key(studId) references StudentId(studId)
)
sp_help DepartmentAttCom

alter table DepartmentAttCom add constraint fk_StudentId foreign key(studId) references StudentId(studId)

alter table DepartmentAttCom drop constraint df_course

select * from Student
select * from DepartmentAttCom

insert into Student values(1,'GD')
insert into Student values(2,'co-curricular activites')
insert into Student values(3,'managing reports')
insert into Student values(4,'doc grading')
update Student set studName='Priya' where studId=1

update Student set studName='Nisha' where studId=2

update Student set studName='Poojashree' where studId=3

update Student set studName='Tejashree' where studId=4

insert into DepartmentAttCom(deptid,deptname,deptstudentemail)values(22,'IT','abc@gmail.com')
update DepartmentAttCom set age=25 where deptid=22
insert into DepartmentAttCom(deptid,deptname,deptstudentemail)values(23,'Comp','xyz@gmail.com')
update DepartmentAttCom set age=22 where deptid=23
insert into DepartmentAttCom(deptid,deptname,deptstudentemail)values(24,'Civil','pqr@gmail.com')
update DepartmentAttCom set age=21 where deptid=24
insert into DepartmentAttCom(deptid,deptname,deptstudentemail)values(25,'E&TC','jkl@gmail.com')
update DepartmentAttCom set age=20 where deptid=25
insert into DepartmentAttCom(deptid,deptname,deptstudentemail)values(26,'Mech','uvwgmail.com')
update DepartmentAttCom set age=19 where deptid=26
insert into DepartmentAttCom(deptid,deptname,deptstudentemail)values(27,'Automobile','gfd@gmail.com')
update DepartmentAttCom set age=30 where deptid=27
insert into DepartmentAttCom(deptid,deptname,deptstudentemail)values(28,'M&Automobile','gjhg@gmail.com')
alter table DepartmentAttCom add DeptContribution int
update DepartmentattCom set DeptContribution =25000,age=25 where deptid=23

update DepartmentattCom set DeptContribution =35000,age=21 where deptid=22

update DepartmentattCom set DeptContribution =22000,age=22 where deptid=24

update DepartmentattCom set DeptContribution =15000,age=20 where deptid=25

update DepartmentattCom set DeptContribution =5000,age=19 where deptid=26

update DepartmentattCom set DeptContribution =55000,age=20 where deptid=27

update DepartmentattCom set DeptContribution =25000,age=25 where deptid=28

select deptid,deptname,deptstudentemail,age,course from DepartmentattCom

select * from DepartmentAttCom where deptid=24

select * from DepartmentAttCom where age=20

select * from DepartmentAttCom where DeptContribution<20000

select * from DepartmentAttCom where DeptContribution>20000

select * from DepartmentAttCom where DeptContribution between 10000 and 22000
