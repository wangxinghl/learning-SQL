/********************
-- author: wangxing
-- date: 2018.4.26
********************/


# 组合（union）查询：又叫复合查询（compound query），执行多条select语句，并将结果作为一个查询结果集返回


# 使用union
select cust_name, cust_contact, cust_email
from customers
where cust_state in ('IL', 'IN', 'MI')
union										# 会取消重复的行
select cust_name, cust_contact, cust_email
from customers
where cust_name = 'Fun4All'
order by cust_name, cust_contact;

select cust_name, cust_contact, cust_email
from customers
where cust_state in ('IL', 'IN', 'MI')
union all									# 不会取消重复的行
select cust_name, cust_contact, cust_email
from customers
where cust_name = 'Fun4All'
order by cust_name, cust_contact;

select cust_name, cust_contact, cust_email		# 使用where子句，没有使用union时简化
from customers
where cust_state in ('IL', 'IN', 'MI') or cust_name = 'Fun4All';