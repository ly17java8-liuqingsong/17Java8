select*from category
select*from ware
select*from  Employee
select*from SalesInfo

insert into category(cname,Description) values('食品类', '吃的')
insert into category(cname,Description) values('日化用品', '用的')
insert into category(cname,Description) values('服装类', '穿的')
insert into category(cname,Description) values('家电类', '插电的') 


insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('大米', '1','30','65','64')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('一箱鸡蛋', '1','44','78','80')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('高露洁牙膏', '2','6.5','14','231')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('田七牙膏', '2','6.5','12','121')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('海飞丝', '2','5','27','200')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('飘柔', '2','3.5','9.9','111')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('SF面包服', '3','100','399','12')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('xf小脚裤', '3','77','174','20')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('空调', '4','3000','3699','9')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('饮水机', '4','2000','2399','6')





insert into Employee(Ename,Epassword,Remark) values('马建英',1000100,'单身可撩')
insert into Employee(Ename,Epassword,Remark) values('白龙飞',1000101,'单身狗')
insert into Employee(Ename,Epassword,Remark) values('米行',1000102,'单身贵族')
insert into Employee(Ename,Epassword,Remark) values('樊凡',1000103,'结婚')


--销售记录表
update ware set Amount = Amount-1 where Wname='大米'
insert into SalesInfo(wid,eid,SalesDate,SalesAmount)values('1',1001,'2017-02-01',1)
update ware set Amount = Amount-1 where Wname = '海飞丝'
insert into SalesInfo(wid,eid,SalesDate,SalesAmount)values('5',1001,'2017-04-01',1)
