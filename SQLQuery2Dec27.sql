create table empDetails(
empid int,
empName varchar(20),
empDept varchar(30),
empSalary int,
empAge varchar(10),
)

--rename the column in sql server
alter table empDetails alter column empName varchar(40)
sp_rename 'empDetails.empName' ,'empname'
sp_help empDetails

--drop the column in sql sever
alter table empDetails drop column empSalary
sp_help empDetails
--add new colum in table

alter table empDetails  add empSalaryIncome varchar(40)
sp_help empDetails

---sp_help empDetails is used for checking the updated list in table 