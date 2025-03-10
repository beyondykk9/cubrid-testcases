--+ server-message on

select 'It is called normally. ( t_boolean, numeric )' ;
create or replace procedure t_numeric( from_type string, param numeric ) as 
begin 
    dbms_output.put_line(from_type||' to numeric ' ) ;
    dbms_output.put_line('param value = '|| param );
end;

call t_numeric('boolean', False ) ; 
drop procedure t_numeric ; 



select 'It is called normally. ( t_string, numeric )' ;
create or replace procedure t_numeric( from_type string, param numeric ) as 
begin 
    dbms_output.put_line(from_type||' to numeric ' ) ;
    dbms_output.put_line('param value = '|| param );
end;

call t_numeric('string', cast('123' as string) ) ; 
drop procedure t_numeric ; 



select 'It is called normally. ( t_short, numeric )' ;
create or replace procedure t_numeric( from_type string, param numeric ) as 
begin 
    dbms_output.put_line(from_type||' to numeric ' ) ;
    dbms_output.put_line('param value = '|| param );
end;

call t_numeric('short', cast(8934 as short) ) ; 
drop procedure t_numeric ; 



select 'It is called normally. ( t_int, numeric )' ;
create or replace procedure t_numeric( from_type string, param numeric ) as 
begin 
    dbms_output.put_line(from_type||' to numeric ' ) ;
    dbms_output.put_line('param value = '|| param );
end;

call t_numeric('int', cast(78234 as int) ) ; 
drop procedure t_numeric ; 



select 'It is called normally. ( t_bigint, numeric )' ;
create or replace procedure t_numeric( from_type string, param numeric ) as 
begin 
    dbms_output.put_line(from_type||' to numeric ' ) ;
    dbms_output.put_line('param value = '|| param );
end;

call t_numeric('bigint', cast(278234 as bigint) ) ; 
drop procedure t_numeric ; 



select 'It is called normally. ( t_numeric(8,3), numeric )' ;
create or replace procedure t_numeric( from_type string, param numeric ) as 
begin 
    dbms_output.put_line(from_type||' to numeric ' ) ;
    dbms_output.put_line('param value = '|| param );
end;

call t_numeric('numeric(8,3)', cast(5678.123 as numeric(8,3)) ) ; 
drop procedure t_numeric ; 


-- BUG ( normal : 3677.344, BUG : 3677.344970703125 ) - CBRD-25566
select 'It is called normally. ( t_float, numeric )' ;
create or replace procedure t_numeric( from_type string, param numeric ) as 
begin 
    dbms_output.put_line(from_type||' to numeric ' ) ;
    dbms_output.put_line('param value = '|| param );
end;

call t_numeric('float', cast(3677.345 as float) ) ; 
drop procedure t_numeric ; 


-- BUG ( normal : 56789.123, BUG : 56789.123399999996763654053211212158203125 ) - CBRD-25566
select 'It is called normally. ( t_double, numeric )' ;
create or replace procedure t_numeric( from_type string, param numeric ) as 
begin 
    dbms_output.put_line(from_type||' to numeric ' ) ;
    dbms_output.put_line('param value = '|| param );
end;

call t_numeric('double', cast(56789.1234 as double) ) ; 
drop procedure t_numeric ; 



select 'An error occurs. ( t_date, numeric )' ;
create or replace procedure t_numeric( from_type string, param numeric ) as 
begin 
    dbms_output.put_line(from_type||' to numeric ' ) ;
    dbms_output.put_line('param value = '|| param );
end;

call t_numeric('date', cast('2024-03-05' as date) ) ; 
drop procedure t_numeric ; 



select 'An error occurs. ( t_time, numeric )' ;
create or replace procedure t_numeric( from_type string, param numeric ) as 
begin 
    dbms_output.put_line(from_type||' to numeric ' ) ;
    dbms_output.put_line('param value = '|| param );
end;

call t_numeric('time', cast('23:59:59' as time) ) ; 
drop procedure t_numeric ; 



select 'An error occurs. ( t_datetime, numeric )' ;
create or replace procedure t_numeric( from_type string, param numeric ) as 
begin 
    dbms_output.put_line(from_type||' to numeric ' ) ;
    dbms_output.put_line('param value = '|| param );
end;

call t_numeric('datetime', cast('2024-03-01 22:15:25' as datetime) ) ; 
drop procedure t_numeric ; 



select 'An error occurs. ( t_timestamp, numeric )' ;
create or replace procedure t_numeric( from_type string, param numeric ) as 
begin 
    dbms_output.put_line(from_type||' to numeric ' ) ;
    dbms_output.put_line('param value = '|| param );
end;

call t_numeric('timestamp', cast('2024-05-05 23:30:45' as timestamp) ) ; 
drop procedure t_numeric ; 



--+ server-message off
