use A_23
use [23_A]

create table ��
(
   �����̵�  varchar(20) primary key,
   ���̸�    nvarchar(50) not null,
   ����        int,
   ���        varchar(20),
   ����        nvarchar(30),
   ������      int
 )

select * from ��  select * from ��ǰ  select * from �ֹ�
drop table ��  drop table ��ǰ  drop table �ֹ�

CREATE TABLE  ��ǰ (
	��ǰ��ȣ   CHAR(3),
	��ǰ��     nVARCHAR(20),
	���     INT,
	�ܰ�       INT,
	������ü   nVARCHAR(20),
	PRIMARY KEY(��ǰ��ȣ),
);
select * from ��ǰ
drop table ��ǰ

create table �ֹ� (
�ֹ���ȣ   CHAR(3) NOT NULL,
	�ֹ���   VARCHAR(20),
	�ֹ���ǰ   CHAR(3),
	����       INT,
	�����     VARCHAR(30),
	�ֹ�����  DATE,
	PRIMARY KEY(�ֹ���ȣ)
)
select * from �ֹ�
drop table �ֹ�

create table �μ�
(
   �μ���ȣ int primary key,
   �μ��̸� nvarchar(20) not null
 )
 select * from �μ�  select * from ���
 insert into �μ� values(1, N'�λ��')
 insert into �μ� values(2, N'������')
 insert into �μ� values(3, N'ȫ����')
 drop table �μ�

 create table ���
(
   �����ȣ int primary key,
   ����̸� nvarchar(20) not null,
   �ҼӺμ� int not null, 
   foreign key(�ҼӺμ�) references �μ�(�μ���ȣ)
   on delete cascade
 )
  select * from ���
 insert into ��� values(1001, N'����ȭ', 3)
 insert into ��� values(1002, N'����', 1)
 insert into ��� values(1003, N'���', 2)
 drop table ���

 delete from ��� where �����ȣ = 1002
 delete from �μ� where �μ���ȣ = 2