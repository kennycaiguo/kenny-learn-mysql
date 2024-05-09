use qd22;
--1.普通查询
--查询所有字段
select * from students;
--查询所有记录的指定字段
select name,age,gender from students;
--给字段起别名
select name as n,age as a from students;
--可以在字段名称前面添加数据库名
select students.name,students.age,students.gender from students;
--给数据库起别名
select s.name,s.age,s.gender from students as s;
--消除重复，distinct关键字
select distinct gender from students;

--2.条件查询：
--1)比较运算符
--查询年龄小于18岁的学生
select * from students where age<18;
--查询年龄等于18岁的学生
select * from students where age=18;
--查询年龄不等于18岁的学生
select * from students where age!=18;
select * from students where age<>18;
--查询年龄在14岁到18岁的学生，不包含14和18
select * from students where age>14 and age<18;
--查询年龄在14岁到18岁的学生，包含14和18
select * from students where age>=14 and age<=18;
--2)逻辑运算符
--查询年龄在14到18岁之间的学生
select * from students where age between 14 and 18;
--查询年龄大于19岁或者年龄小于18岁的学生
select * from students where age>19 or age<=18;
--查询年龄在18岁以上或者身高在170以上的学生
select * from students where age>18 or height>170.00;
--查询年龄不大于18岁并且不是女性的学生
select * from students where not(age>18 and gender=2);


--3.模糊查询 _代表任意一个字母，%代表0个或者多个字母，一个汉字也算一个字母
--查询姓名以小开头的学生
select * from students where name like '小%';
--查询姓名包含小字的学生
select * from students where name like '%小%';
--查询姓名只有有两个字的学生
select * from students where name like '__';
--查询姓名至少有有3个字的学生
select * from students where name like '___%';

--4.范围查询
--查询id在(1,3,5,7,9)里面的学生
select name,age,gender from students where id in (1,3,5,7,9);
--查询年龄是17岁和20岁的学生，有至少2种写法
select name,age,gender from students where age=17 or age=20;
select name,age,gender from students where age in(17,20);
--查询年龄不是15岁或者18岁的学生，有至少2种写法
select name,age,gender from students where not(age=15 or age=18);
select name,age,gender from students where age not in(15,18);
--查询年龄在14岁到19岁之间的学生between...and...注意包含这两个值
select name,age,gender from students where age between 14 and 19;
--不用between...and...也是可以的
select name,age,gender from students where age>=14 and age<=19;
--查询年龄不在15到17岁之间学生 not between...and...
select name,age,gender from students where age not between 15 and 17;

--空判断is null，如查询身高为null的学生
select * from students where height is null;

--非空判断is not null，如查询身高不为null的学生
select * from students where height is not null;

--5.排序查询
--查询所有学生按年龄升序排列
select * from students order by age;
--查询所有学生按年龄降序排列
select * from students order by age desc;
--查询14-18岁的学生按年龄升序排列
select * from students where age between 14 and 18 order by age;
--查询14-18岁的学生按年龄降序排列
select * from students where age between 14 and 18 order by age desc;
--查询17-20岁的女学生，身高从高到矮排列，年龄从小到大排列
select * from students where gender=2 and age between 17 and 20 order by height desc,age asc;

--6.聚合函数，需要注意：聚合函数是不会把null值计算进去
--1）查询总数，count函数，如查询男性学生有多少人，是计算所有行的总和
select count(*) from students where gender=1;
--2) 查询最大值max函数如查询年龄最大的学生
select max(age) from students;
--3) 查询最小值min函数如查询年龄最小的学生
select min(age) from students;
--4）查询女学生的最高身高
select max(height) from students where gender=2;
--5)求和函数sum()
--查询所有男同学的总岁数
select sum(age) from students where gender=1;
--6)avg函数计算平均数，如：查询所有学生的平均年龄
select avg(age) from students;
--手动计算平均数sum(age)/count(*),如手动计算所有学生的拼接年龄,其实没有必要，直接使用avg函数就好了
select sum(age)/count(*) from students;
--7）四舍五入round(原数据，保留位数)
select  round(avg(age),1) from students;
--查询所有女生的平均身高，保留2位小数，里面2种计算方法的结果不一样，英文上面那个直接把身高位null的学生排除在外，计算结果较大
select round(avg(height),2) from students where gender=2;
select round(sum(height)/count(*),2) from students where gender=2;


--7.分组查询
--select 分组的字段 from 表名 group by 分组字段,注意group by必须和聚合函数一起使用否则没有什么作用
--group by 
--按照性别分组，查询所有的性别
select gender from students group by gender;
--查询每种性别中的人数
select count(*) from students group by gender;
--查询每种性别身高最高的学生
select name,age,gender,max(height) from students group by gender;
--查询每种性别年龄最小的学生
select name,age,gender,min(age) from students group by gender;
--查询每种性别的平均年龄
select name,age,gender,avg(age) from students group by gender;

