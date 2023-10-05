-- Q6
-- create database exam;
-- create table book
-- (bookid int auto_increment not null primary key,
-- bookname varchar(20) not null,
-- publisher varchar(20) not null,
-- price int not null
-- );
-- insert into book (bookid, bookname, publisher, price) values ('1', '축구의 역사', '굿스포츠', '7000' ); 
-- insert into book (bookname, publisher, price) values ('축구아는 여자', '나무수', '13000' );
-- insert into book (bookname, publisher, price) values ('축구의 이해', '대한미디어', '22000' );
-- insert into book (bookname, publisher, price) values ('골프 바이블', '대한미디어', '35000' );
-- insert into book (bookname, publisher, price) values ('피겨 교본', '굿스포츠', '8000' );
-- insert into book (bookname, publisher, price) values ('역도 단계별기술', '굿스포츠', '6000' );
-- insert into book (bookname, publisher, price) values ('야구의 추억', '이상미디어', '20000' );
-- insert into book (bookname, publisher, price) values ('야구를 부탁해', '이상미디어', '13000' );
-- insert into book (bookname, publisher, price) values ('올림픽 이야기', '삼성당', '7500' );
-- insert into book (bookname, publisher, price) values ('Olympic Champions', 'Pearson', '13000' );

-- create table customer
-- (custid int auto_increment not null primary key,
-- name varchar(20) not null,
-- address varchar(20) not null,
-- phone varchar(13)
-- );
-- select * from customer;
-- insert into customer (custid, name, address, phone) values ('1', '박지성', '영국 멘체스터', '000-5000-0001' ); 
-- insert into customer (name, address , phone) values ('김연아', '대한민국 서울', '000-6000-0001' );
-- insert into customer (name, address , phone) values ('장미란', '대한민국 강원도', '000-7000-0001' );
-- insert into customer (name, address , phone) values ('추신수', '미국 클리블랜드', '000-8000-0001' );
-- insert into customer (name, address , phone) values ('박세리', '대한민국 대전', '' );


-- create table orders
-- ( orderid int auto_increment not null primary key,
-- bookid int not null,
-- custid int not null,
-- saleprice int not null,
-- orderdate date not null,
-- foreign key(bookid) references book(bookid),
-- foreign key(custid) references customer(custid)
-- );
-- select * from orders;
-- insert into orders (orderid, custid, bookid, saleprice, orderdate) values ('1', '1', '1', '6000', '2014-07-01');
-- insert into orders (custid, bookid, saleprice, orderdate) values ('1', '3', '21000', '2014-07-03');
-- insert into orders (custid, bookid, saleprice, orderdate) values ('2', '5', '8000', '2014-07-03');
-- insert into orders (custid, bookid, saleprice, orderdate) values ('3', '6', '6000', '2014-07-04');
-- insert into orders (custid, bookid, saleprice, orderdate) values ('4', '7', '20000', '2014-07-05');
-- insert into orders (custid, bookid, saleprice, orderdate) values ('1', '2', '12000', '2014-07-07');
-- insert into orders (custid, bookid, saleprice, orderdate) values ('4', '8', '13000', '2014-07-07');
-- insert into orders (custid, bookid, saleprice, orderdate) values ('3', '10', '12000', '2014-07-08');
-- insert into orders (custid, bookid, saleprice, orderdate) values ('2', '10', '7000', '2014-07-09');
-- insert into orders (custid, bookid, saleprice, orderdate) values ('3', '8', '13000', '2014-07-10');

-- Q7
-- select * from book order by price, bookname desc;

-- Q8
-- select * from book where price between 10000 and 20000;

-- Q9
-- select * from book where bookname like '축구%' and price >= 20000

-- Q10
-- select custid, count(*) as 도서수량 from orders where saleprice >= '8000' group by custid having count(*) >= 2;

-- Q11
-- select distinct publisher from book;