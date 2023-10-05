SELECT * from usertbl;
select * from buytbl;

select B.userID, B.prodName, U.addr, U.mobile1, U.mobile2 from buytbl as B
inner join usertbl as U
on B.userID = U.userID where B.userID = 'BBK';

select * from usertbl;
select U.userID, U.name, B.prodName, U.addr from usertbl as U
left outer join buytbl as B
on u.userID = B.userID
where B.prodName is not null;