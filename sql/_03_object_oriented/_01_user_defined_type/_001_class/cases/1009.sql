--test alter using to alter default value of a column 
set system parameters 'create_table_reuseoid=no';

create class tb2(
	col1 char(8)
);


create class tb1(
	col1 int,
	col2 tb2
);


alter class tb2 modify col1 char(8) default 'aaa'; 

drop class tb2;
drop class tb1;

set system parameters 'create_table_reuseoid=yes';
