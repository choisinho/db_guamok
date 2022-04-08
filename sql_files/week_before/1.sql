select * from NewOrders;
select * from newcustomer;

insert into Newcustomer(custid, name, address, phone)
values (1, 'kim', 'chungju', '010');

insert into NewOrders(orderid, custid, bookid)
values (2, 1, 1);

insert into NewOrders(orderid, custid, bookid)
values (2, 1, 1, 5000);