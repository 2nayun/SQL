use A_23

select * from 부서   select * from 사원

create table 고객
(
	고객아이디  varchar(10) not null,
	고객이름    nvarchar(20) not null,
	나이        smallint, -- int
	등급        varchar(20) not null,
	직업        nvarchar(30),
	적립금      int default 0,
	primary key(고객아이디)
)
select * from 고객
drop table 고객

alter table 고객 add 날짜 date  -- 컬럼 추가
alter table 고객 drop column 날짜  -- 컬럼 삭제

alter table 고객 add constraint ch_age check(나이 >= 10) -- 제약조건추가
alter table 고객 drop constraint ch_age  -- 제약조건 삭제

create table 제품
(
	제품번호     varchar(3) not null,
	제품명       nvarchar(20),
	재고량       int,
	단가         int,
	제조업체     nvarchar(30),
	primary key(제품번호),
	check(재고량 >= 0 and 재고량 <= 10000)
)
select * from 제품

create table 주문
(
	주문번호     varchar(3) primary key,
	주문고객     varchar(10) not null,
	주문제품     varchar(3),
	수량         int,
	배송지       nvarchar(100),
	주문일자     date,
	foreign key(주문고객) references 고객(고객아이디),
	foreign key(주문제품) references 제품(제품번호)
)
select * from 주문  select * from 배송업체


create table 배송업체
(
	업체번호 varchar(3) not null,
	업체명   nvarchar(30),
	주소     nvarchar(100),
	전화번호 varchar(20),
	primary key(업체번호)
)

select * from 사원  select * from 부서  select * from 고객

insert into 고객
values('apple', N'정소화',20, 'gold', N'학생', 1000)

insert into 고객(고객아이디, 고객이름, 나이, 등급, 직업, 적립금)
values('banana', N'김선우',25, 'vip', N'간호사', 2500)

insert into 고객(고객이름, 고객아이디,적립금 , 직업, 등급, 나이 )
values(N'고명석','carrot', 4500, N'교사', 'gold', 28)

insert into 고객(고객이름, 고객아이디,  등급, 나이 )
values(N'김용욱','orange',  'gold', 28)

insert into 고객(고객이름, 고객아이디,  등급  )
values(N'성원용','melon',  'silver' )

delete from 고객

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
INSERT INTO 주문 VALUES ('o10', 'carrot', 'p03', 20, N'경기도 안양시', '2019/05/22');

select * from 고객  select * from 제품  select * from 주문

select distinct 직업 from 고객
select 직업 from 고객        

select 등급 from 고객       select distinct 등급 from 고객
select 제조업체 from 제품       select distinct 제조업체 from 제품
select 고객아이디, 고객이름, 등급 as LEVEL from 고객
