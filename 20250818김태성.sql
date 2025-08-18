select * from student;
select COUNT(*), COUNT(comm) from emp;
select * from emp;
select COUNT(comm), sum(comm) from emp;
select COUNT(comm), sum(comm), AVG(comm) from emp;
select max(sal), MIN(sal) from emp;
select MAX(hiredate) "max",MIN(hiredate) "min"from emp;
select deptno,round(AVG(nvl(sal,0)),2) "avg" from emp GROUP by deptno;
select deptno,AVG(nvl(sal,0))"avg_sal" from emp GROUP by deptno,job ORDER BY deptno;
select max(sal+nvl(comm,0)) "max",min(sal+nvl(comm,0)) "min",round(AVG(sal+nvl(comm,0)),1) "avg" from emp;
select substr(birthday,4,2) "bir",COUNT(*) from student GROUP BY substr(birthday,4,2) ORDER BY "bir";
select COUNT(*)|| 'EA' "total",count(decode(substr(birthday,4,2),'01',0))||'EA' JAN,
count(decode(substr(birthday,4,2),'02',0))||'EA' FEB,
count(decode(substr(birthday,4,2),'03',0))||'EA' MAR,
count(decode(substr(birthday,4,2),'04',0))||'EA' APL,
count(decode(substr(birthday,4,2),'05',0))||'EA' MAY,
count(decode(substr(birthday,4,2),'06',0))||'EA' JUN,
count(decode(substr(birthday,4,2),'07',0))||'EA' JUL,
count(decode(substr(birthday,4,2),'08',0))||'EA' AUG,
count(decode(substr(birthday,4,2),'09',0))||'EA' SEP,
count(decode(substr(birthday,4,2),'10',0))||'EA' OCT,
count(decode(substr(birthday,4,2),'11',0))||'EA' NOV,
count(decode(substr(birthday,4,2),'12',0))||'EA' DEC from student;
select COUNT(*) "total",COUNT(decode(substr(tel,1,instr(tel,')')-1),'02',0)) "SEOUL",
COUNT(decode(substr(tel,1,instr(tel,')')-1),'031',0)) "GYEONGGL",
COUNT(decode(substr(tel,1,instr(tel,')')-1),'051',0)) "BUSAN",
COUNT(decode(substr(tel,1,instr(tel,')')-1),'052',0)) "ULSAN",
COUNT(decode(substr(tel,1,instr(tel,')')-1),'053',0)) "DAEGU",
COUNT(decode(substr(tel,1,instr(tel,')')-1),'055',0)) "GTEONGNAM"from student;