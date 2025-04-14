select name,jumin,REPLACE(jumin, substr(jumin,7,7), '-/-/-/-') "replace" from student where deptno1 = 101;
--1번문제
select * from dept;
--2번문제
select * from emp;
select ename, job, EMPNO, HIREDATE from emp;
--3번문제
select DISTINCT job from emp;
--4번문제
select ename from emp where sal >=2850;
--5번문제
select ename, EMPNO from emp where EMPNO = 7566;
--6번문제
select ename, sal from emp where sal <= 1500 or sal >= 2850;
--7번문제
select * from emp;
select ename, job, hiredate from emp where hiredate >=81/02/20 and hiredate <=81/05/01;