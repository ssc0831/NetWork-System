-- 작성일자 : 2022년 01월 03일
-- 작 성 자 : My
-- 대상 DB : sqlDB
-- 데이터베이스 선택

use sqldb;
-- 테이블을 보여준다.
show tables; 
show databases;
-- buytbl의 내용을 보여준다.
select * from buytbl;
-- select distinct : 중복값을 제거해준다.
select distinct * from usertbl;
select distinct addr from usertbl;
select addr from usertbl;


select * from usertbl
where addr = '서울';

select * from usertbl
where height >=175;

select * from buytbl;
select * from buytbl
where prodName = '모니터';
select distinct prodName from buytbl;


-- select [all|distinct] expr
-- [from] 테이블명
-- [where] 조건

-- select '무야호~' as '메아리';
-- select avg(5+3+2);
select * from usertbl;
-- select max(height) as '가장 큰 키' from usertbl;

-- % 모든 글자, ? : 한 글자, %글자% : 앞에 있든지 없든지 모든글자
-- % 모든 글자, _한 글자를 의미
select * from usertbl where name like '김%';
-- 키가 170 이상 180 미만인 사람
select * from usertbl
where height >= 170 and height < 180;
-- 1970년 이후 출생자 또는 키가 180 이상인 사람
select * from usertbl
where birthYear >= 1970 or height >= 180;

-- addr이 서울이고 키가 180 이상인 사람
select * from usertbl
where addr = '서울' and height >= 180;

-- 키가 170 이상 180 미만인 사람
select * from usertbl
where height between 170 and 179;

-- 오름차순 : ASC(생략 가능), 내림차순 : DESC
select * from usertbl
order by addr;

-- group by ~ having

-- select
-- from
-- where 조건
-- group by
-- having 조건
-- order by

-- 사람별 구매합계
select userID, sum(amount) from buytbl group by userID;
-- 제품별 판매개수 합계
select * from buytbl;
select prodName, sum(amount) from buytbl group by prodName;
-- 사용자별 판매금액
select userID, (price*amount) as '판매금액' from buytbl
order by userID;

-- 사용자별 판매금액의 합계
select userID, sum(price*amount) as '판매금액 합계' from buytbl
group by userID;

select prodName, sum(price*amount) as '판매금액 합계' from buytbl
group by prodName
having sum(price*amount) >=1000
order by prodName;


-- -------------------------------------------------
create table test1
(
id int, -- 정수
userName char(3),  -- 문자 3자리
age int  -- 정수
);

select * from test1;
insert into test1 values(1, '홍길동', 23);
insert into test1 (id, userName) values(2, '설현');

create table test2
(
id int primary key, -- 정수, 기본키
userName char(3), -- 문자 3자리
age int -- 정수
);

select * from test2;
insert into test2 values(1, '홍길동', 23); -- primary key 설정되어 있을때는 중복 에러걸림
insert into test2 (id, userName) values(2, '설현');



-- create table 테이블명
-- (
-- 필드명1 데이터타입1,
-- 필드명2 데이터타입2,
-- 필드명3 데이터타입3,
-- 필드명4 데이터타입4
-- );;


create table test3
(
id int auto_increment primary key,
userName char(3),
age int
);

select * from test3;
insert into test3 (userName, Age) values ('홍길동', 23);
insert into test3 values (NULL, '설현', 23);
insert into test3 values (3, '미나', 23);
insert into test3 values (null, '유나', 21);
insert into test3 values (11, '지민', 20);
insert into test3 values (null, '유경',21);
select last_insert_id();

-- auto_increment 정렬
alter table test3 auto_increment=1;
set @count = 0;
update test3 set id = @count:= @count+1;

select * from test3;

UPDATE test3 SET AGE = 20
where id = 2;

-- delete from 테이블명 where 조건;
select * from test3;
delete from test3 where userName = '홍길동';
delete from test3 where id = '3';
delete from test3 where age >= 50;
delete from test3;

select * from test3;
insert into test3 values (null, '홍길동', 23);
insert into test3 values (null, '설현', 20);
insert into test3 values (null, '미나', 25);
insert into test3 values (null, '유나', 21);

-- 트랜스액션(트랜잭션) 실행
start transaction;

-- 세이브 포인트 지정
savepoint A;
delete from test3 where age >= 23;

select * from test3;

-- 트랜스액션(트랜잭션) 취소 = 롤백
rollback to a;
