-- Inner Joins in SQL

/*
Description: An INNER JOIN in SQL is used to combine rows from two or more tables based on a related column between them. The result of an INNER JOIN contains only the rows where there is a match in both joined tables. If there is no match, the row will not be included in the result set.

Syntax

SELECT column1, column2, ...
FROM table1
INNER JOIN table2 ON table1.common_column = table2.common_column;

Explanation:
SELECT: Specifies the columns you want to retrieve.
FROM table1: Indicates the first table.
INNER JOIN table2: Specifies the second table to join.
ON table1.common_column = table2.common_column: Defines the condition for the join, specifying the common column between the two tables.

Examples
1. Basic Inner Join: To list all products with their supplier names:

SELECT p.product_name, s.suplier_name
FROM products p
INNER JOIN supplers s ON p.supplier_id = s.supplier_id
This query retrieves the product names along with the supplier names by matching the supplier_id in both the products and suppliers tables.


2. Inner Join with Where Clause: To find products in the 'Electronics' category with their supplier names:

SELECT p.product_name, s.supplier_name
FROM products p
INNER JOIN suppliers s ON p.supplier_id = s.supplier_id
WHERE p.category = 'Electronics';
This query retrieves the product names and supplier names for products that belong to the 'Electronics' category.

3. Inner Join with Aggregation: To calculate the total quantity of products in stock for each supplier

SELECT s.supplier_name, SUM(p.quantity_in_stock) AS total_quantity
FROM products p
INNER JOIN suppliers s ON p.supplier_id = s.supplier_id
GROUP BY s.supplier_name;
This query sums up the quantity of products in stock for each supplier, grouping the results by supplier names.

4. Inner Join with Multiple Conditions: To find the average unit price of products supplied by 'Tech Supplies Inc' in the 'Tablets' category:

SELECT AVG(p.unit_price) AS avg_price
FROM products p
INNER JOIN suppliers s ON p.supplier_id = s.supplier_id
WHERE s.supplier_name = 'Tech Supplies Inc' AND p.category = 'Tablets';
This query calculates the average unit price of tablets supplied by 'Tech Supplies Inc'.

Key Points:

INNER JOIN returns only the rows where there is a match in both tables.
It is useful for combining related data from different tables.
Ensure that the columns used in the ON clause are related and correctly represent the relationship between the tables.

Common Use Cases:
Merging data from different tables, such as orders and customers.
Retrieving related information from multiple tables.
Performing complex queries involving multiple tables with related data.

Using INNER JOIN effectively can help in retrieving and analyzing data from relational databases, providing insights based on the relationships between tables.

Display the titles of all books along with the names of libraries where the library name contains 'Public'.
SELECT b.title, l.library_name
FROM books b
INNER JOIN libraries l ON b.library_id = l.id
WHERE l.library_name LIKE '%Public%';

*/

-- Create the products table
CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT NOT NULL,
    quantity_in_stock INTEGER,
    unit_price REAL,
    reorder_level INTEGER,
    supplier_id INTEGER,
    supplier_location TEXT
);

-- Insert data into the products table
INSERT INTO products (product_name, category, quantity_in_stock, unit_price, reorder_level, supplier_id, supplier_location) VALUES
('Smartphone', 'Mobiles', 150, 299.99, 20, 1, 'Delhi'),
('Laptop', 'Computers', 75, 899.99, 10, 2, 'Mumbai'),
('Headphones', 'Audio', 200, 49.99, 50, 3, 'Bangalore'),
('Smartwatch', 'Wearables', 120, 149.99, 15, 4, 'Chennai'),
('Tablet', 'Tablets', 90, 249.99, 30, 5, 'Hyderabad'),
('Monitor', 'Computers', 60, 179.99, 20, 2, 'Mumbai'),
('Bluetooth Speaker', 'Audio', 110, 89.99, 25, 3, 'Bangalore'),
('Keyboard', 'Accessories', 300, 29.99, 100, 6, 'Delhi'),
('Mouse', 'Accessories', 350, 19.99, 150, 6, 'Delhi'),
('Printer', 'Office Supplies', 40, 129.99, 5, 7, 'Chennai');

-- Create the suppliers table
CREATE TABLE suppliers (
    supplier_id INTEGER PRIMARY KEY,
    supplier_name TEXT NOT NULL,
    contact_number TEXT,
    supplier_location TEXT,
    contact_email TEXT
);

