--商品类别名称创建
insert into Category(cname,description)values('食品类','过期食品卖出')
insert into Category(cname)values('食品类')
insert into Category(cname)values('日化用品')
insert into Category(cname)values('服装类')
insert into Category(cname)values('家电类')
--商品信息创建
 insert into ware(wname ,cid,purchasrprice,salesprice,amount) values('高露洁牙膏','2','4.50','5.80','231')
 insert into ware(wname ,cid,purchasrprice,salesprice,amount) values('田七牙膏','2','1.80','2.70','120')
 insert into ware(wname ,cid,purchasrprice,salesprice,amount) values('黑妹牙膏','2','2.60','4.20','96')
 insert into ware(wname ,cid,purchasrprice,salesprice,amount) values('海飞丝洗发露','2','12.70','15.90','56')
 insert into ware(wname ,cid,purchasrprice,salesprice,amount) values('飘柔洗发露','2','8.10','11.90','103')
 insert into ware(wname ,cid,purchasrprice,salesprice,amount) values('霸王洗发露','2','19.70','26.90','65')
 insert into ware(wname ,cid,purchasrprice,salesprice,amount) values('香飘飘奶茶','1','1.60','3','105')
 insert into ware(wname ,cid,purchasrprice,salesprice,amount) values('摩卡咖啡','1','3.40','6','76')
--员工表
 insert into employee(ename,epassword,remark) values('张丽','4455664','暂无')
 insert into employee(ename,epassword,remark) values('王大锤','4848355','暂无')
 insert into employee(ename,epassword,remark) values('李新阳','2628469','暂无')
 insert into employee(ename,epassword,remark) values('王琦','3364551','暂无')
--销售记录--表明SalesInfo 1主键 增长 2.销售商品编号 外键
--3.商品销售时间 4.商品销售数量 5.收银员编号 外键
Update ware set amount=amount-1 where wname='高露洁牙膏'insert into salesInfo(wid,salesdate,salesamount,eid)values('1','2009-10-12','2','1001')--计算利润 编号 名称 （售价—进价）order by （售价-进价）select wid,wname,salesprice-purchasrprice as 利润 from wareorder by salesprice-purchasrprice desc--查询每个商品销售量select w.wname,sum(s.salesamount) as 销售量 from ware w,salesInfo swhere w.wid=s.wid group by wname order by sum(salesamount) desc--统计每类商品销售量select cname,sum(salesamount) as 销售量 from category c,ware w,salesInfo swhere c.cid=w.cid and w.wid=s.wid group by cname--查询每种商品到目前盈利总数
select wname,sum((salesprice-purchasrprice)*salesamount) as 盈利总额from ware w,salesInfo swhere w.wid=s.wid group by wname
--查询 1-商品类别 2-商品信息 3-员工表信息 4-销售记录
select *from Category
select *from ware
select *from employee
select sid ,wid as 商品编号,salesdate as 销售时间,salesamount as 销售数量,eid as 员工编号 from salesInfo
--删除
delete from Category where cname='食品类'