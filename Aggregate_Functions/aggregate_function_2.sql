CREATE TABLE inventory (
    id INTEGER PRIMARY KEY,
    item_name TEXT NOT NULL,
    category TEXT NOT NULL,
    quantity_in_stock INTEGER NOT NULL,
    unit_price REAL NOT NULL,
    reorder_level INTEGER NOT NULL,
    supplier_id TEXT NOT NULL,
    supplier_location TEXT NOT NULL
);

INSERT INTO inventory (id, item_name, category, quantity_in_stock, unit_price, reorder_level, supplier_id, supplier_location) VALUES
(201, 'Samsung LED TV 43', 'Television', 50, 29999, 10, 'SUP101', 'New Delhi'),
(202, 'Mi 10 Power Bank 20000mAh', 'Accessories', 200, 1499, 30, 'SUP102', 'Mumbai'),
(203, 'Dell Inspiron 15 Laptop', 'Computers', 35, 55000, 5, 'SUP103', 'Bengaluru'),
(204, 'Sony WH-1000XM4 Headphones', 'Audio', 60, 24990, 15, 'SUP104', 'Chennai'),
(205, 'Realme C55 Smartphone', 'Mobiles', 100, 13999, 20, 'SUP102', 'Mumbai'),
(206, 'LG 260L Refrigerator', 'Appliances', 25, 23499, 8, 'SUP105', 'Pune'),
(207, 'Philips Air Fryer', 'Kitchen', 40, 9499, 10, 'SUP106', 'Kolkata'),
(208, 'HP DeskJet 2723 Printer', 'Office', 80, 4299, 20, 'SUP107', 'Hyderabad'),
(209, 'Lenovo ThinkPad E14 Laptop', 'Computers', 45, 63000, 10, 'SUP103', 'Bengaluru'),
(210, 'Bose SoundLink Mini II Speaker', 'Audio', 70, 17500, 15, 'SUP104', 'Chennai'),
(211, 'OnePlus Nord 2T Smartphone', 'Mobiles', 120, 28999, 25, 'SUP102', 'Mumbai'),
(212, 'Whirlpool 7kg Washing Machine', 'Appliances', 30, 22999, 8, 'SUP105', 'Pune'),
(213, 'Canon EOS 1500D DSLR Camera', 'Cameras', 20, 38999, 5, 'SUP108', 'Jaipur'),
(214, 'Samsung Galaxy Tab S7', 'Tablets', 65, 47999, 15, 'SUP102', 'Mumbai'),
(215, 'Havells Insta Cook Induction', 'Kitchen', 50, 3999, 12, 'SUP106', 'Kolkata'),
(216, 'Apple iPad Air', 'Tablets', 40, 54900, 10, 'SUP102', 'Mumbai'),
(217, 'Panasonic 1.5 Ton AC', 'Appliances', 20, 39990, 5, 'SUP105', 'Pune'),
(218, 'JBL Flip 5 Bluetooth Speaker', 'Audio', 90, 8999, 20, 'SUP104', 'Chennai'),
(219, 'Vivo Y21 Smartphone', 'Mobiles', 110, 12499, 20, 'SUP102', 'Mumbai'),
(220, 'HP Omen 15 Gaming Laptop', 'Computers', 30, 79999, 8, 'SUP103', 'Bengaluru');

-- QUERY database
-- SELECT * FROM inventory;
 
 -- Find the Minimum Price of Mobiles
-- SELECT MIN(unit_price)
-- AS lowest_mobile_price
-- FROM inventory
-- WHERE category = 'Mobiles'

-- Find the Maximum Quantity in Stock for Audio Products
-- SELECT MAX(quantity_in_stock)
-- AS max_audio_stock
-- FROM inventory
-- WHERE category = 'Audio'
 
-- Calculate the Average Price of Computers
-- SELECT AVG(unit_price)
-- AS avg_computers_price
-- FROM inventory
-- WHERE category = 'Computers'
 
-- Calculate the Total Stock for Kitchen Appliances 
-- SELECT SUM(quantity_in_stock)
-- AS total_stock
-- FROM inventory
-- WHERE category = 'Kitchen'
 
-- Count the Number of Products Supplied from Mumbai 
-- SELECT COUNT(id)
-- AS number_of_products
-- FROM inventory
-- WHERE supplier_location = 'Mumbai'
 
-- Find the Minimum Reorder Level for Appliances 
-- SELECT MIN(reorder_level)
-- AS min_reorder_level
-- FROM inventory
-- WHERE category= 'Appliances'
 
