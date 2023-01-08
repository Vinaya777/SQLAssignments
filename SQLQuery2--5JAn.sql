create table ProductS(productId int, product varchar(80))
insert into ProductS values(202 , 'Jeense')
insert into ProductS values(223 , 'T - shirt')
insert into ProductS values(224 , 'Kurti')
insert into ProductS values(225 , 'Lenga')
insert into ProductS values(226 , 'Night suite')
insert into ProductS values(226 , 'Formal')
insert into ProductS values(226 , 'Top')
insert into ProductS values(226 , 'DressSet')
insert into ProductS values(226 , 'Kurti')
select *from ProductS

create table ProductSize(productBatch int, productSize varchar(80))
insert into ProductSize values(1011111,'XLL')
insert into ProductSize values(1011112,'XL')
insert into ProductSize values(1011113,'L')
insert into ProductSize values(1011114,'XL')
insert into ProductSize values(1011115,'M')
insert into ProductSize values(1011116,'S')
insert into ProductSize values(1011117,'XL')
insert into ProductSize values(1011118,'L')
insert into ProductSize values(1011119,'XS')

create table ProductColour(productColour varchar(600))
insert into ProductColour values('Red')
insert into ProductColour values('Black')
insert into ProductColour values('Grey')
insert into ProductColour values('Maron')
insert into ProductColour values('Brown')
insert into ProductColour values('Blue')
insert into ProductColour values('white')
insert into ProductColour values('Pink')
insert into ProductColour values('Cirmsion')
insert into ProductColour values('Yellow')
select * from ProductColour
select * from ProductS cross join ProductSize cross join ProductColour


