/********************
-- author: wangxing
-- date: 2018.4.18
********************/


# 子句：有可选的、必需的，通常由‘关键字+数据’组成
# order by子句：可选子句，必须是select语句的最后一条子句


# 按列名排序
select prod_name
from products
order by prod_name;		# 按单列排序

select prod_id, prod_price, prod_name
from products
order by prod_price, prod_name;		# 按多列排序，先按prod_price排序，再按prod_name排序


# 按列位置排序
select prod_id, prod_price, prod_name
from products
order by 2, 3;		# 先按第2列（prod_price）排序，再按第3列（prod_name）排序

select prod_id, prod_price, prod_name
from products
order by 2, prod_name;		# 按列名和列位置排序可以混用


# 指定排序方向
select prod_id, prod_price, prod_name
from products
order by prod_price desc;	# 降序排序，不使用desc时默认升序排序(ASC或ascending)

select prod_id, prod_price, prod_name
from products
order by prod_price desc, prod_name;	# prod_price降序排序，prod_name升序排序, desc只作用于其前面的列

select prod_id, prod_price, prod_name
from products
order by prod_price desc, prod_name desc;	# prod_price和prod_name均降序排序