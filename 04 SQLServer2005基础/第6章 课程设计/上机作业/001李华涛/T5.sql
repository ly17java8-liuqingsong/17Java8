要查询和tom在同一班级的学员
先查询tom所在的班级(假设结果是ST1201)：
select class from student where snam=‘tom’
然后查询ST1201班的学员：
select * from student where class=‘ST1201’
使用子查询：
select * from student
where class=(select class from student where snam=‘tom’)


查询C语言的最高成绩
select max(score) from score
	where cid=(select cid from course where cnam=‘C语言’)



查询参加过考试的学员名单
select * from student
	where sid in(select sid from score)



查询C语言成绩最高的那个学员信息
select * from student where sid in (
select sid from score where score=(
	select max(score) from score where cid=(
		select cid from course where cnam=‘C语言'
	)) and cid=(
		select cid from course where cnam=‘C语言'
	)
)




1号学员参加过考试，则查询出1号学员的基本信息。
select * from student where exists 
(select * from score where sid=1) and sid=1




查询所有的学员名称，课程名称，分数信息，SQL语句为：
select snam,cnam,score
from student,course,score
where student.sid=score.sid and course.cid=score.cid



查询所有参加C语言考试的学员名称，课程名称，分数：
select s.snam,c.cnam,sc.score
from student s,course c,score sc
where s.sid=sc.sid and c.cid=sc.cid and c.cnam=‘C语言’




查询所有的学员名称，课程名称，分数信息，SQL语句为：
select snam,cnam,score
from student inner join score on student.sid=score.sid
inner join course on course.cid=score.cid



查询所有参加C语言考试的学员名称，课程名称，分数：
select s.snam,c.cnam,sc.score
from student s inner join score sc on s.sid=sc.sid
inner join course c on c.cid=sc.cid
where c.cnam='C语言'




查询所有学员的所有课程的成绩。
	select s.snam,c.cnam,sc.score
	from student s left join score sc on s.sid=sc.sid
		left join course c on c.cid=sc.cid








为奥运会定义一个国家表:
create table country(
	cid int primary key identity(1,1),--主键
	cnam nvarchar(50) not null unique，--国家名称
	knam varchar(3) not null unique—国家简称
)
和奖牌表：
create table medal(
	mid int primary key identity(1,1),--主键
	cid int foreign key references country(cid),--国家外键
	gold int default 0,--金牌数量
	silver int default 0,--银牌数量
	copper int default 0—铜牌数量
)

查询所有国家的奖牌情况，那些没有得到任何奖牌的国家也应该被输出显示
select c.cnam,c.knam,m.gold,m.silver,m.copper
	from country c left join medal m on c.cid=m.cid

本届奥运会的所有奖牌都被哪些国家瓜分了，可以使用：
	select c.cnam,c.knam,m.gold,m.silver,m.copper
	from country c right join medal m on c.cid=m.cid


查询所有已经考过的学员名称，课程和成绩：
	select s.snam,c.cnam,sc.core
	from student s right join score sc on s.sid=sc.sid
		left join course c on c.cid=sc.cid



查询tom的C语言成绩,使用子查询的SQL语句为:
select score from score where sid=
(select sid from student where snam='tom')
and cid=
(select cid from course where cnam='C语言')

而使用连接查询的语法为：
select score from student s,course c,score sc
where s.sid=sc.sid
and c.cid=sc.cid
and s.snam='tom' 
and c.cnam='C语言'




1、查询和jack在同一班级的学员
	先查询jack所在的班级:
	select class from student where snam=’jack’
	再查询所有学员：
	select * from student
	将两个查询结合，查询和jack在同一班级的所有学员：
	select * from student where class=
		(select class from student where snam=’jack’)

2、查询java的最高成绩
	先查询java的编号：
	select cid from course where cnam=’java’
	在使用max聚合函数,查询Java的最高成绩：
	select max(score) from score where cid=
		(select cid from course where cnam=’java’)

3、查询参加过考试的学员名单
	先查询score表存在的所有的学员sid:
	select sid from score
	再使用这一系列sid做为条件，去查询所有学员名单：
	select snam from student where sid in
		(select sid from score)

4、查询参加过jsp考试的学员名单
	先查询jsp课程的课程号：
	select cid from course where cnam=’jsp’
再查询score表cid为jsp课程cid的所有学员sid:
	select sid from score where cid=
		(select cid from course where cnam=’jsp’)
	最后使用这一系列sid查询所有学员名单：
	select snam from student where sid in
		(select sid from score where cid=
			(select cid from course where cnam=’jsp’))

5、查询java成绩最高的学员信息
	先查询java的课程号：
	select cid from course where cnam=’java’
	再查询所有java成绩的最高分：
	select max(score) from score where cid=
		(select cid from course where cnam=’java’)
	用以上两个查询的结果做为条件，查询学员的sid:
	select sid from score where cid=
			(select cid from course where cnam=’java’)
		and score=
			(select max(score) from score where cid=
				(select cid from course where cnam=’java’))
	最后使用查询出的sid做为条件，去查询学生信息:
	select * from student where sid=
		(select sid from score where cid=
			(select cid from course where cnam=’java’)
		and score=
			(select max(score) from score where cid=
				(select cid from course where cnam=’java’)))
