insert into Category (cname,Description) values('花露水','生活类')
insert into Category (cname,Description) values('南德方便面','食品类')
insert into Category (cname,Description) values('白菜','食物')
insert into Category (cname,Description) values('土豆','食物')
insert into Category (cname,Description) values('电视剧','家电类')
insert into Category (cname,Description) values('被罩','生活类')
select*from Category

insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('花露水',2,5,6,10)insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('白菜',1,20,25,100)insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('被罩',3,15,20,100)select*from Wareinsert into Employee(Ename,Epassword,Remark)values('王五',12345678,'小帅哥')select*from Employeeinsert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values(3,'2017-2-4',1,1011)select*from SalesInfoselect Wid,Wname,SalesPrice-PurchasePrice as 利润 from Ware order by SalesPrice-PurchasePrice  descselect Cname ,sum(SalesAmount) as 销售量 from Category c,Ware w,SalesInfo swhere c.Cid=w.Cid and w.Wid=s.Wid group by Cname select Cname,sum(SalesAmount)as 销售量 from Category c, ware w, SalesInfo s where c.Cid=w.Cid and w.Wid=s.wid group by Cnameselect Wname ,sum((SalesPrice-PurchasePrice)*SalesAmount) as 盈利金额 from Ware w, SalesInfo s where w.wid=s.wid group by Wnameselect wname ,sum((SalesPrice-PurchasePrice)*SalesAmount) as 盈利金额 from Ware w,  SalesInfo s where w.Wid = s.Wid group by Wnameselect Cname ,sum(SalesAmount) as 销售量 from Category c , Ware w, SalesInfo s where c.Cid=w.Cid and w.Wid = s.wid  group by Cname