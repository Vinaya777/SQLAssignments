
--in operator is used to select the multiple match values

---not in ---records in those are not match

create table Department(deptId int primary key,
deptName varchar(40))

create table Employe(empId int primary key,empName varchar(20) not null,empemail varchar(40) unique,age int check(age>18),
country varchar(20) default'India',deptId int foreign key references Department(deptId))

alter table Employe add constraint fk_empdept foreign key (depId) references dept(deptId)

select * from Department
select * from Employe

insert into Department values(0,'Management')
insert into Department values(1,'HR')
insert into Department values(2,'Test')
insert into Department values(3,'Sales')
insert into Department values(4,'Production')
insert into Department values(5,'Administration/operations')
insert into Department values(6,'Research and development')
insert into Department values(7,'Marketing and sales')


insert into Employe (empId,empname,empemail,age,country,deptid)values(1,'Manisha','mk@gmail.com',21,'India',0)

insert into Employe (empId,empname,empemail,age,country,deptid)values(2,'Rajvi','rkkkks@gmail.com',23,'Germany',1)

insert into Employe (empId,empname,empemail,age,country,deptid) values(3,'Raj','rmmk@gmail.com',26,'US',2)

insert into Employe (empId,empname,empemail,age,country,deptid) values(4,'rajshreee','rvk@gmail.com',24,'UK',3)

insert into Employe (empId,empname,empemail,age,country,deptid) values(5,'Revati','ukask@gmail.com',25,'US',4)

insert into Employe (empId,empname,empemail,age,country,deptid) values(6,'Kiran','kiran@gmail.com',27,'Thailand',5)

insert into Employe (empId,empname,empemail,age,country,deptid) values(7,'Manav','manavk@gmail.com',23,'Cannada',6)

insert into Employe (empId,empname,empemail,age,country,deptid) values(8,'Jeet','rlkjh@gmail.com',27,'Germany',452)

insert into Employe (empId,empname,empemail,age,country,deptid) values(9,'Majiri','MAnnu@gmail.com',18,'India',555)

insert into Employe (empId,empname,empemail,age,country,deptid) values(10,'amruta','aamkh@gmail.com',23,'Nigera',654)

insert into Employe (empId,empname,empemail,age,country,deptid) values(11,'saurabh','saurakk@gmail.com',23,'Japan',954)

insert into Employe (empId,empname,empemail,age,country,deptid) values(12,'Danisha','daanish@gmail.com',27,'Chaina',748)

insert into Employe (empId,empname,empemail,age,country,deptid) values(13,'Ruchaa','rhuuuuu@gmail.com',25,'London',954)

insert into Employe (empId,empname,empemail,age,country,deptid) values(14,'Aryaa','aaaryaaa@gmail.com',22,'Manmar',101)

insert into Employe (empId,empname,empemail,age,country,deptid) values(15,'Vinay','vini@gmail.com',25,'Indonesia',105)

insert into Employe (empId,empname,empemail,age,country,deptid) values(16,'Nehaa','Neha@gmail.com',28,'Australia',201)

insert into Employe (empId,empname,empemail,age,country,deptid)values(17,'Ayushi','ayuuu@gmail.com',18,'Africa',222)

insert into Employe (empId,empname,empemail,age,country,deptid)values(18,'Purvi','purviii@gmail.com',26,'India',256)

alter table Employe add Salary decimal
update Employe set Salary=220000,age =25 where empId=4
update Employe set Salary=200000,age =21 where empId=1

update Employe set Salary=210000,age =23 where empId=2
update Employe set Salary=230000,age =26 where empId=3


--------------4JAN
-- if column contains null value we can not compare using operator
-- is null
-- is not null

update Employe set country=null where empid=8
select * from Employe

select * from Employe where country is not null

select * from Employe where country is null

--order by
-- Sort the records either in asending or desending order
select * from Employe order by empname -- by default in asending order
select * from Employe order by empname desc

