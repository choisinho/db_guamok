CREATE VIEW    vw_Customer
AS   SELECT      *
     FROM        Customer
     WHERE       address LIKE '%대한민국%';

select * from vw_Customer;

CREATE VIEW  vw_Orders(orderid, custid, name, bookid, bookname, saleprice, orderdate)
AS SELECT    od.orderid, od.custid, cs.name, od.bookid, 
             bk.bookname, od.saleprice, od.orderdate
   FROM      Orders od, Customer cs, Book bk
   WHERE     od.custid=cs.custid AND od.bookid=bk.bookid;

select * from vw_orders;

SELECT 	orderid, bookname, saleprice
FROM 	vw_Orders
WHERE 	name='김연아';

CREATE OR REPLACE VIEW vw_Customer (custid, name, address)
AS SELECT   custid, name, address
   FROM     Customer
   WHERE    address LIKE '%영국%';

select * from vw_Customer;
select * from vw_orders;

DROP VIEW vw_Customer;
DROP VIEW vw_Orders;
