use B_23

select * from 绊按  select * from 力前  select * from 林巩

select count(distinct(力炼诀眉)) as 力炼诀眉荐 from 力前
select distinct(力炼诀眉) from 力前

select min(荐樊) from 林巩 group by 林巩力前 --林巩绊按

select 林巩绊按, max(荐樊) 
from 林巩 
group by 林巩绊按 having count(*) >= 2
order by 荐樊

select 殿鞭, count(*) as 绊按荐, avg(利赋陛) as 利赋陛乞闭 from 绊按
group by 殿鞭 having avg(利赋陛) >= 2000

select 林巩绊按, 林巩力前, sum(荐樊) 
from 林巩 group by 林巩绊按, 林巩力前

select 力前.力前疙, 林巩.林巩力前
from 力前 , 林巩 
where 力前.力前锅龋 = 林巩.林巩力前 and 林巩.林巩绊按 = 'banana'

select p.力前疙, o.林巩力前
from 力前 p, 林巩 o
where p.力前锅龋 = o.林巩力前 and o.林巩绊按 = 'banana'

select o.林巩力前, o.林巩老磊,c.殿鞭
from 绊按 c, 林巩 o
where c.唱捞 > 30 and  c.绊按酒捞叼 = o.林巩绊按

select p.力前疙 
from 力前 p, 林巩 o, 绊按 c
where c.绊按捞抚 = N'沥家拳' and c.绊按酒捞叼 = o.林巩绊按
and o.林巩力前 = p.力前锅龋









