create table Customer(
customerID int primary key identity(1,1),customer varchar(20))
sp_help Customer
select * from Customer
sp_rename 'Customer','Customerss'

create table Orders(
orderID int primary key identity(1,1),
customerID int,
constraint fkey_customer_order foreign key (customerID) references customer(customerID))
sp_help Orders