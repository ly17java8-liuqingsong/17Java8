create table Category
(
cid int primary key identity(1,1),
Cname nvarchar(10) not null  unique ,Description nvarchar(100) )create table Ware(Wid int primary key identity(1,1),Wname nvarchar (20) not null unique,Cid int foreign key references  Category(cid ),PurchasePrice decimal(10,2) not null,SalesPrice decimal(10,2) not null ,Amount int not null)create table Employee(Eid int primary key identity (1001,1),Ename nvarchar(5) not null,Epassword varchar(10) check(len(Epassword)>6),Remark nvarchar(100) )drop table Warecreate table SalesInfo(Sid int primary key identity (1,1),Wid int foreign key references  Ware(Wid),SalesDate nchar(10) not null,SalesAmount int not null,Eid int  foreign key references Employee(Eid))  
