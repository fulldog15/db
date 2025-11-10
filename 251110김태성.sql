select * from dept7;

create table dept7
as
select * from dept2;

desc dept7;

alter table dept7
add(location varchar2(10));

alter table dept7 alter table dept7
add(location varchar2(10));

rename column location to loc;
select * from dept6;
rename dept7 to dept6;

alter table dept6 modify (loc varchar2(20));
desc dept6;

alter table dept6 drop column loc;
alter table dept6 drop column location cascade constraints;

create table dept7
as
select * from dept6;

select * from dept7;

truncate table dept7;
drop table dept6;