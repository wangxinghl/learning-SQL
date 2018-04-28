/********************
-- author: wangxing
-- date: 2018.4.18
********************/


# where子句：可选子句，跟在select语句的from子句之后，order by子句之前
# where子句的作用：-- 用于指定搜索条件（search criteria），或称之为过滤条件（filter criteria）
				   -- 提供比应用程序更高的过滤效率


# where子句
select prod_name, prod_price
from products
where prod_price = 3.49;


# where子句操作符
select prod_name, prod_price
from products
where prod_price < 10;		# 小于'<', 小于等于'<='; 等于'=', 不等于'<>'或'!='; 大于'>', 大于等于'>='

select prod_name, prod_price
from products
where prod_price not between 5 and 10;		# 范围值检查between

select cust_name, cust_email
from customers
where cust_email is null;		# 空值检查 is null

select cust_name, cust_email
from customers
where cust_email is not null;		# 空值检查