/* 데이터 삽입 */
INSERT  INTO Book(bookid, bookname, publisher, price)
		VALUES (11, '스포츠 의학', '한솔의학서적', 90000);
      
select * from Book;

INSERT   INTO   Book(bookid, bookname, publisher, price)
		 VALUES (12, '스포츠 의학', '한솔의학서적', 90000);
INSERT   INTO   Book(bookid, bookname, publisher, price)
		 VALUES (13, '스포츠 의학', '한솔의학서적', 90000);
         
INSERT   INTO   Book(bookid, bookname, publisher)
		 VALUES (14, '스포츠 의학', '한솔의학서적');

INSERT   INTO Book(bookid, bookname, price, publisher)
			SELECT bookid, bookname, price, publisher
			FROM  Imported_book;

select @@sql_safe_updates; /* Safe Updates 설정 확인 */
SET SQL_SAFE_UPDATES = 0;  /* autocommit 해제 */

/* 데이터 수정 */
UPDATE 	Customer
SET 	address = '대한민국 부산'
WHERE 	custid = 5;

/* 데이터 삭제 */
DELETE FROM Book 
WHERE  bookid = '11'; 

DELETE 	FROM 	Customer;


