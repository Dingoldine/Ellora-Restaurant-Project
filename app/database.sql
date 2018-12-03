use ellora; # Byt till din egen

drop table if exists tables; # Radera om redan finns
drop table if exists orders;
drop table if exists items;
drop table if exists reservations;
drop table if exists customers;

#Table that can be booked
create table tables (
	id int NOT NULL AUTO_INCREMENT,
       size int,
	PRIMARY KEY (id)
);

#An order by a customer 
create table orders (
	id int NOT NULL AUTO_INCREMENT,
       customerID int,      #Foreign key, connecting customer
       amount float,
	PRIMARY KEY (id),
       FOREIGN KEY (customerID) REFERENCES customers(id),
);

#Dishes for sale
create table orderItems (
       id int NOT NULL AUTO_INCREMENT,
       quantity int,
       item_id int, #Foreign key, connecting item
       order_id int, #Foreign key, connecting orders
       FOREIGN KEY (item_id) REFERENCES items(id),
       FOREIGN KEY (order_id) REFERENCES orders(id),  
       PRIMARY KEY (id)
);


#Dishes for sale
create table items (
       id int NOT NULL AUTO_INCREMENT,
       name varchar(64),
       price float,
       description varchar(64),
       type varchar(64),
       PRIMARY KEY (id)
);

#A reservation by a customer
create table reservations(
	id int NOT NULL AUTO_INCREMENT,
       table_id int,       #Foreign key, connecting table
       arrival datetime,
       departure datetime,
       customer_id int,  #Foreign key, connecting customer
	PRIMARY KEY (id),
       FOREIGN KEY (customerID) REFERENCES customers(id),
       FOREIGN KEY (table) REFERENCES tables(id)
);

#A customer
create table customers (
       id int NOT NULL AUTO_INCREMENT,
       name varchar(64),
       email varchar(64),
       PRIMARY KEY (id)
);

create table reviews (
       id int NOT NULL AUTO_INCREMENT,
       name varchar(64),
       email varchar(64)
       stars int NOT NULL,
       dt datetime,
       review varchar(1000),
       PRIMARY KEY (id)
};