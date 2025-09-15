select s.name,sc.total,h.grade from student s,score sc,hakjum h where sc.studno=s.studno and sc.total>=h.min_point and sc.total<=h.max_point;
select s.name,sc.total,h.grade from student s,score sc,hakjum h where sc.studno=s.studno and sc.total between h.min_point and h.max_point;
select s.name "STU_NAME",p.name "PROF_NAME" from student s,professor p where s.profno = p.profno(+);
select s.name,p.name from student s,professor p where s.profno(+)=p.profno union select s.name,p.name from student s,professor p where s.profno=p.profno(+); 
select s.name,p.name from student s,professor p where s.profno(+)=p.profno union all;
select s.name "STU_NAME",p.name "PROF_NAME" from professor p left outer join student s on s.profno=p.profno;
