create table stdtbl
( stdName varchar(10) not null primary key,
addr char(4) not null
);

create table clubtbl
( clubName varchar(10) not null primary key,
roomNo char(4) not null
);

create table stdclubtbl
( num int auto_increment not null primary key,
stdName varchar(10) not null,
clubName varchar(10) not null,
foreign key(stdName) references stdtbl(stdName),
foreign key(clubName) references clubtbl(clubName)
);

insert into stdtbl values ('김범수', '경남'),('성시경', '서울'), ('조용필', '경기'), ('은지원', '경북'), ('바비킴', '서울');

insert into clubtbl values ('수영', '101호'),('바둑', '102호'), ('축구', '103호'), ('봉사', '104호');

insert into stdclubtbl values
(null, '김범수', '바둑'), (null,'김범수', '축구'), (null,'조용필', '축구'),
(null,'은지원', '축구'), (null,'은지원', '봉사'), (null,'바비킴', '봉사') ;

select * from stdclubtbl;
select * from stdtbl;
select * from clubtbl;

-- [Q1] 김범수가 가입한 동아리 이름은??
select stdName, clubName from stdclubtbl where stdName = '김범수';

-- [Q2] 학생의 이름, 지역, 가입한 동아리를 출력하는 쿼리문을 작성하세요.
select * from stdclubtbl;
select * from stdtbl;
select * from clubtbl;

select S.stdName, SC.clubName, S.addr from stdtbl as S
inner join stdclubtbl as SC
on S.stdName = SC.stdName;

-- [Q3] 학생이름, 동아리, 동아리방 번호를 출력하는 쿼리문을 작성하세요.
select * from stdclubtbl;
select * from stdtbl;
select * from clubtbl;

select SC.stdName, SC.clubName, C.roomNo from stdclubtbl as SC
inner join clubtbl as C
on SC.clubName = C.clubName;

-- [Q4] 학생이름, 주소, 동아리명, 방번호를 출력하는 쿼리문을 작성하세요.
select * from stdclubtbl;
select * from stdtbl;
select * from clubtbl;

select S.stdName, S.addr, SC.clubName, C.roomNo from stdtbl S
inner join stdclubtbl SC
on S.stdName = SC.stdName
inner join clubtbl C
on SC.clubName = C.clubName;

Select U.userID, U.name, B.prodName, U.addr from usertbl as U
left outer join buytbl as B
on u.userID = B.userID;

-- --------------------------------------------------