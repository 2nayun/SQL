use B_23

select * from 고객 select * from 제품 select * from 주문

select * from 제품 where 제조업체  = N'한빛제과'

select * from 제품 where 제조업체 = 
 (select 제조업체 from 제품 where 제품명 = N'달콤비스킷')

select 고객이름, 적립금 from 고객 where 적립금 >= 5000
where 고객이름 = N'성원용'
group by 고객이름

select 고객이름, 적립금 from 고객 where 적립금 
= (select max(적립금) from 고객) 

select * from 주문   select * from 제품  
select 제품명, 제조업체 from 제품 where 제품번호 in('p01', 'p04','p06')

select 제품명, 제조업체 from 제품 where 제품번호
not in (select 주문제품 from 주문 where 주문고객 = 'banana')

select 제품명, 제조업체, 단가 from 제품 where 단가 > all
(select 단가 from 제품 where 제조업체 = N'대한식품')

select 제품명, 제조업체, 단가 from 제품 where 단가 >
(select max(단가) from 제품 where 제조업체 = N'대한식품')

select c.고객이름, c.적립금 from 고객 c, 주문 o
where o.주문일자 = '2019-03-15' and o.주문고객 = c.고객아이디 

select 고객이름, 적립금 from 고객 
where exists (select * from 주문  where 주문.주문일자 = '2019-03-15' and 주문.주문고객 = 고객.고객아이디)

select 고객이름, 적립금 from 고객 
where not exists (select * from 주문  where 주문.주문일자 = '2019-03-15' and 주문.주문고객 = 고객.고객아이디)

select p.제품명, p.제조업체 from 제품 p, 주문 o
where p.제품번호 = o.주문제품 and o.주문고객 = 'banana'

select 제품명, 제조업체 from 제품 where 제품번호
in (select 주문제품 from 주문 where 주문고객 = 'banana')

select 제품명, 제조업체 from 제품 where 
exists 
(select * from 주문 where 제품.제품번호 = 주문.주문제품 
and 주문.주문고객 = 'banana')

select 제품명, 제조업체 from 제품 where 제품번호
not in (select 주문제품 from 주문 where 주문고객 = 'banana')

select * from 부서1  select * from 고객들
                     drop table 고객들
insert into 부서1 values (5, N'감찰부' )

insert into 부서1(부서번호) values (7)

insert into 고객(고객아이디, 고객이름, 등급, 직업, 적립금)
values('pppp', N'김길동', 'vip', N'회사원', 2000)