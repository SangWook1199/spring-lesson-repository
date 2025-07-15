create table spring_member(
	id varchar(100) primary key,
	password varchar(20) not null,
	name varchar(100) not null,
	address varchar(100)
);
insert into spring_member(id,password,name,address)
values('java','a','손흥민','런던');
commit;

select * from spring_member;










