CREATE DATABASE bakery;
USE bakery;

CREATE TABLE bakery_items (
item_id int,
item_name varchar(100),
category varchar(50),
price int,
quantity_available int,
is_vegan boolean,
shelf_life int,
created_on varchar(10),
ingredients varchar(100),
is_special boolean
);

CREATE TABLE ingredients(
ingredient_id int,
name varchar(100),
quantity_in_stock int,
supplier varchar(100),
cost int,
manufactured_date varchar(10),
delivery_date varchar(10),
expiry_date varchar(10),
is_organic boolean,
storage_type varchar(100)
);

CREATE TABLE customers(
customer_id int,
first_name varchar(100),
last_name varchar(100),
email varchar(100),
phone varchar(10),
address varchar(100),
city varchar(100),
registration_date varchar(100),
balance int,
isCash boolean
);

CREATE TABLE orders(
	order_id int,
    customer_id int,
    order_date varchar(10),
    pickup_date varchar(10),
    total_price int,
    payment_method varchar(40),
    instructions varchar(100),
    item_count int,
    order_status varchar(30),
    prepared_by varchar(100)
);

CREATE TABLE employees(
	employee_id int,
    first_name varchar(50),
    last_name varchar(50),
    emp_role varchar(100),
    joined_date varchar(10),
    salary long,
    phone varchar(10),
    email varchar(100),
    is_available boolean,
    experience int
);


ALTER TABLE bakery_items 
ADD calories int,
ADD allergens varchar(100),
ADD seasonal boolean,
ADD ratings double;



ALTER TABLE customers 
ADD gender VARCHAR(10),
ADD reward_points INT,
ADD referred_by VARCHAR(100),
ADD notes varchar(200);


ALTER TABLE orders 
	ADD discount DECIMAL(5,2),
	ADD estimated_ready_time TIME,
	ADD delivery_option VARCHAR(50),
	ADD staff_notes TEXT;
    

ALTER TABLE employees 
	ADD emergency_contact VARCHAR(100),
	ADD blood_group VARCHAR(5),
	ADD address TEXT,
	ADD date_of_birth DATE;
    

ALTER TABLE bakery_items 
	DROP COLUMN is_special;
    
ALTER TABLE ingredients 
	DROP COLUMN is_organic;
    
ALTER TABLE customers
	DROP COLUMN notes;
    
DESC orders;
ALTER TABLE orders 
	DROP COLUMN estimated_ready_time;

ALTER TABLE employees 
	DROP COLUMN address;


DESC bakery_items;

ALTER TABLE bakery_items
RENAME COLUMN item_name TO name,
RENAME COLUMN category TO item_type,
RENAME COLUMN price TO cost,
RENAME COLUMN quantity_available TO stock;

DESC customers;

ALTER TABLE customers
RENAME COLUMN phone TO mobile_no,
RENAME COLUMN address TO area,
RENAME COLUMN reward_points TO backUpPoints,
RENAME COLUMN referred_by TO reference_of;

desc employees;

ALTER TABLE employees 
RENAME COLUMN emp_role TO role,
RENAME COLUMN joined_date TO hire_date,
RENAME COLUMN email TO email_id,
RENAME COLUMN experience TO service;

desc ingredients;

ALTER TABLE ingredients
RENAME COLUMN name TO ingredient_name,
RENAME COLUMN quantity_in_stock TO stock,
RENAME COLUMN supplier TO manufacturer,
RENAME COLUMN cost TO price;

desc orders;

ALTER TABLE orders
RENAME COLUMN order_date TO date_ordered,
RENAME COLUMN pickup_date TO take_away_date,
RENAME COLUMN total_price TO final_amount,
RENAME COLUMN staff_notes TO additional_details;

ALTER TABLE bakery_items
MODIFY name varchar(150),
modify item_type varchar(100),
modify cost double,
modify ingredients varchar(200);

ALTER TABLE customers
modify last_name varchar(150),
modify email varchar(200),
modify area varchar(200),
modify isCash boolean;

ALTER TABLE employees
modify first_name varchar(200),
modify role varchar(200),
modify salary double,
modify is_available boolean;


ALTER TABLE ingredients 
modify ingredient_name varchar(200),
modify price double,
modify manufacturer varchar(200),
modify storage_type varchar(200);


ALTER TABLE orders
modify take_away_date varchar(100),
modify final_amount double,
modify instructions varchar(200),
modify additional_details varchar(200);
