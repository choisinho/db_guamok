/* 상관 부속질의 */
SELECT 	b1.bookname
FROM 	Book b1
WHERE 	b1.price > (SELECT  avg(b2.price)
		 FROM    Book b2
		 WHERE   b2.publisher = b1.publisher);

* 집합연산 */
SELECT	name
FROM	Customer
WHERE 	address LIKE '대한민국%'
UNION  
SELECT	name
FROM	Customer
WHERE	custid IN (SELECT custid FROM Orders);

SELECT  name
FROM    Customer
WHERE   address LIKE '대한민국%'
		AND name NOT IN (SELECT  name
				 FROM   Customer
				 WHERE  custid IN (SELECT custid FROM Orders));

SELECT	name
FROM	Customer
WHERE   address LIKE '대한민국%'
		AND name IN (SELECT  name
			       FROM   Customer
			       WHERE  custid IN (SELECT custid FROM Orders));
                     
/* EXISTS */
	
SELECT 	name, address
FROM 	Customer cs
WHERE 	EXISTS (SELECT *
	            FROM  Orders od
	            WHERE cs.custid = od.custid);






