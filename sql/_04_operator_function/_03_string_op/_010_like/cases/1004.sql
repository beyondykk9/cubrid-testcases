--test like function with date type
create class tb(
	col1 varchar,
	col2 nchar(20),
	col3 date,
	col4 time,
	col5 timestamp
);

insert into tb values('varchar', n'nchar', '5/5/2008', '8:8:8 am', '5/5/2008 8:8:8 am');
insert into tb values('aaa1', n'naaa1', '5/5/2008', '8:8:8 am', '5/5/2008 8:8:8 am');
insert into tb values('aaa2', n'naaa2', '5/6/2008', '8:8:8 am', '5/6/2008 8:8:8 am');
insert into tb values('bbb1', n'nbbb1', '5/7/2008', '8:8:8 am', '5/7/2008 8:8:8 am');

select * from tb where col3 like '%2008' order by 1;

drop class tb;

