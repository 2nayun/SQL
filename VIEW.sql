use A_23

create table 테스트
(
  id   varchar(10) primary key,
  name nvarchar(20),
  age  int
 )
drop table 테스트
select * from 테스트  select * from 제품  select * from 주문
select * from 고객
insert into 테스트 values('a01', N'김길동', 25)
insert into 테스트(id, name) values('b01', N'김길동' )

create table 한빛제품
(
  제품명  nvarchar(20) ,
  재고량 int,
  단가  int
 )
 drop table 한빛제품   select * from 한빛제품
 insert into 한빛제품(제품명, 재고량, 단가) 
 select 제품명, 재고량, 단가 from 제품 
 where 제조업체 = N'한빛제과' 

update 한빛제품  set 제품명 = N'초코파이'  where 단가 = 1500
update 한빛제품  set 단가 = 5500 where 제품명 = N'초코파이'

update 한빛제품  set 단가 = 단가 * 1.3

update 주문 set 수량 = 5 where 주문고객 = 'apple'
update 주문 set 수량 = 10 where 주문번호 = 'o01'

update 주문 set 수량 = 7 where 주문고객 
in (select 고객아이디 from 고객 where 고객이름=N'정소화')

delete from 한빛제품 where 재고량 > 1500
delete from 한빛제품    select * from 한빛제품

delete 주문 where 주문고객 
in (select 고객아이디 from 고객 where 고객이름=N'정소화')
select * from 주문

-- DDL -> View

create view 우수고객(고객아이디, 고객이름, 나이)
as
select 고객아이디, 고객이름, 나이 from 고객
where 등급 = 'vip'
with check option

select * from 우수고객 drop view 우수고객

select * from 고객
insert into 고객(고객아이디, 고객이름,나이, 등급)
values ('mouse', N'마우스', 30, 'vip')

insert into 우수고객 values ('cycle', N'자전거', 29)

select * from 제품   select * from 업체별제품수
create view 업체별제품수(제조업체, 제품수)
as
select 제조업체, count(*) from 제품
group by 제조업체
with check option

