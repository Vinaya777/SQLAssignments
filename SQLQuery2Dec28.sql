
---DQL--select



select * from Employe

select empname,age,Salary,country from Employe

select	* from Employe	where empid=1

select * from Employe where deptid=1
---
select * from Employe where salary<2000

select * from Employe where salary>=35000
---
select * from Employe where  age>20
---
select * from Employe where  age<20
------range

select * from Employe where salary between 25000 and  35000