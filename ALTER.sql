use B_23

select * from ��    select * from ���1  select * from ���

select * from ��ǰ

alter table �� add ��¥ date  -- ���ο� �׸� �߰�
alter table �� drop column ��¥ -- ���� �׸� ����

drop table ��ǰ    select * from ��ǰ

create table ��ǰ
(
	��ǰ��ȣ  varchar(3) Not Null,
	��ǰ��    nvarchar(30),
	���    int,
	�ܰ�      int,
	������ü  nvarchar(20),
	primary key(��ǰ��ȣ),
	check (��� >= 0 and ��� <= 10000)
)

alter table ��ǰ drop constraint check(��� >= 0 and ��� <= 10000)
-- �������� ���� ����ϰ� ������.
alter table ��ǰ drop constraint chk_lim --�������� �̸�

create table �ֹ�
(
	�ֹ���ȣ    varchar(3)  Not Null,
	�ֹ���    varchar(20),
	�ֹ���ǰ    varchar(3),
	����		int,
	�����      nvarchar(50),
	�ֹ�����    date,
	primary key(�ֹ���ȣ),
	foreign key(�ֹ���) references ��(�����̵�),
	foreign key(�ֹ���ǰ) references ��ǰ(��ǰ��ȣ)
)

select * from �ֹ�   drop table �ֹ�
select * from ��ǰ          select * from ��۾�ü

create table ��۾�ü
(
	��ü��ȣ  varchar(3) Not Null,
	��ü��    nvarchar(30),
	�ּ�      nvarchar(100),
	��ȭ��ȣ  varchar(20),
	primary key(��ü��ȣ)
)

create table ����
(
	����ȣ    varchar(5) primary key,
	���̸�    nvarchar(2),
	����        int
)
select * from ����

alter table ���� add constraint ch_age check(����>=20)
alter table ���� drop constraint ch_age 

insert into ��(�����̵�, ���̸�, ����, ���, ����, ������)
values('apple', N'����ȭ', 20, 'gold', N'�л�', 1000)

insert into �� 
values('banana', N'�輱��', 25, 'vip', N'��ȣ��', 2500)