use B_23

select * from ��  select * from ��ǰ  select * from �ֹ�

select count(distinct(������ü)) as ������ü�� from ��ǰ
select distinct(������ü) from ��ǰ

select min(����) from �ֹ� group by �ֹ���ǰ --�ֹ���

select �ֹ���, max(����) 
from �ֹ� 
group by �ֹ��� having count(*) >= 2
order by ����

select ���, count(*) as ����, avg(������) as ��������� from ��
group by ��� having avg(������) >= 2000

select �ֹ���, �ֹ���ǰ, sum(����) 
from �ֹ� group by �ֹ���, �ֹ���ǰ

select ��ǰ.��ǰ��, �ֹ�.�ֹ���ǰ
from ��ǰ , �ֹ� 
where ��ǰ.��ǰ��ȣ = �ֹ�.�ֹ���ǰ and �ֹ�.�ֹ��� = 'banana'

select p.��ǰ��, o.�ֹ���ǰ
from ��ǰ p, �ֹ� o
where p.��ǰ��ȣ = o.�ֹ���ǰ and o.�ֹ��� = 'banana'

select o.�ֹ���ǰ, o.�ֹ�����,c.���
from �� c, �ֹ� o
where c.���� > 30 and  c.�����̵� = o.�ֹ���

select p.��ǰ�� 
from ��ǰ p, �ֹ� o, �� c
where c.���̸� = N'����ȭ' and c.�����̵� = o.�ֹ���
and o.�ֹ���ǰ = p.��ǰ��ȣ









