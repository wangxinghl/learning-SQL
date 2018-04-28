/********************
-- author: wangxing
-- date: 2018.4.27
********************/


# 插入完整的行
insert into customers	# 没有指定列名，依赖表中列的定义次序，简单但不安全
values('1000000006', 'Toy Land', '123 Any Street', 'New York', 'NY', '11111', 'USA', NULL, NULL);

# delete from customers
# where cust_id = '1000000006';
insert into customers(cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country, cust_contact, cust_email)	# 指定列名，繁琐但更安全
values('1000000006', 'Toy Land', '123 Any Street', 'New York', 'NY', '11111', 'USA', NULL, NULL);

# delete from customers
# where cust_id = '1000000006';
insert into customers(cust_id, cust_contact, cust_email, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country)	# 指定列名，不依赖表中列的定义次序，繁琐但更安全
values('1000000006', NULL, NULL, 'Toy Land', '123 Any Street', 'New York', 'NY', '11111', 'USA');


# 插入部分行
# delete from customers
# where cust_id = '1000000006';
insert into customers(cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country)	# 省略了cust_contact和cust_email，以及对应的值
values('1000000006', 'Toy Land', '123 Any Street', 'New York', 'NY', '11111', 'USA');


# Create CustNew table
CREATE TABLE CustNew
(
  new_id      char(10)  NOT NULL ,
  new_name    char(50)  NOT NULL ,
  new_addr	  char(50)  NULL ,
  new_city    char(50)  NULL ,
  new_state   char(5)   NULL ,
  new_zip     char(10)  NULL ,
  new_country char(50)  NULL ,
  new_contact char(50)  NULL ,
  new_email   char(255) NULL 
);
ALTER TABLE CustNew ADD PRIMARY KEY (new_id);	# 添加主键
INSERT INTO CustNew(new_id, new_name, new_addr, new_city, new_state, new_zip, new_country, new_contact, new_email)		# Populate CustNew table
VALUES('1000000007', 'Country Toys', '555 Lake Stree', 'NewYork', 'NY', '11111', 'USA', 'Jack Smith', 'jack@counytrtoys.com');
INSERT INTO CustNew(new_id, new_name, new_addr, new_city, new_state, new_zip, new_country, new_contact, new_email)
VALUES('1000000008', 'Child Heaven', '325 North Stree', 'Chicago', 'IL', '54545', 'USA', 'Jim Green', 'jim@childheaven.com');


# 插入检索出的数据：inset select语句
insert into customers(cust_id, cust_contact, cust_email, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country)	# 表customers和表custnew均已存在
select new_id, new_contact, new_email, new_name, new_addr, new_city, new_state, new_zip, new_country	# 列名可以不一样
from custnew;


# 将一个表复制到另一个全新的表
create table custcopy as	# 表custcopy不存在
select * from customers;

/*select *		# 标准的SQL语句：select into
into custcopy	# 表custcopy不存在
from customers;*/