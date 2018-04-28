/********************
-- author: wangxing
-- date: 2018.4.18
********************/


# 关键字（keyword）：SQL组成部分的保留字，不能用作表名、列名
# SQL（Structured Query Language）：全称为“结构化查询语言”，一种计算机语言，而非一个应用程序
# SQL语言：-- 1、以';'结尾
		   -- 2、不区分大小写，习惯将关键字大写，其它小写
           -- 3、空格和换行均会被忽略，一条SQL语句可写在多行
           -- 4、一般返回原始的、无格式的数据


# 基本检索：select语句，得到未排序的数据
select prod_name	# 检索单列数据
from products;

select prod_id, prod_name, prod_price	# 检索多列数据，列间用','隔开
from products;

select *	# 检索所有列的数据，'*'为通配符；通常不使用通配符，会降低检索和应用程序的性能
from products;


# 检索不同的值
select distinct vend_id		# 作用于单列数据，不加distinct时默认为all
from products;

select distinct vend_id, prod_price		# 作用于多列数据
from products;


# 限制检索结果
select prod_name
from products
limit 5;	# 只显示前5行数据

select prod_name
from products
limit 3 offset 2;	# 只显示第2行开始的前3行数据，其中行的其实编号为0

select prod_name
from products
limit 2, 3;		# 只显示第2行开始的前3行数据


# 注释
select prod_name	-- 注释单行
from products;

select prod_name	# 注释单行
from products;

/* 注释多行
   注释多行 */
select prod_name
from products;