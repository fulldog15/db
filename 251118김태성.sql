create table book
(book_ld number(5) not null,
 category varchar2(10) not null,
 author_ld number(5) not null,
 price number(10) not null,
 published_date date not null);
 
 
drop table book;
select * from book;

 
insert into book values(1,'인문',1,10000,'2020-01-01');
insert into book values(2,'경제',1,9000,'2021-04-11');
insert into book values(3,'경제',2,11000,'2021-02-05');
insert into book values(4,'인문',3,10000,'2021-03-15');
insert into book values(5,'생활',2,12000,'2021-01-10');
 
 create table author(
    author_id number(5) not null,
     author_name varchar2(10) not null);
drop table author;
select * from author;

insert into author values(1,'홍길동');
insert into author values(2,'김영호');
insert into author values(3,'이현정');
insert into author values(4,'김도균');

select book_id as 도서_id, published_date as 출판일 from book where category = '인문' and to_char(published_date,'yyyy')='2021' order by published_date asc;
select b.book_id as 도서_id, a,author_name as 저자명, b.published_date as 출판일 from book b, author a where b.author_id=a.author_id and b.category = '경제' order by published_date asc;