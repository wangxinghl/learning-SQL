-- ------------------
-- author: wangxing
-- date: 2018.4.17
-- ------------------

-- -----------------------
-- Create Customers Table
-- -----------------------
create table Customers
(
	cust_id			char(10)	not null,
    cust_name		char(50)	not null,
	cust_address	char(50)	null,
    cust_city		char(50)	null,
    cust_state		char(5)		null,
    cust_zip		char(10)	null,
    cust_country	char(50)	null,
    cust_contact	char(50)	null,
    cust_email		char(255)	null
);

-- -----------------------
-- Create OrderItems Table
-- -----------------------
create table OrderItems
(
	order_num 	int			not null,
    order_item	int			not null,
    prod_id		char(10)	not null,
    quantity	int			not null,
    item_price decimal(8,2)	not null
);

-- -----------------------
-- Create Oders Table
-- -----------------------
create table Orders
(
	order_num	int			not null,
    order_date	datetime	not null,
    cust_id		char(10)	not null
);

-- -----------------------
-- Create Products Table
-- -----------------------
create table Products
(
	prod_id		char(10)		not null,
    vend_id		char(10)		not null,
    prod_name	char(255)		not null,
    prod_price	decimal(8,2)	not null,
    prod_desc	text			null
);

-- -----------------------
-- Create Vendors Table
-- -----------------------
create table Vendors
(
	vend_id			char(10)	not null,
    vend_name		char(50)	not null,
    vend_address	char(50)	null,
    vend_city		char(50)	null,
    vend_state		char(5)		null,
    vend_zip		char(10)	null,
    vend_country	char(50)	null
);


-- --------------------
-- Define primary keys
-- --------------------
alter table Customers add primary key(cust_id);
alter table OrderItems add primary key(order_num, order_item);
alter table Orders add primary key(order_num);
alter table Products add primary key(prod_id);
alter table Vendors add primary key(vend_id);

-- --------------------
-- Define foreign keys
-- --------------------
alter table OrderItems add constraint FK_OrderItems_Orders foreign key(order_num) references Orders(order_num);
alter table OrderItems add constraint FK_OrderItems_Products foreign key(prod_id) references Products(prod_id);
alter table Orders add constraint FK_Orders_Customers foreign key(cust_id) references Customers(cust_id);
alter table Products add constraint FK_Products_Vendors foreign key(vend_id) references Vendors(vend_id);


























