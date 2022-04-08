SELECT		( SELECT  name
			  FROM    Customer cs
              WHERE   cs.custid=od.custid ) 'name', SUM(saleprice) 'total'
FROM 	     Orders od
GROUP BY     od.custid;

SELECT       custid, SUM(saleprice) 'total'
FROM 	     Orders od
GROUP BY     od.custid;

alter table orders
add bname varchar(40);

select * from orders;

UPDATE 	Orders
SET 	bname = ( SELECT bookname
				  FROM  Book
				  WHERE Book.bookid = Orders.bookid );

update 	book, orders
set 	bname = bookname
where 	book.bookid = orders.bookid;

select * from orders;
 
alter table orders
drop bname;

SELECT  custid, name
FROM   Customer
WHERE  custid <= 2;

SELECT 	cs.name, SUM(od.saleprice) 'total'
FROM 	(SELECT  custid, name
		 FROM   Customer
		 WHERE  custid <= 2) cs,
		 Orders   od
WHERE 	cs.custid = od.custid
GROUP BY cs.name;

SELECT 	orderid, saleprice
FROM 	Orders
WHERE 	saleprice <= (SELECT AVG(saleprice)
                      FROM Orders);

SELECT 	ROUND(AVG(saleprice),0)
FROM 	Orders;

SELECT 	orderid, custid, saleprice
FROM 	Orders od
WHERE 	saleprice > (SELECT AVG(saleprice)
					 FROM Orders so
					 WHERE od.custid = so.custid);
                     
SELECT 	SUM(saleprice) 'total'
FROM 	Orders
WHERE 	custid IN (SELECT   custid
				   FROM     Customer
				   WHERE    address LIKE '%대한민국%');

SELECT 	orderid, saleprice
FROM 	Orders
WHERE 	saleprice > ALL (SELECT  saleprice
						 FROM    Orders
						 WHERE   custid='3');

SELECT  custid, saleprice
FROM    Orders
WHERE   custid='3';

SELECT 	SUM(saleprice) 'total'
FROM 	Orders od
WHERE 	EXISTS (SELECT  *
				FROM    Customer cs
				WHERE   address LIKE '%대한민국%' AND cs.custid=od.custid);

SELECT  *
FROM    Customer cs, orders od
WHERE   address LIKE '%대한민국%' AND cs.custid=od.custid;

