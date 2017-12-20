--查询商品类别信息
select*from Category
--查询商品添加信息
select*from Ware
--查询员工信息
select*from Employee
--查询销售记录信息
select*from SalesInfo
--商品类别添加
insert into Category (cname,Description)values('食品类','可以吃的东西')
insert into Category(cname,Description)values('日用化品','日常用品')
insert into Category(cname,Description)values('服装类','衣服')
insert into Category(cname,Description)values('家电类','')

----商品添加
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('高露洁牙膏',2,'13','20','1000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('洗衣机',4,'1320','3000','500')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values ('辣条',1,'5','10','10000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values ('毛衣',3,'50','280','350')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values ('霸王洗发水',2,'20','50','1200')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values ('面包',1,'2','3','10000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values ('洗洁精',2,'2','3','10000')

----员工信息添加
insert into Employee(Ename,Epassword,Remark)values('邢聪','1234567','')
insert into Employee(Ename,Epassword,Remark)values('王军凯','1234568','懒')
insert into Employee(Ename,Epassword,Remark)values('李紫嫣','1234569','')
insert into Employee(Ename,Epassword,Remark)values('王常虎','1234560','')

----销售记录
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values('4','2017-8-15','50','1021')
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values('2','2017-8-15','50','1021')
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values('3','2017-8-15','50','1021')
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values('5','2017-8-15','50','1021')
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values('4','2017-8-15','500','1021')
--查询
select*from SalesInfo
