SELECT  ABS(-78), ABS(78);
SELECT ROUND(8884.875, 2);

SELECT 	custid '고객번호', ROUND(SUM(saleprice)/COUNT(*), -2) '평균금액'
FROM 	Orders
GROUP BY custid;

select * from orders;

select bookname from book;

SELECT 	bookid, REPLACE(bookname, '야구', '농구') bookname, publisher, price
FROM 	Book;

SELECT 	bookname '제목', CHAR_LENGTH(bookname) '문자수',LENGTH(bookname) '바이트수'
FROM 	Book
WHERE 	publisher='굿스포츠';

SELECT 	SUBSTR(name, 1, 1) '성', COUNT(*) '인원'
FROM 	Customer
GROUP BY SUBSTR(name, 1, 1);

SELECT	orderid '주문번호', orderdate '주문일', 
		ADDDATE(orderdate, INTERVAL 2 month) '확정'
FROM	Orders;

SELECT	orderid '주문번호', STR_TO_DATE(orderdate, '%Y-%m-%d') '주문일', 
        custid '고객번호', bookid '도서번호'
FROM	Orders
WHERE   orderdate = DATE_FORMAT('20140707', '%Y%m%d'); /* DATE 타입을 문자열로 변환 */

SELECT	SYSDATE( ),
        DATE_FORMAT(SYSDATE(), '%Y/%m/%d %M %h:%s') 'SYSDATE_1',
        DATE_FORMAT(SYSDATE(), '%m/%d/%y %H:%s') 'SYSDATE_2';

SELECT 	price+100
FROM 	book
WHERE 	bookid=14; /* price 값이 NULL */

SELECT   SUM(price), AVG(price), COUNT(*), COUNT(price)
FROM     book;

SELECT   SUM(price), AVG(price), COUNT(*)
FROM     book
WHERE    bookid = 14; /* price 값이 NULL */

SELECT 	*
FROM 	book
WHERE 	price IS NULL;

SELECT 	*
FROM 	book
WHERE 	price = '';

SELECT 	name '이름', IFNULL(phone, '연락처없음') '전화번호'
FROM 	Customer;

select * from Customer;

SET 	@num := 0;
select @num; /*제대로 선언된건지 보기*/

SELECT	(@num := @num + 1) '순번', custid, name, phone
FROM	Customer
WHERE 	@num < 4;

select * from Customer;