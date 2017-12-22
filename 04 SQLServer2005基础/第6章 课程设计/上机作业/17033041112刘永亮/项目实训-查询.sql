--查询显示每件商品的编号、名称以及利润，按利润从高到低进行排序
select Wid as 编号,Wname as 商品名,SalesPrice-PurchasePrice as 利润 from Ware order by SalesPrice-PurchasePrice desc
--统计每件商品的销售量，显示商品名称及销售量，按销售量从高到低排序
select Wname 商品名称,sum(SalesAmount)as 商品销售量 from 
ware w,SalesInfo s where w.Wid = s.Wid group by Wname order by sum(SalesAmount) desc
--统计每类商品的销售量，显示商品类别及销售量
select Cname as 商品类别,sum(SalesAmount) as 销售量 from 
Category c,ware w,SalesInfo s
where c.Cid = w.Cid and w.Wid = s.Wid group by Cname
--统计每种商品到目前的盈利总额
select Wname as 商品类别,sum((salesPrice-PurchasePrice)*SalesAmount) as 盈利总额 
from Ware w,SalesInfo s 
where w.Wid=s.Wid group by Wname