/********************
-- author: wangxing
-- date: 2018.4.27
********************/


# 更新数据
update customers
set cust_email = 'kim@thetoystore.com'		# 更新单列
where cust_id = '1000000005';		# 更新表中的特定行

update customers
set cust_contact = 'Kim Howard', cust_email = 'kim@thetoystore.com'	# 更新多列
where cust_id = '1000000005';	# 更新表中的特定行

update custnew
set new_country = 'UK';		# 更新表中的所有行，没有where子句，一般不允许这样做

update customers
set cust_contact = (select new_contact		# 使用子查询
					from custnew
                    where new_id = '1000000007')
where cust_id = '1000000006';

update customers
set cust_email = null		# 删除某个列的值
where cust_id = '1000000005';


# 删除数据
delete from customers
where cust_id = '1000000006';	# 删除表中特定的行

delete from custnew;		# 删除表中所有的行，没有where子句，一般不允许这样做

truncate table custnew;		# 删除表中所有的行，速度更快


# 外键
insert orders(order_num, order_date, cust_id)	# 插入数据失败，原因：表orders中的cust_id列是作为外键连接到表customers的cust_id列的，而表customers中没有cust_id = '1000000009'的客户
values(20010, '2012-06-15', '1000000009');

delete from products	# 删除数据失败，原因：表orderitems中的prod_id列是作为外键连接到表products中的prod_id列的，而表orderitems中存在prod_id = 'BR01'的行，因此不允许删除表products中prod_id = 'BR01'的行
where prod_id = 'BR01';
