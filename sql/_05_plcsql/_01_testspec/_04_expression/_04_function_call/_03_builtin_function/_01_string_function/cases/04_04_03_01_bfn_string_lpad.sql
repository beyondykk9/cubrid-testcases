--+ server-message on

-- normal: basic usage of a builtin function call

create or replace procedure t () as
begin
    dbms_output.put_line(LPAD(NULL, ''));
    dbms_output.put_line(LPAD('cubrid', NULL));
    dbms_output.put_line(LPAD('cubrid', 7, '!' ));
    dbms_output.put_line(LPAD('cubrid', -1, '!' ));
    dbms_output.put_line(LPAD('cubrid', 7, NULL));
end;

select count(*) from db_stored_procedure where sp_name = 't';
select count(*) from db_stored_procedure_args where sp_name = 't';

call t();

drop procedure t;

--+ server-message off
