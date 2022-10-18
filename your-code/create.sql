DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;

--  CREATE CARS TABLE

CREATE TABLE cars (
VIN VARCHAR(40) UNIQUE PRIMARY KEY,
manufacturer VARCHAR(40) NOT NULL,
model VARCHAR(40) NOT NULL,
year INT,
colour VARCHAR(40) NOT NULL 
);

CREATE TABLE customers (
customer_id INT UNIQUE PRIMARY KEY,
name VARCHAR(40) NOT NULL,
phone_number VARCHAR(40) NOT NULL,
email VARCHAR(40) NOT NULL,
address VARCHAR(40) NOT NULL,
city VARCHAR(40) NOT NULL,
state VARCHAR(40) NOT NULL,
country VARCHAR(40) NOT NULL,
post_code VARCHAR(40)
);

CREATE TABLE salesperson (
staff_id INT UNIQUE PRIMARY KEY,
name VARCHAR(40) NOT NULL,
company_store VARCHAR(40) NOT NULL
);

CREATE TABLE invoices (
invoice_number INT UNIQUE PRIMARY KEY, 
date DATE,
cars VARCHAR(40),
customers INT,
salesperson INT
);

ALTER TABLE invoices 
ADD FOREIGN KEY (cars) 
REFERENCES cars(VIN) 
ON DELETE CASCADE;

ALTER TABLE invoices 
ADD FOREIGN KEY (customers) 
REFERENCES customers(customer_id) 
ON DELETE CASCADE;

ALTER TABLE invoices 
ADD FOREIGN KEY (salesperson) 
REFERENCES salesperson(staff_id) 
ON DELETE CASCADE;
