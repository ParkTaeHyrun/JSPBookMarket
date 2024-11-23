create table if not exists member(
	id varchar(20) not null,
	name varchar(40) not null,
	password varchar(20) not null,
	primary key(id)
);

select * from member;