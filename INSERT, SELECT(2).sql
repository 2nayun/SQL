use B_23

select * from ��  select * from ��ǰ  select * from �ֹ�

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

select * from ��  select * from ��ǰ  select * from �ֹ�
select * from ��ǰ where ������ü = N'�Ѻ�����'
select * from ��ǰ where ������ü like N'��%'
select * from ��ǰ where ��ǰ�� like N'__��%'

select * from �ֹ� where �ֹ��� ='apple' and ���� > 15
select * from �ֹ� where �ֹ��� ='apple' or ���� >= 15

select * from ��ǰ where �ܰ� > 2000 and �ܰ� < 3000

select * from �� where ���̸� like N'%��'
select * from �� where ���� like N'__'
select ���̸� from �� where ���� is not null  --is null
select * from �� where ���� is not null
order by ���� asc --desc

select * from �ֹ� where ���� > 10
order by �ֹ���ǰ asc, ���� desc
select * from �ֹ� order by �ֹ���
select count(*) from �ֹ� 
select avg(����) as ��� from �ֹ� where �ֹ��� = 'banana' --���� > 20

select sum(���) as ����հ� from ��ǰ where ������ü = N'�Ѻ�����'

select count(distinct(������ü)) as ��ü���� from ��ǰ

select �ֹ���ǰ, sum(����) from �ֹ� group by �ֹ���ǰ
select �ֹ���, sum(����) from �ֹ� group by �ֹ���















