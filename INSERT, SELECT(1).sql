use A_23

select * from �μ�   select * from ���

create table ��
(
	�����̵�  varchar(10) not null,
	���̸�    nvarchar(20) not null,
	����        smallint, -- int
	���        varchar(20) not null,
	����        nvarchar(30),
	������      int default 0,
	primary key(�����̵�)
)
select * from ��
drop table ��

alter table �� add ��¥ date  -- �÷� �߰�
alter table �� drop column ��¥  -- �÷� ����

alter table �� add constraint ch_age check(���� >= 10) -- ���������߰�
alter table �� drop constraint ch_age  -- �������� ����

create table ��ǰ
(
	��ǰ��ȣ     varchar(3) not null,
	��ǰ��       nvarchar(20),
	���       int,
	�ܰ�         int,
	������ü     nvarchar(30),
	primary key(��ǰ��ȣ),
	check(��� >= 0 and ��� <= 10000)
)
select * from ��ǰ

create table �ֹ�
(
	�ֹ���ȣ     varchar(3) primary key,
	�ֹ���     varchar(10) not null,
	�ֹ���ǰ     varchar(3),
	����         int,
	�����       nvarchar(100),
	�ֹ�����     date,
	foreign key(�ֹ���) references ��(�����̵�),
	foreign key(�ֹ���ǰ) references ��ǰ(��ǰ��ȣ)
)
select * from �ֹ�  select * from ��۾�ü


create table ��۾�ü
(
	��ü��ȣ varchar(3) not null,
	��ü��   nvarchar(30),
	�ּ�     nvarchar(100),
	��ȭ��ȣ varchar(20),
	primary key(��ü��ȣ)
)

select * from ���  select * from �μ�  select * from ��

insert into ��
values('apple', N'����ȭ',20, 'gold', N'�л�', 1000)

insert into ��(�����̵�, ���̸�, ����, ���, ����, ������)
values('banana', N'�輱��',25, 'vip', N'��ȣ��', 2500)

insert into ��(���̸�, �����̵�,������ , ����, ���, ���� )
values(N'���','carrot', 4500, N'����', 'gold', 28)

insert into ��(���̸�, �����̵�,  ���, ���� )
values(N'����','orange',  'gold', 28)

insert into ��(���̸�, �����̵�,  ���  )
values(N'������','melon',  'silver' )

delete from ��

INSERT INTO �� VALUES ('apple', N'����ȭ', 20, 'gold', N'�л�', 1000);
INSERT INTO �� VALUES ('banana', N'�輱��', 25, 'vip', N'��ȣ��', 2500);
INSERT INTO �� VALUES ('carrot', N'���', 28, 'gold', N'����', 4500);
INSERT INTO �� VALUES ('orange', N'����', 22, 'silver', N'�л�', 0);
INSERT INTO �� VALUES ('melon', N'������', 35, 'gold', N'ȸ���', 5000);
INSERT INTO �� VALUES ('peach', N'������', NULL, 'silver', N'�ǻ�', 300);
INSERT INTO �� VALUES ('pear', N'ä����', 31, 'silver', N'ȸ���', 500);


INSERT INTO ��ǰ VALUES ('p01', N'�׳ɸ���', 5000, 4500, N'���ѽ�ǰ');
INSERT INTO ��ǰ VALUES ('p02', N'�ſ��̸�', 2500, 5500, N'�α�Ǫ��');
INSERT INTO ��ǰ VALUES ('p03', N'��������', 3600, 2600, N'�Ѻ�����');
INSERT INTO ��ǰ VALUES ('p04', N'�������ݸ�', 1250, 2500, N'�Ѻ�����');
INSERT INTO ��ǰ VALUES ('p05', N'��ū���', 2200, 1200, N'���ѽ�ǰ');
INSERT INTO ��ǰ VALUES ('p06', N'����쵿', 1000, 1550, N'�α�Ǫ��');
INSERT INTO ��ǰ VALUES ('p07', N'���޺�Ŷ', 1650, 1500, N'�Ѻ�����');


INSERT INTO �ֹ� VALUES ('o01', 'apple', 'p03', 10, N'����� ������', '2019/01/01');
INSERT INTO �ֹ� VALUES ('o02', 'melon', 'p01', 5, N'��õ�� ��籸', '2019/01/10');
INSERT INTO �ֹ� VALUES ('o03', 'banana', 'p06', 45, N'��⵵ ��õ��', '2019/01/11');
INSERT INTO �ֹ� VALUES ('o04', 'carrot', 'p02', 8, N'�λ�� ������', '2019/02/01');
INSERT INTO �ֹ� VALUES ('o05', 'melon', 'p06', 36, N'��⵵ ���ν�', '2019/02/20');
INSERT INTO �ֹ� VALUES ('o06', 'banana', 'p01', 19, N'��û�ϵ� ������', '2019/03/02');
INSERT INTO �ֹ� VALUES ('o07', 'apple', 'p03', 22, N'����� ��������', '2019/03/15');
INSERT INTO �ֹ� VALUES ('o08', 'pear', 'p02', 50, N'������ ��õ��', '2019/04/10');
INSERT INTO �ֹ� VALUES ('o09', 'banana', 'p04', 15, N'���󳲵� ������', '2019/04/11');
INSERT INTO �ֹ� VALUES ('o10', 'carrot', 'p03', 20, N'��⵵ �Ⱦ��', '2019/05/22');

select * from ��  select * from ��ǰ  select * from �ֹ�

select distinct ���� from ��
select ���� from ��        

select ��� from ��       select distinct ��� from ��
select ������ü from ��ǰ       select distinct ������ü from ��ǰ
select �����̵�, ���̸�, ��� as LEVEL from ��
