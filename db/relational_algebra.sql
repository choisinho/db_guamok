use madang;

/* 셀렉션 */
select *
from book
where price <= 8000;

select *
from book
where price <= 8000 and bookid >= 3;

/* 프로젝션 */
select name,address,phone
from customer;

/* 합집합(union) */
select * from book where price >= 15000
union 
select * from book where bookid >= 7;

/* 교집합(intersect) */
select bookid,bookname,publisher,price 
from book 
where price >= 8000
and (bookid,bookname,publisher,price) 
in (select bookid,bookname,publisher,price 
	from book 
    where bookid >= 5);

/* 차집합(minus) */
select bookid,bookname,publisher,price 
from book 
where price >= 8000
and (bookid,bookname,publisher,price) 
not in (select bookid,bookname,publisher,price 
		from book 
        where bookid >= 5);

/* 카티전 프로덕트 */
select *
from customer, orders;

/* 동등조인 */
select *
from customer, orders
where customer.custid = orders.custid;

select *
from customer inner join orders
on customer.custid = orders.custid;

select *
from customer inner join orders
on customer.custid = orders.custid
where customer.custid >= 3;

/* 자연조인 */
select *
from customer natural join orders
where customer.custid = orders.custid;

select *
from customer natural join orders
where customer.custid = orders.custid and customer.custid >= 3;
