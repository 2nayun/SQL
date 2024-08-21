use B_23

select * from 고객    select * from 사원1  select * from 사원

select * from 제품

alter table 고객 add 날짜 date  -- 새로운 항목 추가
alter table 고객 drop column 날짜 -- 기존 항목 제거

drop table 제품    select * from 제품

create table 제품
(
	제품번호  varchar(3) Not Null,
	제품명    nvarchar(30),
	재고량    int,
	단가      int,
	제조업체  nvarchar(20),
	primary key(제품번호),
	check (재고량 >= 0 and 재고량 <= 10000)
)

alter table 제품 drop constraint check(재고량 >= 0 and 재고량 <= 10000)
-- 제약조건 명을 기술하고 날린다.
alter table 제품 drop constraint chk_lim --제약조건 이름

create table 주문
(
	주문번호    varchar(3)  Not Null,
	주문고객    varchar(20),
	주문제품    varchar(3),
	수량		int,
	배송지      nvarchar(50),
	주문일자    date,
	primary key(주문번호),
	foreign key(주문고객) references 고객(고객아이디),
	foreign key(주문제품) references 제품(제품번호)
)

select * from 주문   drop table 주문
select * from 제품          select * from 배송업체

create table 배송업체
(
	업체번호  varchar(3) Not Null,
	업체명    nvarchar(30),
	주소      nvarchar(100),
	전화번호  varchar(20),
	primary key(업체번호)
)

create table 고객들
(
	고객번호    varchar(5) primary key,
	고객이름    nvarchar(2),
	나이        int
)
select * from 고객들

alter table 고객들 add constraint ch_age check(나이>=20)
alter table 고객들 drop constraint ch_age 

insert into 고객(고객아이디, 고객이름, 나이, 등급, 직업, 적립금)
values('apple', N'정소화', 20, 'gold', N'학생', 1000)

insert into 고객 
values('banana', N'김선우', 25, 'vip', N'간호사', 2500)