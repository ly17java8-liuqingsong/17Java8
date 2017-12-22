--用户表
create table person(

pid int primary key identity(1,1),

pname nvarchar(10) not null check(len(pname)>1),

Epassword nvarchar(18) unique,

)


--号码表
create table tel(

tid int primary key identity(1,1),

tname nvarchar(11)  unique,

state int not null,)--已购号码表create table Stel(sid int primary key identity(1,1),stid int not null foreign key references tel(tid),scode int not null foreign key references person(pid),--注册时间Atime datetime,--注销时间Btime datetime,--最后充值时间ctime datetime,--余额money decimal(10,2)default 0)--删除表drop table persondrop table teldrop table Stel