--group_concat(...),把所有同种性别的学生的姓名用逗号连接在一起成为一个字符串
--查询同种性别中有哪些姓名group_concat(name)
select gender,group_concat(name) from students group by gender;
--查询每一种性别一共有多少人并且有哪些姓名group_concat(name)
select gender,count(*),group_concat(name) from students group by gender;

--having，和group by连用,和having连用的字段必须在select里面或者在group by出现或者having跟一个聚合函数，否则报错或者得不到正确结果
--查询年龄小于19岁的学生男女各有多少
select age,count(*),group_concat(name) from students group by age having age<19;
--查询年龄不等于于19岁的学生男女各有多少
select age,count(*),group_concat(name) from students group by age having age!=19;
select gender,group_concat(age),count(*),group_concat(name) from students group by gender having gender=2;

--查询总人数大于2的每一种性别
select gender,group_concat(age),count(*),group_concat(name) from students group by gender having count(gender)>2;
--查询平均年龄超过17岁的性别
select gender ,avg(age) from students group by gender having avg(age)>17; --注意：聚合函数不能跟where连用，只能跟having
--查询平均年龄超过17岁的性别，以及姓名--注意：聚合函数不能跟where连用，只能跟having
select gender ,avg(age),group_concat(name) from students group by gender having avg(age)>17; 


--8.分页查询,关键字limit，start，count，limit需要放最后，公式：limit(要显示第几页-1) * 每页分多少个,每页分多少个
--查询前8个数据
select * from students limit 8;
--每页分5个，显示第一页
select * from students limit 0,5; --简写，表示显示前几个：select * from students limit 5;
--每页分5个，显示第二页
select * from students limit 5,5;
--每页分5个显示第3页信息，按年龄从大到小排列注意：limit需要放最后，否则报错
select * from students order by age desc limit 10,5 ;


--9.连接查询，需要至少2张表格，连接有inner join...on ,outer join
--查询所有class_id在classes表里面的学生,inner join..on取交集
select * from students as s inner join classes as c on s.cls_id = c.id;
--查询所有class_id在classes表里面的学生,left outer join..on一定会显示左表的所有数据，没有匹配的显示NULL
select * from students as s left outer  join classes as c on s.cls_id = c.id;
--查询所有class_id在classes表里面的学生,right outer join..on一定会显示右表的所有数据，如果左表的数据比右表多，多余部分不显示
select * from students as s right outer  join classes as c on s.cls_id = c.id;
--查询所有学生表的cls_id能够匹配的班级表的id的学生姓名以及所在班级名称,也就是想知道哪个学生读班级
select s.name,c.name as class_name from students as s inner  join classes as c on s.cls_id = c.id;
select s.name as "姓名",c.name as "所在班级" from students as s inner  join classes as c on s.cls_id = c.id;

--查询所有学生表的cls_id能够匹配的班级表的id的学生的全部信息以及所在班级名称,
select s.* ,c.name as "所在班级" from students as s inner  join classes as c on s.cls_id = c.id;
--查询所有学生表的cls_id能够匹配的班级表的id的学生的全部信息以及所在班级名称,并且将班级名称显示在第1列
select c.name as "所在班级",s.*  from students as s inner  join classes as c on s.cls_id = c.id;
--查询所有学生表的cls_id能够匹配的班级表的id的学生的全部信息以及所在班级名称,并且将班级名称显示在第1列,按班名排序
select c.name as "所在班级",s.*  from students as s inner  join classes as c on s.cls_id = c.id order by c.name;
--查询所有学生表的cls_id能够匹配的班级表的id的学生的全部信息以及所在班级名称,并且将班级名称显示在第1列,按班名排序,
--当是同一个班，按照id升序排列
select c.name as "所在班级",s.*  from students as s inner  join classes as c on s.cls_id = c.id order by c.name,s.id asc;


--10.子查询：一个查询的结果作为另外一个查询的一部分
----标量子查询：子查询返回的结果是一个数据（一行一列）
----列子查询：子查询返回的结果是一列数据（一列多行）
----行子查询：子查询返回的结果是一行数据（一行多列）

----查询出高于平均身高的信息(height)，注意子查询比主查询先执行
select * from students where height > (select avg(height) from students);
----查询出高于平均身高的信息(height),显示学生的姓名，年龄，身高,并且显示平均身高(比较复杂),2种写法
select name,age,gender,height,(select avg(height) from students) from students where height > (select avg(height) from students);
select name,age,gender,height,(select avg(height) from students) as avg_h from students having height > avg_h;



----查询显示的班级号能够对应的学生名字
select name from students where cls_id in (select id from classes);
--注意：有时候用连接查询可能比子查询好，有时候可能只能用子查询
