--查询
select*from Category
select*from Ware
select*from Employee
select*from Salesinfo
--插入商品类别数据
insert into Category(Cname,Description)values('电器','你猜')
insert into Category(Cname,Description)values('食品','吃的')
insert into Category(Cname,Description)values('饮品','喝的')
insert into Category(Cname,Description)values('玩具','玩的')
insert into Category(Cname,Description)values('服装','穿的')
--插入商品信息数据
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('龟田安全插座','1','100','150','100')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('龟田笔记本腚脑','1','6000','7500','10')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('龟田牌腚粉','2','10','15','1000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('龟田法式小面包','2','5','7','1000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('龟田奶茶','3','3','5','2000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('龟田咖啡','3','4','6','1000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('飞机模型','4','100','120','100')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('奥特曼变身器','4','10','15','100')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('苹果X','4','100','9000','10')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('海龟之家外套','5','100','250','100')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('啊龟达斯秋裤','5','30','50','100')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('龟牌皮鞋','5','200','350','100')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('卫龟大面筋辣条','2','1','3','1000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('龟牌电竞显示器','1','9000','10000','5')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('龟口龟乐汽水','3','3','4','500')
--插入员工信息数据
insert into Employee(Ename,EpassWord,Remark)values('龟田','1234567','猥琐老男人')
insert into Employee(Ename,EpassWord,Remark)values('张耀凯','1234567','绿帽子王')
insert into Employee(Ename,EpassWord,Remark)values('周向阳','1234567','爱穿黑丝')
insert into Employee(Ename,EpassWord,Remark)values('杨森','1234567','喜欢**')
insert into Employee(Ename,EpassWord,Remark)values('张帅','1234567','喜欢男人')
--插入销售记录数据
Update Ware set Amount=Amount-20 where Wname='龟口龟乐汽水'Insert into SalesInfo(wid,SalesDate,SalesAmount,Eid)values(15,'2017-12-19',20,1001)Update Ware set Amount=Amount-20 where Wname='龟口龟乐汽水'Insert into SalesInfo(wid,SalesDate,SalesAmount,Eid)values(15,'2017-12-19',20,1001)Update Ware set Amount=Amount-1 where Wname='苹果X'Insert into SalesInfo(wid,SalesDate,SalesAmount,Eid)values(9,'2017-12-18',1,1001)