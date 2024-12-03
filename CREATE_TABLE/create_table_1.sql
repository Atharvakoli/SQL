/*
In SQL, the CREATE TABLE statement is used to define a new table in the database. This chapter will guide you through the process of creating tables with text and numeric columns, focusing on defining data types and basic structure.

Introduction to CREATE TABLE

The CREATE TABLE statement allows you to specify the structure of a new table, including its columns and data types. A table is essentially a collection of rows, where each row represents a record and each column represents a data attribute.

CREATE TABLE table_name (
    column_name1 data_type,
    column_name2 data_type,
    ...
);

Data Types

Text Data Types: Used to store string values.

TEXT: Variable-length text data.

VARCHAR(n): Variable-length text data with a maximum length of n characters.

Numeric Data Types: Used to store numbers.

INTEGER: A whole number.

FLOAT: A floating-point number.
*/

-- Creating Table --
/*
--  Sales Data Table
CREATE TABLE sales (
  id INTEGER,
  product_category FLOAT,
  sales_amount FLOAT,
  quantity INTEGER
);

INSERT INTO sales (id, product_category, sales_amount, quantity) VALUES
(1, "Electronics", 1500.00, 10),
(2, "Apparel", 800.00, 5);

SELECT * FROM sales
*/
/*
-- Customer Orders Table
CREATE TABLE orders (
  id INTEGER,
  customer_name TEXT,
  order_amount FLOAT,
  order_quantity INTEGER
);

INSERT INTO orders (id, customer_name, order_amount, order_quantity) VALUES
(1, "Aarav Sharma", 250.75, 3),
(2, "Isha Patel", 120.50, 2);

SELECT * FROM orders
*/
/*
-- Employee Attendance Table
CREATE TABLE attendence (
  id INTEGER,
  employee_name TEXT,
  hours_worked FLOAT
);

INSERT INTO attendence (id, employee_name, hours_worked) VALUES
(1, "Rajesh Kumar", 8.0),
(2, "Neha Singh", 7.5);

SELECT * FROM attendence

*/
/*
-- Product Inventory Table
CREATE TABLE inventory (
  id INTEGER,
  product_name TEXT,
  stock_quantity INTEGER,
  price_per_unit FLOAT
);

INSERT INTO inventory (id, product_name, stock_quantity, price_per_unit) VALUES
(1, "Washing Machine", 15, 12000.00),
(2, "Air Conditioner", 10, 25000.00);

SELECT * FROM inventory
*/
/*
-- Student Grades Table
CREATE TABLE grades (
  id INTEGER,
  student_name TEXT,
  subject TEXT,
  grade FLOAT
);

INSERT INTO grades (id, student_name, subject, grade) VALUES
(1, "Anaya Gupta", "Mathematics", 92.5),
(2, "Rohan Mehta", "Science", 88.0);

SELECT * FROM grades
*/
/*
-- Library Books Table
CREATE TABLE library_books (
  id INTEGER,
  book_name TEXT,
  author_name TEXT,
  copies_available INTEGER
);

INSERT INTO library_books (id, book_name, author_name, copies_available) VALUES
(1, "The Silent Patient", "Ravi Kapoor", 12),
(2, "The Alchemist", "Priya sharma", 7);

SELECT * FROM library_books
*/
/*
-- Product Reviews Table
CREATE TABLE product_reviews (
  id INTEGER,
  product_name TEXT,
  reviewer_name TEXT,
  rating FLOAT
);

INSERT INTO product_reviews (id, product_name, reviewer_name, rating) VALUES
(1, "Coffee Maker", "Sanjay Patel", 4.5),
(2, "Blender", "Meera Nair", 4.0);


SELECT * FROM product_reviews
*/
/*
-- Rental Properties Table
CREATE TABLE rental_properties (
  id INTEGER,
  property_name TEXT,
  location TEXT,
  rent_per_month FLOAT
);

INSERT INTO rental_properties (id, property_name, location, rent_per_month) VALUES
(1, "Green Villa", "Bangalore", 25000.00),
(2, "Blue Apartment", "Mumbai", 30000.00);

SELECT * FROM rental_properties

*/
/*
-- Restaurant Menu Table
CREATE TABLE restaurant_menu (
  id INTEGER,
  item_name TEXT,
  item_price FLOAT,
  availability TEXT
);

INSERT INTO restaurant_menu (id, item_name, item_price, availability) VALUES
(1, "Paneer Tikka", "180.00", "Available"),
(2, "Masala Dosa", 90.00, "Available");

SELECT * FROM restaurant_menu
*/

-- Workshop Registrations Table
CREATE TABLE workshop_registrations (
  id INTEGER,
  participant_name TEXT,
  workshop_topic TEXT,
  registration_fee FLOAT
);

INSERT INTO workshop_registrations (id, participant_name, workshop_topic, registration_fee) VALUES
(1, "Deepak Rao", "SQL Basics", 1500.00),
(2, "Meenal Reddy", "Python Advanced", 2000.00);

SELECT * FROM workshop_registrations



