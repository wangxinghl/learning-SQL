/********************
-- author: wangxing
-- date: 2018.4.24
********************/


# 拼接字段
select concat(vend_name, ' (', vend_country, ')')	# 拼接函数concat()：拼接多个字符串
from vendors
order by vend_name;

select concat(rtrim(vend_name), ' (', rtrim(vend_country), ')')		# 右裁剪函数rtrim()：去掉字符串右边的所有空格
from vendors														# 左裁剪函数ltrim()：去掉字符串左边的所有空格
order by vend_name;													# 裁剪函数trim()：去掉字符串两边的所有空格


# 使用别名（alias）：as关键字
select concat(rtrim(vend_name), ' (', rtrim(vend_country), ')') as vend_title
from vendors
order by vend_name;


# 算术计算
select prod_id, quantity, item_price, quantity * item_price as total_cost	# 算术操作符：加'+', 减'-', 乘'*', 除'/', 取模'%'
from orderitems
where order_num = 20008;


# 测试计算
select 3 * 2;
select trim('  asd  ');
select now();	# 现在的系统时间