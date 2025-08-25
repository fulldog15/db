select COUNT(*) ||'EA('||COUNT(*)/COUNT(*)*100||'%)' TOTAL,
COUNT(decode(substr(tel,1,instr(tel,')')-1),'02',0))||'EA('||
COUNT(decode(substr(tel,1,instr(tel,')')-1),'02',0))/COUNT(*)*100||'%)' SEOUL,
COUNT(decode(substr(tel,1,instr(tel,')')-1),'031',0))||'EA('||
COUNT(decode(substr(tel,1,instr(tel,')')-1),'031',0))/COUNT(*)*100||'%)' GYEONGGL,
COUNT(decode(substr(tel,1,instr(tel,')')-1),'051',0))||'EA('||
COUNT(decode(substr(tel,1,instr(tel,')')-1),'051',0))/COUNT(*)*100||'%)' BUSAN,
COUNT(decode(substr(tel,1,instr(tel,')')-1),'052',0))||'EA('||
COUNT(decode(substr(tel,1,instr(tel,')')-1),'052',0))/COUNT(*)*100||'%)' ULSAN,
COUNT(decode(substr(tel,1,instr(tel,')')-1),'053',0))||'EA('||
COUNT(decode(substr(tel,1,instr(tel,')')-1),'053',0))/COUNT(*)*100||'%)' DAEGU,
COUNT(decode(substr(tel,1,instr(tel,')')-1),'055',0))||'EA('||
COUNT(decode(substr(tel,1,instr(tel,')')-1),'055',0))/COUNT(*)*100||'%)' GYEONGNAM
from student;

select deptno,ename,sal,SUM(sal) OVER(PARTITION BY deptno ORDER BY sal) TOTAL from emp;

select deptno,ename,sal,SUM(SUM(sal)) OVER() "TOTAL_SAL",round(sal/sum(sal) OVER()*100,2) "%" from emp group by deptno,ename,sal order by 5 desc;

select deptno,ename,sal,SUM(SUM(sal)) OVER(PARTITION BY deptno) "SUM_DEPT",round((ratio_to_report(sum(sal)) OVER(PARTITION BY deptno))*100,2) "%" from emp group by deptno,ename,sal order by 1;

select l_date "대출일자",l_code "대출종목코드",l_qty "대출건수",l_total "대출총액",SUM(l_total) OVER(ORDER BY l_date) "누적대출금액" from loan where l_store =1000;

select l_code "대출종목코드",l_store"대출지점",l_date "대출일자",l_qty "대출건수",l_total "대출액",SUM(l_total) OVER(PARTITION BY l_code,l_store ORDER BY l_date) "누적대출금액" from loan;

select l_date "대출일자",l_code "대출구분코드",l_qty "대출건수",l_total "대출총액",SUM(l_total) OVER(PARTITION BY l_code ORDER BY l_total) "누적대출금액" from loan where l_store=1000;