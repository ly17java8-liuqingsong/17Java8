--新建数据库
create database superMarket on(
  --定义数据库主文件名
     name =	'superMarket',
    --定义数据库主文件路径'
   filename ='d:\superMarket.mdf',
     --定义初始容量
     size=3MB,
      --定义最大容量
      maxsize= 50MB,
    --定义增长容量
      filegrowth =1MB
)
--新建日志文件
log on(
	  --定义日志文件名
       name = 'superMarket_log',
     --定义日志文件路径
       filename = 'd:\superMarket_log.ldf',
       --定义初始容量
   size = 2MB,
   --定义最大容量
maxsize = 50MB,
     --定义增长容量
     filegrowth = 10%
)
--删除数据库
drop database superMarket


