/********************
-- author: wangxing
-- date: 2018.4.26
********************/


# 表别名
select cust_name, cust_contact
from customers as c, orders as o, orderitems as oi
where c.cust_id = o.cust_id and oi.order_num = o.order_num and prod_id = 'RGAN01';


# 自连接（self-join）：比子查询的效率高
select c1.cust_id, c1.cust_name, c1.cust_contact
from customers as c1, customers as c2
where c1.cust_name = c2.cust_name and c2.cust_contact = 'Jim Jones';

select cust_id, cust_name, cust_contact		# 子查询
from customers
where cust_name = (select cust_name
				   from customers
                   where cust_contact = 'Jim Jones');


# 自然联结（natural join）：使相同的列只出现一次
select c.*, o.order_num, o.order_date, oi.prod_id, oi.quantity, oi.item_price
from customers as c, orders as o, orderitems as oi
where c.cust_id = o.cust_id and oi.order_num = o.order_num and prod_id = 'RGAN01';


# 外联结（outer join）：包含在相关表中没有关联行的行
select customers.cust_id, orders.order_num		# 左外联结
from customers left outer join orders
on customers.cust_id = orders.cust_id;

select customers.cust_id, orders.order_num		# 右外联结
from customers right outer join orders
on customers.cust_id = orders.cust_id; 

select customers.cust_id, orders.order_num		# 内联结
from customers inner join orders
on customers.cust_id = orders.cust_id; 


# 使用聚集函数的联结
select customers.cust_id, count(orders.order_num) as num_prd
from customers inner join orders
on customers.cust_id = orders.cust_id
group by customers.cust_id;

select customers.cust_id, count(orders.order_num) as num_prd
from customers left outer join orders
on customers.cust_id = orders.cust_id
group by customers.cust_id;