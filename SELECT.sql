use B_23

select * from �� select * from ��ǰ select * from �ֹ�

select * from ��ǰ where ������ü  = N'�Ѻ�����'

select * from ��ǰ where ������ü = 
 (select ������ü from ��ǰ where ��ǰ�� = N'���޺�Ŷ')

select ���̸�, ������ from �� where ������ >= 5000
where ���̸� = N'������'
group by ���̸�

select ���̸�, ������ from �� where ������ 
= (select max(������) from ��) 

select * from �ֹ�   select * from ��ǰ  
select ��ǰ��, ������ü from ��ǰ where ��ǰ��ȣ in('p01', 'p04','p06')

select ��ǰ��, ������ü from ��ǰ where ��ǰ��ȣ
not in (select �ֹ���ǰ from �ֹ� where �ֹ��� = 'banana')

select ��ǰ��, ������ü, �ܰ� from ��ǰ where �ܰ� > all
(select �ܰ� from ��ǰ where ������ü = N'���ѽ�ǰ')

select ��ǰ��, ������ü, �ܰ� from ��ǰ where �ܰ� >
(select max(�ܰ�) from ��ǰ where ������ü = N'���ѽ�ǰ')

select c.���̸�, c.������ from �� c, �ֹ� o
where o.�ֹ����� = '2019-03-15' and o.�ֹ��� = c.�����̵� 

select ���̸�, ������ from �� 
where exists (select * from �ֹ�  where �ֹ�.�ֹ����� = '2019-03-15' and �ֹ�.�ֹ��� = ��.�����̵�)

select ���̸�, ������ from �� 
where not exists (select * from �ֹ�  where �ֹ�.�ֹ����� = '2019-03-15' and �ֹ�.�ֹ��� = ��.�����̵�)

select p.��ǰ��, p.������ü from ��ǰ p, �ֹ� o
where p.��ǰ��ȣ = o.�ֹ���ǰ and o.�ֹ��� = 'banana'

select ��ǰ��, ������ü from ��ǰ where ��ǰ��ȣ
in (select �ֹ���ǰ from �ֹ� where �ֹ��� = 'banana')

select ��ǰ��, ������ü from ��ǰ where 
exists 
(select * from �ֹ� where ��ǰ.��ǰ��ȣ = �ֹ�.�ֹ���ǰ 
and �ֹ�.�ֹ��� = 'banana')

select ��ǰ��, ������ü from ��ǰ where ��ǰ��ȣ
not in (select �ֹ���ǰ from �ֹ� where �ֹ��� = 'banana')

select * from �μ�1  select * from ����
                     drop table ����
insert into �μ�1 values (5, N'������' )

insert into �μ�1(�μ���ȣ) values (7)

insert into ��(�����̵�, ���̸�, ���, ����, ������)
values('pppp', N'��浿', 'vip', N'ȸ���', 2000)