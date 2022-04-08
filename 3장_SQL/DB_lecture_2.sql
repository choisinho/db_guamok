/* 테이블 생성 */
CREATE TABLE	NewBook (
       bookid		INTEGER, 
       bookname		VARCHAR(20),
       publisher	VARCHAR(20),
       price		INTEGER );

CREATE TABLE	NewCustomer (
  custid 	    INTEGER  PRIMARY KEY,
  name 	        VARCHAR(40),
  address 	  	VARCHAR(40),
  phone 	    VARCHAR(30) );

CREATE TABLE   NewOrders (
 orderid 	    INTEGER,
 custid 	    INTEGER  NOT NULL,
 bookid 	    INTEGER  NOT NULL,
 saleprice      INTEGER,
 orderdate     	DATE,
 PRIMARY KEY (orderid),
 FOREIGN KEY (custid) REFERENCES NewCustomer(custid) ON DELETE CASCADE );
 
/* 테이블 변경 */
ALTER TABLE NewBook ADD isbn VARCHAR(13);
ALTER TABLE NewBook MODIFY isbn INTEGER;
ALTER TABLE NewBook DROP COLUMN isbn;

ALTER TABLE NewBook MODIFY bookid INTEGER NOT NULL;
ALTER TABLE NewBook ADD PRIMARY KEY(bookid);

/* 테이블 삭제 */
DROP  TABLE  NewBook;
DROP  TABLE  NewCustomer; /* 마지막에 삭제하세요... */
DROP  TABLE  NewOrders;