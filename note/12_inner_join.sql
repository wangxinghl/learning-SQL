/********************
-- author: wangxing
-- date: 2018.4.26
********************/


# 联结：是一种机制，在一条select语句中关联多个表，返回一组数据


# 创建联结
select vend_name, prod_name, prod_price
from vendors, products
where vendors.vend_id = products.vend_id;	# 等值联结（equijoin）

select vend_name, prod_name, prod_price
from vendors, products;		# 应该总是提供联结条件，否则将返回笛卡尔积(cartesian product)；返回笛卡尔积的连接也称叉联结（cross join）


# 内联结（inner join）：等值联结也称为内联结
select vend_name, prod_name, prod_price		
from vendors inner join products			# 标准格式
on vendors.vend_id = products.vend_id;

select vend_name, prod_name, prod_price		# 简单格式
from vendors, products
where vendors.vend_id = products.vend_id;


# 联结多个表
select prod_name, vend_name, prod_price, quantity		# 简单格式
from orderitems, products, vendors
where products.vend_id = vendors.vend_id and orderitems.prod_id = products.prod_id and order_num = '20007';

select prod_name, vend_name, prod_price, quantity		# 标准格式
from orderitems inner join products inner join vendors
on products.vend_id = vendors.vend_id and orderitems.prod_id = products.prod_id and order_num = '20007';


# 内联结与子查询
select cust_name, cust_contact		# 内联结
from customers, orders, orderitems
where customers.cust_id = orders.cust_id and orderitems.order_num = orders.order_num and prod_id = 'RGAN01';

select cust_name, cust_contact		# 子查询
from customers
where cust_id in (select cust_id
				  from orders
                  where order_num in (select order_num
									  from orderitems
                                      where prod_id = 'RGAN01'));