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

select l_date "��������",l_code "���������ڵ�",l_qty "����Ǽ�",l_total "�����Ѿ�",SUM(l_total) OVER(ORDER BY l_date) "��������ݾ�" from loan where l_store =1000;

select l_code "���������ڵ�",l_store"��������",l_date "��������",l_qty "����Ǽ�",l_total "�����",SUM(l_total) OVER(PARTITION BY l_code,l_store ORDER BY l_date) "��������ݾ�" from loan;

select l_date "��������",l_code "���ⱸ���ڵ�",l_qty "����Ǽ�",l_total "�����Ѿ�",SUM(l_total) OVER(PARTITION BY l_code ORDER BY l_total) "��������ݾ�" from loan where l_store=1000;