-- Find the Maximum Price of Televisions
-- SELECT MAX(unit_price)
-- AS max_price
-- FROM inventory
-- WHERE category = 'Television'
 
-- Calculate the Average Stock of Tablets
-- SELECT AVG(quantity_in_stock)
-- AS avg_stock
-- FROM inventory
-- WHERE category = 'Tablets'
 
-- Calculate the Total Value of Stock for Audio Products
-- SELECT SUM(quantity_in_stock * unit_price)
-- AS total_stock
-- FROM inventory
-- WHERE category = 'Audio'
 
-- Count the Number of Items with Reorder Level Less Than 10 
-- SELECT COUNT(id)
-- AS number_of_items
-- FROM inventory
-- WHERE reorder_level < 10
 
-- Find the Minimum Price of Accessories
-- SELECT MIN(unit_price)
-- AS min_unit_price
-- FROM inventory
-- WHERE category = 'Accessories'
 
-- Find the Maximum Quantity in Stock for Televisions
-- SELECT MAX(quantity_in_stock)
-- AS max_stock
-- FROM inventory
-- WHERE category = 'Television'
 
-- Calculate the Average Reorder Level for Mobiles
-- SELECT AVG(reorder_level)
-- AS avg_reorder_level
-- FROM inventory
-- WHERE category = 'Mobiles'

-- Calculate the Total Stock Supplied by Supplier SUP103
-- SELECT SUM(quantity_in_stock)
-- AS total_stock
-- FROM inventory
-- WHERE supplier_id = 'SUP103'
 
-- Count the Number of Items Priced Above 20,000 INR
-- SELECT COUNT(id)
-- AS number_of_Items
-- FROM inventory
-- WHERE unit_price > 20000
 
-- Find the Minimum Stock for Kitchen Items
-- SELECT MIN(quantity_in_stock)
-- AS min_stock
-- FROM inventory
-- WHERE category = 'Kitchen'
 
-- Find the Maximum Reorder Level for Tablets
-- SELECT MAX(reorder_level)
-- AS max_reorder_level
-- FROM inventory
-- WHERE category = 'Tablets'
 
-- Calculate the Average Price of Televisions
-- SELECT AVG(unit_price)
-- AS avg_price
-- FROM inventory
-- WHERE category = 'Television'
 
-- Calculate the Total Stock Value for Mobiles
-- SELECT SUM(quantity_in_stock * unit_price)
-- AS total_stock
-- FROM inventory
-- WHERE category = 'Mobiles'
 
-- Count the Number of Products Supplied from Chennai
-- SELECT COUNT(id)
-- AS number_of_products
-- FROM inventory
-- WHERE supplier_location = 'Chennai'
 
-- Find the Minimum Price of Cameras
-- SELECT MIN(unit_price)
-- AS min_unit_price
-- FROM inventory
-- WHERE category = 'Cameras'
 
-- Find the Maximum Quantity in Stock for Accessories
-- SELECT MAX(quantity_in_stock)
-- AS max_stock
-- FROM inventory
-- WHERE category = 'Accessories'
 
-- Calculate the Average Price of Appliances
-- SELECT AVG(unit_price)
-- AS avg_price
-- FROM inventory
-- WHERE category = 'Appliances'
 
-- Calculate the Total Stock for Computers
-- SELECT SUM(quantity_in_stock)
-- AS total_stock
-- FROM inventory
-- WHERE category = 'Computers'

-- Count the Number of Items Supplied by Supplier SUP105
-- SELECT COUNT(id)
-- AS number_of_items
-- FROM inventory
-- WHERE supplier_id = 'SUP105'
 
-- Find the Minimum Reorder Level for Office Supplies
-- SELECT MIN(reorder_level)
-- AS min_reorder_level
-- FROM inventory
-- WHERE category = 'Office'
 
-- Find the Maximum Price of Tablets
-- SELECT MAX(unit_price)
-- AS max_tablet_price
-- FROM inventory
-- WHERE category = 'Tablets'

-- Calculate the Average Stock of Audio Products
-- SELECT AVG(quantity_in_stock)
-- AS avg_audio_stock
-- FROM inventory
-- WHERE category = 'Audio'

-- Calculate the Total Stock Value for Appliances
-- SELECT SUM(quantity_in_stock * unit_price)
-- AS total_stock_value
-- FROM inventory
-- WHERE category = 'Appliances'

-- Count the Number of Items Priced Below 10,000 INR
SELECT COUNT(id)
AS number_of_items
from inventory
WHERE unit_price < 10000