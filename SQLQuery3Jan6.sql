-------------CREATE a VIEW 
create view deptwise_empcount 
as
select d.deptname , count(e.empid) as 'emp count' from Employee e
inner join dept d on d.deptid=e.deptid
group by d.deptname


--modify the existing view
alter view deptwise_empcount 
as
select d.deptname , count(e.empid) as 'emp count' from Employee e
inner join dept d on d.deptid=e.deptid
group by d.deptname

--call the view
select * from deptwise_empcount

dr-- delete the view
op view deptwise_empcount


create view salary_greaterthan30k
as
select * from Employee where salary > 30000

select * from salary_greaterthan30k
