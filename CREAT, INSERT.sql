use A_23
use [23_A]

create table 고객
(
   고객아이디  varchar(20) primary key,
   고객이름    nvarchar(50) not null,
   나이        int,
   등급        varchar(20),
   직업        nvarchar(30),
   적립금      int
 )

select * from 고객  select * from 제품  select * from 주문
drop table 고객  drop table 제품  drop table 주문

CREATE TABLE  제품 (
	제품번호   CHAR(3),
	제품명     nVARCHAR(20),
	재고량     INT,
	단가       INT,
	제조업체   nVARCHAR(20),
	PRIMARY KEY(제품번호),
);
select * from 제품
drop table 제품

create table 주문 (
주문번호   CHAR(3) NOT NULL,
	주문고객   VARCHAR(20),
	주문제품   CHAR(3),
	수량       INT,
	배송지     VARCHAR(30),
	주문일자  DATE,
	PRIMARY KEY(주문번호)
)
select * from 주문
drop table 주문

create table 부서
(
   부서번호 int primary key,
   부서이름 nvarchar(20) not null
 )
 select * from 부서  select * from 사원
 insert into 부서 values(1, N'인사부')
 insert into 부서 values(2, N'연구부')
 insert into 부서 values(3, N'홍보부')
 drop table 부서

 create table 사원
(
   사원번호 int primary key,
   사원이름 nvarchar(20) not null,
   소속부서 int not null, 
   foreign key(소속부서) references 부서(부서번호)
   on delete cascade
 )
  select * from 사원
 insert into 사원 values(1001, N'정소화', 3)
 insert into 사원 values(1002, N'김용욱', 1)
 insert into 사원 values(1003, N'고명석', 2)
 drop table 사원

 delete from 사원 where 사원번호 = 1002
 delete from 부서 where 부서번호 = 2