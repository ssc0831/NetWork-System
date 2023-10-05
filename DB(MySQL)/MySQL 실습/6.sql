-- --------------------------------------------------
create table empTbl
( emp char(3), manager char(3), empTel varchar(8) );
insert into empTbl values('나사장', null, '0000');
insert into empTbl values('김재무', '나사장', '2222');
insert into empTbl values('김부장', '김재무', '2222-1');
insert into empTbl values('이부장', '김재무', '2222-2');
insert into empTbl values('우대리', '이부장', '2222-2-1');
insert into empTbl values('지사원', '이부장', '2222-2-2');
insert into empTbl values('이영업', '나사장', '1111');
insert into empTbl values('한과장', '이영업', '1111-1');
insert into empTbl values('최정보', '나사장', '3333');
insert into empTbl values('윤차장', '최정보', '3333-1');
insert into empTbl values('이주임', '윤차장', '3333-1-1');

-- 이부장의 상사의 구내 전화번호는?
select * from empTbl where emp = '이부장';
select emp, empTel from empTbl where emp = '김재무';

select A.emp as '부하직원', B.emp as '직속상관', B.empTel as '직속상관연락처' from empTbl A
join empTbl B
on A.manager = B.emp
where A.emp = '이부장';

select emp, manager, empTel from empTbl A
inner join empTbl B;

-- union, union all, not in, in
-- union은 합집합, 두 테이블의 필드의 갯수가 같아야 한다.
-- 두 필드의 자료형이 호환되어야 한다.

select stdName, addr from stdtbl
union select num, clubName from stdclubtbl;

select * from stdtbl union all select * from clubtbl;
-- union all은 합쳐서 있는 것을 모두 보여줌.(중복값 포함)
-- <union과 union all의 차이점> union은 중복값 제외하여 합쳐서 보여줌

-- not in
select name, concat(mobile1, mobile2) as '전화번호' from usertbl
where name not in
( select name from usertbl where mobile1 is null ) ;

select concat('123', '456');
select concat(mobile1, '-', left(mobile2,4), '-', right(mobile2,4)) as '전화번호'
from usertbl;

select name, concat(mobile1, mobile2) as '전화번호' from usertbl
where name in
( select name from usertbl where mobile1 is null ) ;