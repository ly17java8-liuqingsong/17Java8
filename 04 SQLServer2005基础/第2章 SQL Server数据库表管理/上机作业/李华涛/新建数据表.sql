--学员表
create table student(
	--编号，主键，自动增长
	sid int primary key identity(10003,1),
	snam nvarchar(20) not null check(len(snam)>1),
	sex nvarchar(1) not null default '男',
	class nvarchar(10) null,
	city nvarchar(20) null,
	birth varchar(30) null
)
--课程表
create table course(
	cid int primary key identity(1,1),
	cnam nvarchar(30) not null unique
)
--成绩表
create table score(
	scid int primary key identity(1,1),
	sid int not null foreign key references student(sid),
	cid int not null foreign key references course(cid),
	score decimal(5,1)
)


--删除数据表(注意先删除外键表，再删除主键表)
drop table score
drop table student
drop table course


--查询所有学生
select*from Student
--查询成绩
select* from Score

--查询所有课程
select * from Course
--查询名字当中含有字母k的学员信息？？？
select *from student where snam like'%k%'
--查询所有s1班的学生信息
select *from Student where class = 's1'

--查询所有来自北京和洛阳的学员信息（两种方式）
select *from Student where city ='北京' or city = '洛阳'

select *from Student where city in('北京','洛阳') order by city

--查询各学员的班级
select  class snam from Student

--查询所有1号课程的成绩,并降序排列
select*from Score where cid ='1' order by Score desc

--查询所有课程的成绩，按课程号升序，在将每门课成绩按降序排序
select*from Score order by cid ,score desc

--查询刘磊的班级所在
select class from Student where snam = '刘磊'

--刘磊所在班级2班
select *from Student where class='s2'

--运用子查询
select*from Student where class = (select class from Student where snam = '刘磊')

select*from Student where class = (select class from Student where sid = '10005')


select*from student where sid in (10004,10005,10006)

select*from Student where sid in (select distinct sid from score)
--
select avg(score)from score where sid='10004'



--数据查询二
--查询和刘磊在同一班级的学员
select*from student where class = (select class from student where snam='刘磊' )
--查询C语言的最高成绩
select max(score) from score where  cid = (select cid from course  where cnam ='C语言' )
--查询参加过考试的学员名单
select  snam from student where sid in(select sid from score  ) 


--查询参加过HTML考试的学员名单？？？
select  snam from student where sid in(select sid from course where cnam ='HTML')


--查询java成绩最高的学员信息(不会)
select*from student where  sid = (select cid from course  where cnam ='THML'  ) and(select max(score) from score )

--查询所有的学员名称，课程名称，分数信息
select snam,cnam,score 
from student,course,score 
--查询所有参加C语言考试的学员名称，课程名称，分数
select snam,cnam,score 
from student,course,score 
where cnam='C语言'
--使用inner join…on…实现以上两题（错题）
select snam,cnam,score
from student inner join score on student.cid=score.cid
inner join course on course .cid=score.cid
--使用inner join…on…实现以上两题(错题)
select snam,cnam,score
from student inner join score on student.cid=score.cid
inner join course on course .cid=score.cid
where cnam='C语言'

--查询张扬的C语言成绩
select snam,cnam,score 
from student,course,score 
where  cnam='C语言'and snam='张扬'

--使用子查询实现以下查询：
--查询和jack在同一班级的学员
--查询java的最高成绩
--查询参加过考试的学员名单
--查询参加过jsp考试的学员名单
--查询java成绩最高的学员信息
select*from student where class =(select class from student where snam ='张扬')
select max(score) from Score  where cid=(select cid from Course where cnam='C语言')
select snam from student where  sid in(select sid from Score where sid=sid )
select snam from student where sid in(select sid from Score where cid in(select cid from course where cnam='C语言' ))
 select*from student where sid in(select sid from score where cid in(select cid from course where cnam='HTML'))
