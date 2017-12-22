-- 查看商品类别表(Category)表
select*from Category
-- 查看商品信息（Ware）表
select*from Ware
-- 查看员工表（Employee）表
select*from Employee
-- 查看销售记录表（ SalesInfo）表
select*from  SalesInfo
--添加商品数据
--delete Category where 
insert into Category (cname,Description)values('水','食品类')
insert into Category (cname,Description)values('书','书店类')
insert into Category (cname,Description)values('衣服','服装类')
insert into Category (cname,Description)values('电器','家电类')
insert into Category (cname,Description)values('饰品','首饰类')
--修改信息
--update Category set Description='饮食类' where Description='饮品类'
--添加商品信息
--饮品类
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('可乐','1','2','4','100')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('橙汁','1','1','2','100')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('法式面包','1','3','5','100')
--书店类
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('归鸟','2','22','45','40')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('巴黎圣母院','2','20','35','40')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('楼兰古国','2','19','39','40')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('厚黑学','2','20','35','40')
--服装类
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('新款T恤','3','50','135','15')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('黑色风衣','3','99','235','15')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('潮流牛仔裤','3','60','135','15')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('新款鞋子','3','150','335','15')
--家电类
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('新款冰箱','4','1150','2335','20')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('电热扇','4','350','535','20')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('新款洗衣机','4','1050','1535','20')
--首饰类
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('翡翠','5','135','200','30')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('钻石','5','135','200','30')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('金银','5','135','200','30')
--修改信息
--update Ware( set 
--添加员工信息
insert into Employee(Ename,Epassword,Remark)values('冬','1234567','实习生')
insert into Employee(Ename,Epassword,Remark)values('春','1234567','员工') 
insert into Employee(Ename,Epassword,Remark)values('秋','1234567','实习生')
insert into Employee(Ename,Epassword,Remark)values('夏','1234567','员工')
--修改信息
--update Employee set 
--添加销售记录(SalesInfo)
Update Ware set Amount=Amount-1 where Wname='归鸟'Insert into SalesInfo values(4,'2017-10-4',1,1001)Update Ware set Amount=Amount-1 where Wname='翡翠'Insert into SalesInfo values(32,'2017-12-24',1,1001)Update Ware set Amount=Amount-1 where Wname='钻石'Insert into SalesInfo values(33,'2017-12-20',1,1001)Update Ware set Amount=Amount-1 where Wname='归鸟'Insert into SalesInfo values(4,'2017-10-4',1,1001)--1.查询每件商品的编号，名称，单品利润，并按照单品利润排序
select wid,Wname,SalesPrice-PurchasePrice as 利润 from Ware
 order by 利润 desc
--2.统计每件商品的销售量，显示商品名称及销售量，按销售量从高到低排序
select w.Wname,sum(s.SalesAmount) as 销售量 from Ware w,SalesInfo s
 where w.wid=s.wid group by wname order by 销售量 desc
--3.统计每类商品的销售量 ，显示商品类别及销售量
select  c.cname,sum(s.SalesAmount) as 销售量
 from Category c,Ware w,SalesInfo s  
where c.cid=w.cid and w.wid=s.wid group by cname 
--4.统计每种商品到目前的盈利总额
select w.wname,sum((w.Salesprice-w.purchaseprice)*s.SalesAmount) as 盈利总额
from ware w,SalesInfo s
where w.wid =s.wid group by wname
--5.收银员1001销售5件1号商品
update ware set amount=amount-5 where wid=1
insert into SalesInfo values(1,'2017-1-1',5,1001)
--6.按照销售总额对收银员进行排序
select e.ename ,sum((w.Salesprice-w.purchaseprice)*s.SalesAmount)  as 销售量                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            , sum((w.salesprice-w.purchaseprice)*s.salesamount) as 销售总额
from  employee e,salesinfo s,ware w where e.eid =s.eid and w.wid=s.wid
group by e.ename order by 销售总额  desc
--7.查询商品销售量排在前五名的商品名称及销量
select  top 5 w.wname,sum(s.salesamount) 销量
from ware w,salesinfo s where w.wid=s.wid
group by w.wname order by 销量 desc  
--8.统计2017年的商品销售量排在前五的商品及名称
select top 5 w.wname,sum(s.salesamount) 销量 from ware w,salesinfo s
where w.wid =s.wid and s.salesdate between '2017-1-1' and
'2017-12-31' group by w.wname order by 销量 desc
--9.统计每个员工在2017年的销量，显示员工名称及销售数量
select e.ename,sum(s.salesamount) 销量
from employee  e,salesinfo s where e.eid=s.eid and s.salesdate between '2017-1-1' and 
'2017-12-31' group by e.ename order by 销量 desc
--10.统计2017年的总利润
select sum((w.salesprice-w.purchaseprice)*s.salesamount) 销量
from ware w,salesinfo s where w.wid=s.wid and s.salesdate between '2017-1-1'
and'2017-12-31'
                                                                        