use qd22;

create table if not exists classes(
  id int unsigned primary key auto_increment not null,
   name varchar(30) not null
);

insert into classes values(0,'前端1期'),(0,'前端2期');

