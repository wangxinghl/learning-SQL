/********************
-- author: wangxing
-- date: 2018.4.20
********************/


# 通配符（wildcard）：用来匹配值的一部分，尽量不放在搜索模式的开始处
# 谓词（predicate）：like是谓词，不是操作符


# '%'通配符：可匹配多个字符，包括0个；%不匹配NULL
select prod_id, prod_name
from products
where prod_name like 'Fish%';

select prod_id, prod_name
from products
where prod_name like '%bean bag%';

select prod_id, prod_name
from products
where prod_name like 'F%y';


# '_'通配符：只匹配单个字符
select prod_id, prod_name
from products
where prod_name like '__ inch teddy bear';

select prod_id, prod_name
from products
where prod_name like '% inch teddy bear';