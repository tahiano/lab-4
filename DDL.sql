CREATE DATABASE SHOP

USE SHOP;

create table customer(
customer_id int not null,
customer_name varchar(225) not null,
city varchar(225) not null,
PRIMARY KEY (customer_id)
);


create table `order`(
order_id int not null,
order_date DATETIME not null,
customer_id int not null,
PRIMARY KEY (order_id),
FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

create table item(
item_id int not null,
unit_price DECIMAL(7,2) not null,
PRIMARY KEY (item_id)
);

create table order_item(
order_id int not null,
item_id int not null,
quantity int not null,
PRIMARY KEY (order_id,item_id),
FOREIGN KEY (order_id) REFERENCES order1(order_id) ON DELETE CASCADE,
FOREIGN KEY (item_id) REFERENCES item(item_id) ON DELETE CASCADE
);

create table warehouse(
warehouse_id int not null,
warehouse_city varchar(255) not null,
PRIMARY KEY (warehouse_id)
);

create table shipment(
order_id int not null,
warehouse_id int not null,
ship_date DATETIME not null,
PRIMARY KEY (order_id,warehouse_id),
FOREIGN KEY (order_id) REFERENCES order1(order_id) ON DELETE CASCADE,
FOREIGN KEY (warehouse_id) REFERENCES warehouse(warehouse_id) ON DELETE CASCADE
);





ALTER TABLE BOOK ADD FOREIGN KEY (pub_id) REFERENCES PUBLISHER(pub_id) ON DELETE SET NULL;
ALTER TABLE BOOK ADD FOREIGN KEY (category_id) REFERENCES CATEGORY(category_id) ON DELETE CASCADE;
