--+ server-message on
-- Verified for CBRD-24565

-- normal: basic usage of operator 'is null' with time values


create or replace procedure t(i int) as
    a time := time'01:02:03';
    b time;

    function print_bool(b boolean) return varchar as
    begin
        return case when b is null then 'null' when b then 'true' else 'false' end;
    end;
begin
    dbms_output.put_line(print_bool(a is null));
    dbms_output.put_line(print_bool(b is null));
end;

select count(*) from db_stored_procedure where sp_name = 't';
select count(*) from db_stored_procedure_args where sp_name = 't';

call t(7);

drop procedure t;


--+ server-message off
