/*
Understanding Primary Keys and Constraints in SQL

In relational databases, it's essential to manage data in a structured way, ensuring that the data is unique, valid, and well-organized. Two key concepts that help achieve this are Primary Keys and Constraints.

Primary Keys

A Primary Key is a column (or a combination of columns) that uniquely identifies each row in a table. This ensures that no two rows can have the same value in the primary key column, helping maintain data integrity. In addition to being unique, a primary key cannot have NULL values, meaning that each row must have a value in this column.

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

In this case, the id column is the primary key, meaning each student will have a unique id number.

Constraints

Constraints are rules applied to columns that enforce the validity of the data being inserted. Some common constraints include:

NOT NULL: Ensures that a column cannot have a NULL value.

UNIQUE: Ensures all values in a column are unique across the table.

CHECK: Verifies that the value satisfies a given condition.

DEFAULT: Assigns a default value if no value is provided during insertion.


CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    price FLOAT CHECK (price > 0)
);

In this example:

id is the primary key and will have unique values for each product.

product_name cannot be NULL, ensuring that every product has a name.

price must be a positive number (greater than 0), enforced by the CHECK constraint.

Why Are These Important?

Primary keys and constraints are crucial for maintaining the accuracy and reliability of data. They prevent incorrect or duplicate data from being inserted into the database, ensuring that the data remains valid and consistent over time.

By practicing with primary keys and constraints, you will learn how to design robust database tables that can manage real-world data efficiently.

*/


/*
CREATE TABLE employees (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  employee_name TEXT NOT NULL,
  department TEXT NOT NULL,
  salary FLOAT CHECK (salary > 0)
);

INSERT INTO employees (id, employee_name, department, salary) VALUES
(1, "Aman Mahra", "HR", 50000.00),
(2, "Shreya", "Marketing", 60000.00);

SELECT * FROM employees
*/

/*
-- Products Table
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_name VARCHAR(255) NOT NULL,
  price FLOAT CHECK (price > 0),
  stock_quantity INTEGER CHECK (stock_quantity > 1)
);

INSERT INTO products (id, product_name, price, stock_quantity) VALUES
(1, "Laptop", 55000.00, 10),
(2, "Mobile Phone", 15000.00, 20);

SELECT * FROM products;
*/
/*
-- Students Table
CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  student_name TEXT NOT NULL,
  course TEXT NOT NULL,
  fees_paid FLOAT CHECK (fees_paid >= 0)
);

INSERT INTO students (id, student_name, course, fees_paid) VALUES
(1, "Rajesh Iyer", "SQL", "12000.00"),
(2, "Anjali Sharma", "Python", "15000.00");


SELECT * FROM students
*/
/*
-- Vehicle Rentals Table
CREATE TABLE vehicle_rentals (  
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  vehicle_name TEXT NOT NULL,
  rental_price_per_day FLOAT CHECK (rental_price_per_day > 0),
  availibility_status TEXT NOT NULL
);

INSERT INTO vehicle_rentals (id, vehicle_name, rental_price_per_day, availibility_status) VALUES
(1, "Swift_Dzire", 1500.00, "Available"),
(2, "Honda City", 2000.00, "Not Available");

SELECT * FROM vehicle_rentals
*/

/*
-- Orders Table
CREATE TABLE orders (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  customer_name TEXT NOT NULL,
  total_amount FLOAT CHECK (total_amount > 0)
);

INSERT INTO orders (id, customer_name, total_amount) VALUES
(1, "Rakesh Verma", 7500.00),
(2, "Neha Singh", 5500.00);

SELECT * FROM orders
*/
/*
-- Customers Table
CREATE TABLE customers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  customer_name TEXT NOT NULL,
  email TEXT UNIQUE,
  balance FLOAT CHECK (balance >= 0)
);

INSERT INTO customers (id, customer_name, email, balance) VALUES
(1, "Karan Kapoor", "karan@example.com", 1000.00),
(2, "Priya Nair","priya@example.com",500.00);

SELECT * FROM customers
*/
/*
-- Books Table 
CREATE TABLE books (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  book_title TEXT NOT NULL,
  author TEXT NOT NULL,
  price FLOAT CHECK (price > 0)
);

INSERT INTO books (id, book_title, author, price) VALUES
(1, "The Alchemist", "Paul Coelho", 499.00),
(2, "The Guide", "R.K Narayan", 350.00);

SELECT * FROM books
*/
/*
-- Hotels Table
CREATE TABLE hotels (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  hotel_name TEXT NOT NULL,
  city TEXT NOT NULL,
  room_price FLOAT CHECK (room_price > 0)
);

INSERT INTO hotels (id, hotel_name, city, room_price) VALUES
(1, "Taj Mahal Palace", "MUmbai", 10000.00),
(2, "ITC Grand Chola", "Chennai", 8000.00);

SELECT * FROM hotels
*/
/*
-- Inventory Table
CREATE TABLE inventory (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  item_name TEXT NOT NULL,
  quantity INTEGER CHECK (quantity >= 0),
  price_per_unit FLOAT CHECK (price_per_unit > 0)
);

INSERT INTO inventory (id, item_name, quantity, price_per_unit) VALUES
(1, "Pen", 100, 10.00),
(2, "Notebook", 200, 50.00);

SELECT * FROM inventory
*/
  
CREATE TABLE courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  course_name TEXT NOT NULL,
  duration INTEGER CHECK (duration > 1),
  fee FLOAT CHECK (fee > 0)
);

INSERT INTO courses (id, course_name, duration, fee) VALUES
(1, "Data Science", 6, 25000.00),
(2, "Web Development", 4, 20000.00);

SELECT * FROM courses