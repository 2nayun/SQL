use A_23

create table �׽�Ʈ
(
  id   varchar(10) primary key,
  name nvarchar(20),
  age  int
 )
drop table �׽�Ʈ
select * from �׽�Ʈ  select * from ��ǰ  select * from �ֹ�
select * from ��
insert into �׽�Ʈ values('a01', N'��浿', 25)
insert into �׽�Ʈ(id, name) values('b01', N'��浿' )

create table �Ѻ���ǰ
(
  ��ǰ��  nvarchar(20) ,
  ��� int,
  �ܰ�  int
 )
 drop table �Ѻ���ǰ   select * from �Ѻ���ǰ
 insert into �Ѻ���ǰ(��ǰ��, ���, �ܰ�) 
 select ��ǰ��, ���, �ܰ� from ��ǰ 
 where ������ü = N'�Ѻ�����' 

update �Ѻ���ǰ  set ��ǰ�� = N'��������'  where �ܰ� = 1500
update �Ѻ���ǰ  set �ܰ� = 5500 where ��ǰ�� = N'��������'

update �Ѻ���ǰ  set �ܰ� = �ܰ� * 1.3

update �ֹ� set ���� = 5 where �ֹ��� = 'apple'
update �ֹ� set ���� = 10 where �ֹ���ȣ = 'o01'

update �ֹ� set ���� = 7 where �ֹ��� 
in (select �����̵� from �� where ���̸�=N'����ȭ')

delete from �Ѻ���ǰ where ��� > 1500
delete from �Ѻ���ǰ    select * from �Ѻ���ǰ

delete �ֹ� where �ֹ��� 
in (select �����̵� from �� where ���̸�=N'����ȭ')
select * from �ֹ�

-- DDL -> View

create view �����(�����̵�, ���̸�, ����)
as
select �����̵�, ���̸�, ���� from ��
where ��� = 'vip'
with check option

select * from ����� drop view �����

select * from ��
insert into ��(�����̵�, ���̸�,����, ���)
values ('mouse', N'���콺', 30, 'vip')

insert into ����� values ('cycle', N'������', 29)

select * from ��ǰ   select * from ��ü����ǰ��
create view ��ü����ǰ��(������ü, ��ǰ��)
as
select ������ü, count(*) from ��ǰ
group by ������ü
with check option

