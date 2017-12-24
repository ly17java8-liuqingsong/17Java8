--新建数据库
create database telephone on(
     --新建数据库主文件名
     name='telephone',
     --定义数据库主文件路径
     filename='c:\telephone.mdf',
     --定义初始容量
     size=3MB,
     --定义最大容量
     maxsize=50MB,
     --定义增长容量
     filegrowth=2MB
)

--新建日志文件
log on(
     --定于日志文件名
     name='telephone_loog',
     --定于日志文件路径
     filename='c:\telephone_loog.ldf',
     --定义初始容量
     size=2MB,
     --定义最大容量
     maxsize=50MB,
     --定义增长容量
     filegrowth=10%
)

--删除数据库
drop database telephone