select * from Employe order by Salary desc

select * from Employe order by age,empname 


--offset --> you want to skip any perticular records
-- fetch --> is used to select the perticular records after the offset
select * from Employe 
order by empname
offset 3 rows
fetch next 3 rows only

-- display emp whose has 2nd, 3rd & 4th hightest salary
select * from Employe 
order by salary desc
offset 1 rows
fetch next 3 rows only

------------OFFSET can be used with select & order by clause
------Fetch can be used with offset. 
--------------We can not set offset as negative

-- inner join

select e.*,d.deptname
from Employe e 
inner join Department d on d.deptid=e.deptid

select e.empname as 'Employee Name',e.empemail as 'Email Id' , d.deptname as 'Dept Name'
from Employe e 
inner join Department d on d.deptid=e.deptid

select e.empname ,e.empemail , d.deptname
from Employe e 
inner join Department d on d.deptid=e.deptid


select Employe.empname ,Employe.empemail , Department.deptname
from Employe  
inner join Department  on Department.deptid=Employe.deptid

-- inner join

select e.*, d.deptName from Employe e
inner join Department d on d.deptId=e.deptid

-- left join
-- display all records from the left table & match records from another table
-- when there is no match record right table returns null

select e.*, d.deptName from Employe e
left join Department d on d.deptid=e.deptId


--right join
select e.*, d.deptName from Employe e
right join Department d on d.deptId=e.deptId

--full join
select e.*, d.deptName from Employe e
full join Department d on d.deptid=e.deptId

select * from Employe
insert into Employe values(11,'Rajesh','rajesh@gmail.com',33,'India',null,34000)
insert into Employe values(12,'Ajay','ajay@gmail.com',23,'India',null,34000)


--customer  --> orders
-- inner join --> match data e.g. show those customer list who purchased the product
-- left join --> all customer list & their ordered products
-- right join --> all records from orders tables & match records from customer table
-- full join --> all records from both the table (left + right combination)

select * from Employe
alter table employe add Managerid int

update Employe set Managerid=1 where empId in (2,3,4)
update Employe set Managerid=5 where empId in(6,7,8)

select emp.empName as 'Employe' man.empName as 'Manager'
from Employe emp,Employe man
where man.empid=emp.managerid
-------Group BY
select* from Employe
select* from Department

select deptId, count(empId) as ' total employe' from Employe
group by deptId



select country,(count(empId))as total employe from Employe
	order by totalemp


---count the emp in each dept
--count the emp which is  in development dept
--count the emp in each dept	

select d.deptName,count(e.empId) as 'emp count' from Employe e
inner join Department d on d.deptId=e.deptId

------where d.Department='HR'
group by d.deptName
order by[No of Employe] desc
-------------Having clause

select country, (count(empId)) as totalemp	 from Employe e group by country having count (empId)>12

-----list of employe whose  salary  less than the average salary


select e.empname,avg(e.Salary)
from Employe e
group by e.empName
having e.Salary<avg(e.Salary)
select * from Employe	
where Salary<(select avg(Salary) from Employe)
-----------------------------------------------------------
--display count of employee who's from india & usa 
-- and sort the list in asending order of count 


select country,count(empid) as 'count' from Employe 
where country in ('India','usa')
group by country
order by count(empid)



---------Create view 

create view 

Department_Employecount
as
select d.deptName , count(e.empid) as 'emp count' from Employe e
inner join Department d on d.deptId=e.deptid
group by d.deptname


--modify the existing view
alter view 
Department_Employecount
as
select d.deptName , count(e.empid) as 'emp count' from Employe e
inner join Department d on d.deptid=e.deptid
group by d.deptName

select * from Department_Employecount

-- delete the view
 
drop view Department_Employecount


--create view 
Salary_greaterthan3k
as

select * from Employe where Salary > 30000

select * from Salary_greaterthan3k 










