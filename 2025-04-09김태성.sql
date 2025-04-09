select * from emp;
--입력값이 첫 글자만 대문자로 변환
select ename, initcap(ename) "INITCAR" from emp where deptno=10;
--소문자로 변환
select ename,lower(ename)"LOWER",upper(ename) "UPPER" from emp where deptno=20;
--길이
select ename,length(ename),lengthb(ename) from emp where deptno=20;
select '홍길동',length('홍길동'),lengthb('홍길동')from dual;
--글자 추출
select substr('abcde',3,2) "3,2",substr('abcde',-3,2), substr('abcde',-3,4)from dual;
--student테이블에서 jumin컬럼을 사용해서 1전공이 101번인 학생들의 이름과 태어난 월일,생일, 하루전 날짜를 출력하세요.(050413-3111111)
select name,substr(jumin,3,4)-1 "Birthday-1" from student where deptno1=101;
--'-'이 3번째 나오는 위치
select 'A-B-C-D', instr('A-B-C-D','-',1,3)"INSTR" from dual;
--student 테이블에서 1전공이 101번인 학생들의 tel칼럼을 조회하여 3이 첫번째로 나오는 위치를 이름과 전화번호와 함께 출력하세요.
select name, tel, instr(tel,'3') ,profno from student where deptno1=101;