-- Insert data into the suppliers table
INSERT INTO suppliers (supplier_name, contact_number, supplier_location, contact_email) VALUES
('Tech Supplies Inc', '9876543210', 'Delhi', 'contact@techsupplies.com'),
('Gadget World Ltd', '9123456789', 'Mumbai', 'info@gadgetworld.com'),
('AudioMasters', '9988776655', 'Bangalore', 'support@audiomasters.com'),
('WearableTech', '9456781234', 'Chennai', 'sales@wearabletech.com'),
('TabletZone', '9345678123', 'Hyderabad', 'service@tabletzone.com'),
('Accessory Hub', '9162736450', 'Delhi', 'contact@accessoryhub.com'),
('Print Solutions', '9798675432', 'Chennai', 'info@printsolutions.com');

-- SELECT * FROM products
-- SELECT * FROM suppliers

-- List All Products with Their Supplier Names
-- SELECT p.product_name, s.supplier_name
-- FROM products p
-- INNER JOIN suppliers s ON p.supplier_id = s.supplier_id

-- List All Products Supplied by 'Tech Supplies Inc'
-- SELECT p.product_name, s.supplier_name
-- FROM products p
-- INNER JOIN suppliers s ON p.supplier_id = s.supplier_id
-- WHERE s.supplier_name = 'Tech Supplies Inc'

-- Find the Maximum Unit Price of Products Supplied by 'Tech Supplies Inc'
-- SELECT MAX(p.unit_price) AS max_price
-- FROM products p
-- INNER JOIN suppliers s ON p.supplier_id = s.supplier_id
-- WHERE s.supplier_name = 'Tech Supplies Inc'


-- Show the Contact Numbers of Suppliers for Each Product
-- SELECT p.product_name, s.contact_number
-- FROM products p
-- INNER JOIN suppliers s ON p.supplier_id = s.supplier_id

-- Display Supplier Locations for Each Product
-- SELECT p.product_name, s.supplier_location
-- FROM products p
-- INNER JOIN suppliers s ON p.supplier_id = s.supplier_id

-- List All Products with Their Supplier IDs and Names
-- SELECT p.product_name, s.supplier_id, s.supplier_name
-- FROM products p
-- INNER JOIN suppliers s ON p.supplier_id = s.supplier_id

-- Find the Unit Price and Supplier Name for Each Product
-- SELECT p.product_name, p.unit_price, s.supplier_name
-- FROM products p
-- INNER JOIN suppliers s ON p.supplier_id = s.supplier_id

-- Find Products Supplied by 'Gadget World Ltd' Located in a Specific Location
-- SELECT p.product_name, s.supplier_location
-- FROM products p
-- INNER JOIN suppliers s ON p.supplier_id = s.supplier_id
-- WHERE s.supplier_name = 'Gadget World Ltd'

-- Find Products Priced Under 200 from Suppliers in 'Bangalore'
-- SELECT p.product_name, p.unit_price, s.supplier_location
-- FROM products p
-- INNER JOIN suppliers s ON p.supplier_id = s.supplier_id
-- WHERE p.unit_price < 200 AND s.supplier_location = 'Bangalore'

-- Display Products with Prices Above 250 and Their Supplier's Contact Number
-- SELECT p.product_name, p.unit_price, s.contact_number
-- FROM products p
-- INNER JOIN suppliers s ON p.supplier_id = s.supplier_id
-- WHERE p.unit_price > 250

-- Find Products Priced Below 300 from Suppliers Located in 'Chennai'
-- SELECT p.product_name, p.unit_price
-- FROM products p
-- INNER JOIN suppliers s ON p.supplier_id = s.supplier_id
-- WHERE p.unit_price < 300 AND s.supplier_location = 'Chennai'

-- Determine the Minimum Quantity in Stock for Products Supplied by 'Gadget World Ltd'
/*
SELECT MIN(quantity_in_stock) AS min_stock
FROM products p
INNER JOIN suppliers s ON p.supplier_id = s.supplier_id
WHERE s.supplier_name = 'Gadget World Ltd'
*/

-- Calculate the Total Number of Products in the 'Accessories' Category Supplied by 'MegaElectronics'
SELECT COUNT(p.product_name) AS total_number_of_products
FROM products p
INNER JOIN suppliers s ON p.supplier_id = s.supplier_id
WHERE p.category = 'Accessories' AND s.supplier_name = 'MegaElectronics'
