--创建商品类别表 （Category）
create table Category(
Cid int primary key identity(1,1),
Cname nvarchar(20) unique not null,
Description nvarchar(25) null 
)
--创建商品信息表 （Ware）
create table Ware(
Wid int primary key,
Wname nvarchar(30) unique not null,
Cid int not null foreign key references Category(Cid),
PurchasePrice decimal(10,2) not null,
SalesPrice decimal(10,2) not null,
Amount decimal(10,2) not null
)

--创建员工表 （Employee）
create table Employee(
Eid int primary key identity(1001,1),
Ename nvarchar(4) not null,
Epassword nvarchar(10) check(len(Epassword)>6),
Remark nvarchar(50)
)

--创建销售记录表 （Salesinfo）
create table Salesinfo(
Sid int primary key identity(1,1),
Wid int foreign key references Ware(Wid) not null,
SalesDate datetime not null,
SalesAmount decimal(10,2) not null,
Eid int not null foreign key references Employee(Eid)
)

--添加数据于 商品类别表（Category）
insert into Category(cname,description) values('食品类','这个不用解释了吧')
insert into Category(cname,description) values('日化类','相信我，能吃')
insert into Category(cname,description) values('服装类','味道不错')
insert into Category(cname,description) values('家电类','方本：味道好极了')

--添加数据于 商品信息表 （Ware）
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amount)values('61601','康帅傅方便面',1,'3.8','5','500')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amount)values('61602','农夫三泉矿泉水',1,'0.1','2','6000')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amount)values('61603','嘿人牙膏',2,'2.3','6','2333')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amount)values('61604','瓢柔洗发露',2,'10','18','2333')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amount)values('61605','adivas运动服',3,'50','388','200')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amount)values('61606','HIKE运动鞋',3,'20','288','150')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amount)values('61607','美 白勺 电风扇',4,'100','258','100')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amount)values('61608','老 木反 抽油烟机',4,'1500','3000','50')

--添加数据于 员工表 （Employee）
insert into Employee(Ename,Epassword)values('隔壁老王','1234567896')
insert into Employee(Ename,Epassword)values('犀利哥','1234567897')
insert into Employee(Ename,Epassword)values('梁非凡','1234567898')
insert into Employee(Ename,Epassword)values('方本','1234567899')

--添加数据于 销售记录表 （Salesinfo）
update Ware set Amount=Amount-1 where Wname='嘿人牙膏'
insert into Salesinfo(Wid,SalesDate,SalesAmount,Eid)values('61603','2017-12-03','1',1014)
update Ware set Amount=Amount-20 where Wname='农夫三泉矿泉水'
insert into Salesinfo(Wid,SalesDate,SalesAmount,Eid)values('61602','2017-12-19','1',1016)

--查询表
select*from Category
select*from Ware
select*from Employee
select*from Salesinfo