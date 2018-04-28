/********************
-- author: wangxing
-- date: 2018.4.25
********************/


# 聚集函数(aggregate function)：对某些行运行的函数，计算并返回一个值
select avg(prod_price) as avg_price		# 求平均值，只能用于单列，忽略NULL值
from products
where vend_id = 'DLL01';

select count(*) as num_cust		# 统计表中行的数目，不忽略NULL值
from customers;

select count(cust_email) as num_cust	# 统计表中特定列的行数目，忽略NULL值
from customers;

select max(prod_price) as max_price, min(prod_price) as min_price	# 最大/小值，均忽略NULL值
from products;

select sum(quantity) as num_item, sum(item_price * quantity) as total_price		# 求和，忽略NULL值
from orderitems
where order_num = 20005;


# 聚集不同值
select avg(distinct prod_price) as avg_price	# 求不同价格的平均值，默认为all，求所有价格的平均值。distance不能用于count(*)
from products
where vend_id = 'DLL01';


# 组合聚集函数
select count(*) as num_items,
	   max(prod_price) as max_price,
       min(prod_price) as min_price,
       avg(prod_price) as avg_price
from products;