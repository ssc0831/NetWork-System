set @num = 10;
select @num as "숫자";


set @myVar1 = 5 ;
set @myVar2 = 3 ;
set @myVar3 = 4.25 ;
set @myVar4 = '가수이름==>' ;

select @myVar1 ;
select @myVar2 + @myVar3 ;
select @myVar4, Name from usertbl where height > 180 ;