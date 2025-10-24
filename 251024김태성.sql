create table new_table(no number(3),name varchar2(10),birth DATE);
desc new_table;
select * from new_table;

create table tt02(no number(3,1) default 0,name varchar2(10) default 'NO Name',hiredate date default sysdate);
insert into tt02(no) values(1);
select * from tt02;

create table 한글테이블(컬럼1 number,컬럼2 varchar2(10),컬럼3 date);
select * from 한글테이블;

select * from dept2;
create table dept3 as select * from dept2;
select * from dept3;
create table dept4 as select dcode,dname from dept2;
select * from dept4;
create table dept5 as select * from dept2 where 1=2;
select * from dept5;
create table dept7 as select dcode,dname from dept2 where dcode in(1000,1001,1002);
select * from dept7;