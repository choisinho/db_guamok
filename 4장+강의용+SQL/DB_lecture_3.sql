use madang2;

CREATE VIEW    vw_Customer
AS   SELECT      *
     FROM        Customer
     WHERE       address LIKE '%대한민국%';

select * from vw_Customer;
select * from vw_customer where name like '김%';

CREATE VIEW  vw_Orders(orderid, custid, name, bookid, bookname, saleprice, orderdate)
AS SELECT    od.orderid, od.custid, cs.name, od.bookid, 
             bk.bookname, od.saleprice, od.orderdate
   FROM      Orders od, Customer cs, Book bk
   WHERE     od.custid=cs.custid AND od.bookid=bk.bookid;

-- CREATE VIEW  vw_Orders(orderid, custid, name, bookid, rderdate) 실제 속성과 개수를 맞춰야한다. (7개 넣으라고)
-- AS SELECT    od.orderid, od.custid, cs.name, od.bookid, 
--              bk.bookname, od.saleprice, od.orderdate
--    FROM      Orders od, Customer cs, Book bk
--    WHERE     od.custid=cs.custid AND od.bookid=bk.bookid;

CREATE VIEW  vOrders(o_id, c_id, name, b_id, b_name, s_price, o_date) -- 속성이름 바꾸는거 가능
AS SELECT    od.orderid, od.custid, cs.name, od.bookid, 
             bk.bookname, od.saleprice, od.orderdate
   FROM      Orders od, Customer cs, Book bk
   WHERE     od.custid=cs.custid AND od.bookid=bk.bookid;
select * from vOrders;

SELECT 	orderid, bookname, saleprice
FROM 	vw_Orders
WHERE 	name='김연아';

CREATE OR REPLACE VIEW vw_Customer 
AS SELECT   custid, name, address
   FROM     Customer
   WHERE    address LIKE '%영국%';
select * from vw_Customer;

select * from vw_orders;

DROP VIEW vw_Customer;
DROP VIEW vw_Orders;
