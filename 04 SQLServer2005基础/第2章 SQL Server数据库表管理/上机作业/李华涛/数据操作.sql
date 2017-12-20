select * from student
select * from Course
select* from Score

insert into student values('张扬','男','S1','上海','2011-1-1')
insert into student values('刘磊','男','S2','武汉','2012-1-1')
insert into student values('张小五','男','S3','襄樊','2013-1-1')
insert into student values('吴伟','男','S4','南昌','2011-4-1')

insert into student(snam,sex,class,city,birth) values('李琼','女','S1','北京','2010-3-4')
insert into student(snam,sex,class,city,birth) values('赵玉','女','S2','洛阳','2011-3-4')
insert into student(snam,sex,class,city,birth) values('董卓','男','S3','广州','2012-3-4')

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
insert into Course values('C语言')
insert into Course values('HTML')

insert into Score(sid,cid,score) values(10004,1,68)
insert into Score(sid,cid,score) values(10004,2,80)
insert into Score(sid,cid,score) values(10005,1,78)
insert into Score(sid,cid,score) values(10005,2,76)
insert into Score(sid,cid,score) values(10006,1,64)
insert into Score(sid,cid,score) values(10006,2,92)

--查询所有学生
select*from Student

--查询所有课程
select * from Course

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

--exists运用
select *from Student where exists(select*from score where studentid = Sid)

select *from Student where not exists (select*from Score where Studentid = sid)