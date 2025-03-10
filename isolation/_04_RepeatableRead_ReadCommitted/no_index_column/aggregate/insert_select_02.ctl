/*
Test Case: insert & select
Priority: 2
Reference case: cc_basic/_01_ReadCommitted/primary_key_column/aggregate/insert_select_01.ctl
Author: Rong Xu

Test Point:
simple avg, there are unvacuumed data, and uncommitted update and insert at the same time
C1 update begin
               C2 insert begin
                              C3 select sum() begin
                              C3 commit
               C2 commit
C1 commit

NUM_CLIENTS = 3
C3: select avg(id) from t; 
*/

MC: setup NUM_CLIENTS = 3;
C1: set transaction lock timeout INFINITE;
C1: set transaction isolation level repeatable read;

C2: set transaction lock timeout INFINITE;
C2: set transaction isolation level read committed;

C3: set transaction lock timeout INFINITE;
C3: set transaction isolation level read committed;

/* preparation */
C1: drop table if exists t;
C1: create table t(id int,col varchar(10));
C1: insert into t select rownum,rownum%100 from db_class a,db_class b,db_class c,db_class d where rownum <= 10000;
C1: commit;
C1: update t set id=id-1,col=col+id;
C1: commit;
MC: wait until C1 ready;

/* test case */
C1: update t set id=col-1 where mod(id,2)=0;
MC: wait until C1 ready;

C2: insert into t select * from t where mod(id,2)=1;
MC: wait until C2 ready;

C3: select avg(id) from t;
C3: commit work;
MC: wait until C3 ready;

/*MC: wait until C2 ready;
MC: wait until C1 ready;*/

C2: commit;
MC: wait until C2 ready;

C1: commit;
MC: wait until C1 ready;

C3: quit;
C2: quit;
C1: quit;

