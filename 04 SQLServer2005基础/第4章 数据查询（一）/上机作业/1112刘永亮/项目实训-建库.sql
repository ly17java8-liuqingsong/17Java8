create database SuperMarket on(
name='marketmdf',
filename='D:\Supermarket.mdf',
size=3MB,
filegrowth=3MB
)
log on(
name='marketldf',
filename='D:\Supermarket.ldf',
size=3MB,
filegrowth=10%
)