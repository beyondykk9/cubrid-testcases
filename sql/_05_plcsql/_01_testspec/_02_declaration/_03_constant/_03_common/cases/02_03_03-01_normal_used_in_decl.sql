--+ server-message on

-- normal: declared constant can be used in other declarations below


create or replace procedure t(i int) as
    j constant int := i - 1;
    k constant int := j - 1;
begin
    dbms_output.put_line('j=' || j);
    dbms_output.put_line('k=' || k);
end;

select count(*) from db_stored_procedure where sp_name = 't';
select count(*) from db_stored_procedure_args where sp_name = 't';

call t(7);

drop procedure t;



--+ server-message off
