--������ ����
desc emp;
select * from emp;
select ename,job from emp;
--������ ����
desc professor;
select * from professor;
select name, 'good morning~~!' "Good Morning" from professor;
SELECT dname, 'it''s deptno : ' "�λ�", deptno "DNAME AND DEPTNO"from dept;
SELECT dname, 'it''s deptno : ' || deptno "DNAME AND DEPTNO"from dept;
SELECT dname, q'[, it's deptno : ]' ,deptno "DNAME AND DEPTNO"from dept;
select profno , name , pay from professor;
select profno "Prof'NO" , name AS "Prof's NAME", pay prof_Pay from professor;