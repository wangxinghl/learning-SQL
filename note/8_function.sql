/********************
-- author: wangxing
-- date: 2018.4.24
********************/


# 每个DBMS有自己特定的函数，导致函数的可移植性差


# 数据类型转换：convert()
select cust_id, cust_name
from customers
where cust_id = convert(1000000003, char);


# 文本处理函数
select trim('   abc   ') as trimtype, ltrim('   abc   ') as ltrimtype, rtrim('   abc   ') as rtrimtype;		# 去掉字符串两边/左边/右边的空格

select vend_name, upper(vend_name) as vend_name_upcase, lower(vend_name) as vend_name_lowcase 	# 字符串转化为大/小写
from vendors;

select prod_name, substring(prod_name, 2, 3), substr(prod_name, 6, 2)	# 提取子字符串，从指定位置开始
from products;

select vend_name, left(vend_name, 1) as vend_name_left, right(vend_name, 2) as vend_left_right 	# 提取字符串左边/右边的字母（或指定长度的子字符串）
from vendors;

select vend_name, length(vend_name) as name_len		# 提取字符串长度
from vendors;

select cust_name, cust_contact
from customers
where soundex(cust_contact) = soundex('Michael Green');		# 能匹配'Michelle Green'，发音类似
-- where cust_contact = 'Michael Green';	# 不能匹配'Michelle Green'


# 日期时间处理函数
select curdate();	# 当前日期
select current_date();
select curtime();	# 当前时间
select current_time();
select now();		# 当前日期 + 时间

select order_num, order_date,
	   year(order_date) as order_year,		# 提取年
       month(order_date) as order_month,	# 提取月
       day(order_date) as order_day,		# 提取日
       hour(order_date) as order_hour,		# 提取时
       minute(order_date) as order_minute,	# 提取分
       second(order_date) as order_second	# 提取秒
from orders;


# 数值处理函数
select abs(-1) as value_abs,
       sin(1) as value_sin,
       cos(1) as value_cos,
       tan(1) as value_tan,
       exp(2) as value_exp,
       power(2, 3) as value_power,
       sqrt(4) as value_sqrt,
       pi() as value_pi;