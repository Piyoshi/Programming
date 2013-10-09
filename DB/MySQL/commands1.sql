use practice;

drop table if exists testusers;

create table testusers (
		name varchar(255),
		email varchar(255)
);

insert into testusers (name, email) values ('taguchi', 'taguchi@gmail.com');
