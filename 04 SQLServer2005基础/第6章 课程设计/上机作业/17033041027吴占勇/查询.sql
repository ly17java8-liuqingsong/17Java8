--添加信息到用户表
insert into person values('张三',412723987653456789)
insert into person values('李四',412723987653455555)
insert into person values('王五',412723987653456666)
insert into person values('刘六',412723987653477777)

select*from person

--添加信息到号码表
insert into tel values(13148498765,'0')
insert into tel values(13148494444,'1')
insert into tel values(13148495555,'0')
insert into tel values(13148496666,'0')
insert into tel values(13148477775,'0')

select*from tel
--添加信息到已购号码表
insert into Stel values('1','1','2013-1-2','2017-4-30','2017-12-12','500')
insert into Stel values('2','2','2016-1-2','2017-12-30','2017-12-12','500')
insert into Stel values('3','3','2016-1-2','2017-12-30','2017-12-12','500')
insert into Stel values('4','4','2015-1-2','2017-12-30','2017-4-12','500')

select*from Stel

--修改1号用户的数据(金额+100)
update Stel set money=money+100 where sid=1

--在已购号码表中删除已注销的号码
drop tel where tid=2