create database SuperMarket 
on(
name='SuperMarket',
filename='D:\.mdf',
size=3MB,
maxsize=50MB,
filegrowth=2MB
)
log on(
name='SuperMarketldf',
filename='D:\_log.ldf',
size=3MB,
maxsize=50MB,
filegrowth=10%)