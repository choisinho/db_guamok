show index from Book;
show index from customer;
show index from orders;

CREATE INDEX ix_Book ON Book (bookname);
CREATE INDEX ix_Book2 ON Book(publisher, price);

SELECT	* 
FROM	Book
WHERE	publisher='대한미디어' AND price >= 30000;

ANALYZE TABLE Book;

DROP INDEX ix_Book ON Book;
DROP INDEX ix_Book2 ON Book;