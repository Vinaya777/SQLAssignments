create table customers(customerId int NOT NULL,
  customerName char(50) NOT NULL,
  address char(50),
  city char(50),
  state char(25),
  zipCode char(10)
  CONSTRAINT customer_pk PRIMARY KEY (customerId)
  )

  create table Suplier(
  supNumber int primary key,
  supName varchar(20) not null,
  productName varchar(30) unique,
  productQuality varchar(40) default 'ISO Product',
  customerId int foreign key references customers(customerId)
  )
  --------------OR
  create table Supliers(
  supNumber int primary key,
  supName varchar(20) not null,
  productName varchar(30) unique,
  productQuality varchar(40) default 'ISO Product',
  customerId int constraint fk_customerSupplier foreign key (customerId) references customers(customerId)
  )

  alter table Suplier add constraint fk_customerSupplier foreign key (customId) references customers(customerId)

  sp_help customers

  sp_help Supliers

 -- alter table customers add constraint customer_pk primary key (customerId )
  
 -- alter table customers add constraint customer_npk primary key (customerName)