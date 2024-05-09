drop database if exists qd22;
create database qd22 charset=utf8;
use qd22;
create table if not exists students(
    id int unsigned primary key auto_increment not null,
    name varchar(20) default '',
    age tinyint unsigned default 0,
    height decimal(5,2),
    gender enum('男','女','中间','保密') default '保密',
    cls_id int unsigned default 0,
    is_deleted bit default 0
);

insert into students values(0,'小明',18,170.22,1,1,0);
insert into students values(0,'Mary',18,160.30,2,2,0);
insert into students values(0,'小英',16,170.00,4,1,0);
insert into students values(0,'Lucy',18,164.00,4,2,0);
insert into students values(0,'林俊杰',20,170.00,1,3,0);
insert into students values(0,'赵丽颖',19,165.00,2,2,0);
insert into students values(0,'马福亚',17,173.00,2,3,0);
insert into students values(0,'李琦',17,171.22,3,1,0);
insert into students values(0,'林心如',20,167.00,2,2,0);
insert into students values(0,'展昭',19,175.00,1,1,0);
insert into students values(0,'长孙无忌',17,182.00,1,1,0);
insert into students values(0,'孙小小',17,179.22,4,2,0);
insert into students values(0,'李国华',15,177.00,1,3,0);
insert into students values(0,'貂蝉',14,null,2,2,0);
insert into students values(0,'孙悟空',16,182.00,1,1,0);
insert into students values(0,'叶子楣',17,170.22,2,2,0);
insert into students values(0,'Linda',14,155.22,2,2,0);
insert into students values(0,'Tracy',13,158.22,2,2,0);
insert into students values(0,'布兰妮',12,170.22,2,2,0);


