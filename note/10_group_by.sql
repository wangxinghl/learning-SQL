/********************
-- author: wangxing
-- date: 2018.4.25
********************/


# 创建分组：group by子句，where子句之后，order by子句之前
select vend_id, count(*) as num_prod
from products
group by vend_id;	# 以单列数据分组，NULL单独是一个分组

select vend_id, prod_price, count(*) as num_prod
from products
group by vend_id, prod_price;	# 以多列数据分组

select vend_id, prod_price, count(*) as num_prod
from products
group by 1, 2;	# 以相对位置指定列


# 过滤分组：having子句
			-- group by子句之后，order by子句之前
			-- 与where子句类似，但where子句用于过滤行
select cust_id, count(*) as num_order
from orders
group by cust_id
having count(*) >= 2;

select vend_id, count(*) as num_prod
from products
where prod_price >= 4
group by vend_id
having num_prod >= 2;


# 分组和排序
select order_num, count(*) as num_item
from orderitems
group by order_num
having num_item >= 3
order by num_item, order_num;

select order_num, count(*) as num_item
from orderitems
group by 1
having num_item >= 3
order by 2, order_num;


# select子句的顺序
-- ----------------------------------------------------
-- 子句				说明				是否必须使用
-- ----------------------------------------------------
-- select	 要返回的列或表达式				是
-- from			检索数据的表		从表中选择数据时使用
-- where		   行过滤					否
-- group by		  分组说明			 需要分组计算时使用
-- having		  分组过滤					否
-- order by		  排序说明					否
-- ----------------------------------------------------