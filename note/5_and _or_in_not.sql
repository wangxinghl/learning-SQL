/********************
-- author: wangxing
-- date: 2018.4.18
********************/


# 逻辑操作符： and && or
select prod_id, prod_price, prod_name
from products
where vend_id = 'DLL01' and prod_price <= 4;	# and操作符

select prod_name, prod_price
from products
where vend_id = 'DLL01' or vend_id = 'BRS01';	# or操作符

select prod_name, prod_price
from products
where vend_id = ('DLL01' or vend_id = 'BRS01') and prod_price >= 10;	# 混合使用，最好加括号确定求职顺序。否则先计算and，再计算or，容易出错


# IN操作符
select prod_name, prod_price
from products
where vend_id in ('DLL01', 'BRS01');	# 也可以使用or操作符，但in操作符执行得更快，并且可包含其他select语句


# NOT操作符
select prod_name
from products
where not vend_id = 'DLL01'
order by prod_name;

select prod_name
from products
where vend_id <> 'DLL01'
order by prod_name;