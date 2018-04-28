/********************
-- author: wangxing
-- date: 2018.4.26
********************/

# 子查询（subquery）：嵌套在其它查询中的查询(query)，只能查询单个列，查询效率低（相比联结）


# 硬编码：分步查询
select order_num	# 查询1
from orderitems
where prod_id = 'RGAN01';

select cust_id		# 查询2
from orders
where order_num in (20007, 20008);

select cust_name, cust_contact		# 查询3
from customers
where cust_id in ('1000000004', '1000000005');


# 软编码：更灵活、实用
select cust_id	# 第1个查询变为子查询
from orders
where order_num in (select order_num
					from orderitems
                    where prod_id = 'RGAN01');
                    
select cust_name, cust_contact		# 第1、2个查询变为子查询
from customers
where cust_id in (select cust_id
				  from orders
                  where order_num in (select order_num
									  from orderitems
                                      where prod_id = 'RGAN01'));


# 计算字段使用子查询
select count(*) as num_ord		# 硬编码
from orders
where cust_id = '1000000001';

select cust_name,
	   cust_state,
       (select count(*) 		# 软编码
		from orders
        where orders.cust_id = customers.cust_id) as num_ord	# 不使用完全限定列名时会出错
from customers
order by cust_name;

select cust_name,
	   cust_state,
       (select count(*) 		# 软编码
		from orders
        where cust_id = cust_id) as num_ord	# 使用完全限定列名（表名.列名），否则可能引起歧义
from customers
order by cust_name;