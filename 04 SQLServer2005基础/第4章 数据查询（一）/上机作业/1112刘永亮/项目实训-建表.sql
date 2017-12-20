--商品类别表
create table Category(
Cid int primary key identity(1,1),
Cname Nvarchar(10) not null unique,
Description Nvarchar(10)
)
--商品信息表
create table Ware(
Wid int primary key identity(1,1),
Wname nvarchar(10) not null unique,
Cid int foreign key references category(Cid),
PurchasePrice decimal(10,2)not null,
SalesPrice decimal(10,2)not null,
Amount int not null default 1
)
--员工表
create table Employee(
Eid int primary key identity(1001,1),
Ename nvarchar(5)not null,
Epassword varchar(10) check(len(Epassword)>6),remark nvarchar(20)
)
--销售记录表
create table Salesinfo(
Sid int primary key identity(1,1),
Wid int foreign key references ware(Wid),
SalesDate nvarchar(30)not null,
SalesAmount int not null check(SalesAmount>0),
Eid int foreign key references Employee(Eid) 
)