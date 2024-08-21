use B_23

select * from 고객  select * from 제품  select * from 주문

INSERT INTO 고객 VALUES ('apple', N'정소화', 20, 'gold', N'학생', 1000);
INSERT INTO 고객 VALUES ('banana', N'김선우', 25, 'vip', N'간호사', 2500);
INSERT INTO 고객 VALUES ('carrot', N'고명석', 28, 'gold', N'교사', 4500);
INSERT INTO 고객 VALUES ('orange', N'김용욱', 22, 'silver', N'학생', 0);
INSERT INTO 고객 VALUES ('melon', N'성원용', 35, 'gold', N'회사원', 5000);
INSERT INTO 고객 VALUES ('peach', N'오형준', NULL, 'silver', N'의사', 300);
INSERT INTO 고객 VALUES ('pear', N'채광주', 31, 'silver', N'회사원', 500);

INSERT INTO 제품 VALUES ('p01', N'그냥만두', 5000, 4500, N'대한식품');
INSERT INTO 제품 VALUES ('p02', N'매운쫄면', 2500, 5500, N'민국푸드');
INSERT INTO 제품 VALUES ('p03', N'쿵떡파이', 3600, 2600, N'한빛제과');
INSERT INTO 제품 VALUES ('p04', N'맛난초콜릿', 1250, 2500, N'한빛제과');
INSERT INTO 제품 VALUES ('p05', N'얼큰라면', 2200, 1200, N'대한식품');
INSERT INTO 제품 VALUES ('p06', N'통통우동', 1000, 1550, N'민국푸드');
INSERT INTO 제품 VALUES ('p07', N'달콤비스킷', 1650, 1500, N'한빛제과');

INSERT INTO 주문 VALUES ('o01', 'apple', 'p03', 10, N'서울시 마포구', '2019/01/01');
INSERT INTO 주문 VALUES ('o02', 'melon', 'p01', 5, N'인천시 계양구', '2019/01/10');
INSERT INTO 주문 VALUES ('o03', 'banana', 'p06', 45, N'경기도 부천시', '2019/01/11');
INSERT INTO 주문 VALUES ('o04', 'carrot', 'p02', 8, N'부산시 금정구', '2019/02/01');
INSERT INTO 주문 VALUES ('o05', 'melon', 'p06', 36, N'경기도 용인시', '2019/02/20');
INSERT INTO 주문 VALUES ('o06', 'banana', 'p01', 19, N'충청북도 보은군', '2019/03/02');
INSERT INTO 주문 VALUES ('o07', 'apple', 'p03', 22, N'서울시 영등포구', '2019/03/15');
INSERT INTO 주문 VALUES ('o08', 'pear', 'p02', 50, N'강원도 춘천시', '2019/04/10');
INSERT INTO 주문 VALUES ('o09', 'banana', 'p04', 15, N'전라남도 목포시', '2019/04/11');

select * from 고객  select * from 제품  select * from 주문
select * from 제품 where 제조업체 = N'한빛제과'
select * from 제품 where 제조업체 like N'한%'
select * from 제품 where 제품명 like N'__초%'

select * from 주문 where 주문고객 ='apple' and 수량 > 15
select * from 주문 where 주문고객 ='apple' or 수량 >= 15

select * from 제품 where 단가 > 2000 and 단가 < 3000

select * from 고객 where 고객이름 like N'%용'
select * from 고객 where 직업 like N'__'
select 고객이름 from 고객 where 나이 is not null  --is null
select * from 고객 where 나이 is not null
order by 나이 asc --desc

select * from 주문 where 수량 > 10
order by 주문제품 asc, 수량 desc
select * from 주문 order by 주문고객
select count(*) from 주문 
select avg(수량) as 평균 from 주문 where 주문고객 = 'banana' --수량 > 20

select sum(재고량) as 재고량합계 from 제품 where 제조업체 = N'한빛제과'

select count(distinct(제조업체)) as 업체개수 from 제품

select 주문제품, sum(수량) from 주문 group by 주문제품
select 주문고객, sum(수량) from 주문 group by 주문고객















