-- Aggregate Functions in SQL

/*
Aggregate functions are used to perform calculations on a set of values and return a single value. They are useful for summarizing data and making it easier to analyze. These functions typically work with columns in a table and are often used with the GROUP BY clause, but they can also be used without it.

Common Aggregate Functions

COUNT(): Counts the number of rows in a set.
Usage: COUNT(column_name) or COUNT(*)
Example: SELECT COUNT(*) FROM employees;

SUM(): Adds up all the values in a numeric column.
Usage: SUM(column_name)
Example: SELECT SUM(salary) FROM employees;

AVG(): Calculates the average of values in a numeric column.
Usage: AVG(column_name)
Example: SELECT AVG(salary) FROM employees;

MIN(): Finds the smallest value in a column.
Usage: MIN(column_name)
Example: SELECT MIN(salary) FROM employees;

MAX(): Finds the largest value in a column.
Usage: MAX(column_name)
Example: SELECT MAX(salary) FROM employees;

Syntax
SELECT AGGREGATE_FUNCTION(column_name)
FROM table_name
WHERE condition;

AGGREGATE_FUNCTION: One of the functions listed above (e.g., SUM, AVG).
column_name: The column on which the function operates.
table_name: The name of the table from which data is selected.
condition: (Optional) A condition to filter the rows (using the WHERE clause).

Example
To find the average salary of employees in a department:

This query calculates the average salary for employees in the 'IT' department.
SELECT AVG(salary)
FROM employees
WHERE department = 'IT'

Aggregate functions help summarize and analyze data efficiently by performing calculations on multiple rows at once.

// the AS keyword is used to create an alias a temporary name for a column or table, which can improve readability and make the results easier to understand.

This alias: AS
Improves Readability: By naming the count as number_of_employees, you know exactly what the count represents.
Provides Clarity in Complex Queries: Aliases are especially useful in complex queries, making the results more understandable without needing to revisit the query logic.

SELECT COUNT(id)
AS number_of_employees 
FROM employee_salaries
WHERE department = 'HR'
*/

-- Create the employee_salaries table
CREATE TABLE employee_salaries (
    id INTEGER PRIMARY KEY,
    employee_name TEXT,
    department TEXT,
    designation TEXT,
    salary INTEGER,
    joining_year INTEGER,
    gender TEXT,
    age INTEGER
);

-- Insert data into the employee_salaries table
INSERT INTO employee_salaries (id, employee_name, department, designation, salary, joining_year, gender, age) VALUES
(1, 'Amit Sharma', 'IT', 'Software Engineer', 60000, 2020, 'Male', 29),
(2, 'Neha Verma', 'HR', 'HR Manager', 75000, 2019, 'Female', 34),
(3, 'Rajesh Kumar', 'Finance', 'Accountant', 55000, 2021, 'Male', 40),
(4, 'Suman Gupta', 'IT', 'Senior Developer', 90000, 2018, 'Female', 32),
(5, 'Vikas Singh', 'IT', 'Junior Developer', 45000, 2022, 'Male', 25),
(6, 'Preeti Rani', 'HR', 'HR Executive', 50000, 2019, 'Female', 28),
(7, 'Ravi Mehta', 'IT', 'DevOps Engineer', 70000, 2020, 'Male', 30),
(8, 'Divya Nair', 'Finance', 'Senior Accountant', 85000, 2017, 'Female', 38),
(9, 'Karan Malhotra', 'IT', 'Software Engineer', 60000, 2020, 'Male', 27),
(10, 'Seema Patel', 'Finance', 'Junior Accountant', 40000, 2021, 'Female', 24),
(11, 'Nitin Rao', 'HR', 'HR Assistant', 48000, 2020, 'Male', 31),
(12, 'Shweta Joshi', 'IT', 'Senior Developer', 95000, 2017, 'Female', 35),
(13, 'Rohit Aggarwal', 'Finance', 'Financial Analyst', 72000, 2021, 'Male', 33),
(14, 'Priya Desai', 'HR', 'HR Executive', 52000, 2019, 'Female', 26),
(15, 'Vivek Rana', 'IT', 'Project Manager', 100000, 2016, 'Male', 45),
(16, 'Alok Jain', 'Finance', 'Accountant', 55000, 2021, 'Male', 39),
(17, 'Sneha Mishra', 'HR', 'HR Manager', 75000, 2019, 'Female', 34),
(18, 'Ankit Tiwari', 'IT', 'Software Engineer', 62000, 2020, 'Male', 28),
(19, 'Ritika Bansal', 'Finance', 'Financial Analyst', 75000, 2021, 'Female', 41),
(20, 'Deepak Yadav', 'IT', 'DevOps Engineer', 70000, 2020, 'Male', 30);

-- QUERY database
-- SELECT * FROM employee_salaries;

-- Total Number of Employees in the Company
-- SELECT COUNT(id)
-- AS total_employees
-- FROM employee_salaries

-- Calculate Average Salary in the IT Department
-- SELECT AVG(salary)
-- AS average_salary
-- FROM employee_salaries
-- WHERE department = 'IT'

-- Find the Highest Salary
-- SELECT MAX(salary)
-- AS highest_salary
-- FROM employee_salaries

-- Find the Minimum Salary
-- SELECT MIN(salary)
-- AS min_salary
-- FROM employee_salaries

-- Find the Total Salary of All Employees
-- SELECT SUM(salary)
-- AS total_salary
-- FROM employee_salaries

-- Find the Average Salary for Employees Older Than 30
-- SELECT AVG(salary)
-- AS avg_salary
-- FROM employee_salaries
-- WHERE age > 30

-- Find the Highest Salary in the IT Department
-- SELECT MAX(salary)
-- AS highest_salary
-- FROM employee_salaries
-- WHERE department = 'IT'

-- Find the Number of Employees in the HR Department
-- SELECT COUNT(id)
-- AS number_of_employees
-- FROM employee_salaries
-- WHERE department = 'HR'

-- Find the Average Salary for Employees Who Joined After 2018
-- SELECT AVG(salary)
-- AS avg_salary
-- FROM employee_salaries
-- WHERE joining_year > 2018

-- Find the Minimum Salary for Female Employees
-- SELECT MIN(salary)
-- AS min_salary
-- FROM employee_salaries
-- WHERE gender = 'Female'

-- Calculate the Total Salary for Employees in the Finance Department
-- SELECT SUM(salary)
-- AS total_salary
-- FROM employee_salaries
-- WHERE department = 'Finance'

-- Find the Average Salary for Employees Aged 25 or Less
-- SELECT AVG(salary)
-- AS avg_salary
-- FROM employee_salaries
-- WHERE age <= 25

-- Find the Highest Salary for Employees in the Finance Department
-- SELECT MAX(salary)
-- AS highest_salary
-- FROM employee_salaries
-- WHERE department = 'Finance'

-- Calculate the Total Salary for Male Employees
-- SELECT SUM(salary)
-- AS total_salary
-- FROM employee_salaries
-- WHERE gender = 'Male'

-- Count the Number of Employees Who Joined Before 2020
-- SELECT COUNT(id)
-- AS number_of_employees
-- FROM employee_salaries
-- WHERE joining_year < 2020

-- Find the Average Salary for Employees with a Salary Above 60,000
-- SELECT AVG(salary)
-- AS avg_salary
-- FROM employee_salaries
-- WHERE salary > 60000

-- Find the Minimum Salary for Employees Who Joined in 2019
-- SELECT MIN(salary)
-- AS min_salary
-- FROM employee_salaries
-- WHERE joining_year = 2019

-- Find the Highest Salary for Employees Aged 35 or Above
-- SELECT MAX(salary)
-- AS highest_salary
-- FROM employee_salaries
-- WHERE age >= 35

-- Calculate the Total Salary for Employees with Designation 'Software Engineer'
-- SELECT SUM(salary)
-- AS total_salary
-- FROM employee_salaries
-- WHERE designation = 'Software Engineer'

-- Count the Number of Employees with Salaries Below 50,000
-- SELECT COUNT(id)
-- AS number_of_employees
-- FROM employee_salaries
-- WHERE salary < 50000

--  Find the Average Salary for Employees in the 'IT' Department Who Are Younger Than 30
-- SELECT AVG(salary)
-- AS avg_salary
-- FROM employee_salaries
-- WHERE department = 'IT' AND age < 30

-- Find the Highest Salary for Employees Who Joined in 2020
-- SELECT MAX(salary)
-- AS highest_salary
-- FROM employee_salaries
-- WHERE joining_year = 2020

-- Find the Average Salary for Employees with Designation 'Project Manager'
-- SELECT AVG(salary)
-- AS avg_salary
-- FROM employee_salaries
-- WHERE designation = 'Project Manager'

-- Find the Minimum Salary for Employees Who Joined Before 2017
-- SELECT MIN(salary)
-- AS min_salary
-- FROM employee_salaries
-- WHERE joining_year < 2017

-- Calculate the Total Salary for Employees with Age Between 30 and 40
-- SELECT SUM(salary)
-- AS total_salary
-- FROM employee_salaries
-- WHERE age >= 30 AND age <= 40

--  Find the Maximum Salary for Employees in the 'IT' Department Who Joined After 2018
-- SELECT MAX(salary)
-- AS max_salary
-- FROM employee_salaries
-- WHERE department = 'IT' AND joining_year > 2018

-- Calculate the Total Salary for Female Employees in the Finance Department
-- SELECT SUM(salary)
-- AS total_salary
-- FROM employee_salaries
-- WHERE department = 'Finance' AND gender = 'Female'

-- Find the Average Salary for Employees Aged Between 25 and 35 Who Joined Before 2020
-- SELECT AVG(salary)
-- AS avg_salary
-- FROM employee_salaries
-- WHERE age >= 25 AND age <= 35 AND joining_year < 2020

-- Find the Minimum Salary for Male Employees in the 'HR' Department Who Are 30 or Older
-- SELECT MIN(salary)
-- AS min_salary
-- FROM employee_salaries
-- WHERE department = 'HR' AND gender = 'Male' AND age >= 30

-- Calculate the Total Salary for Employees with a Salary Greater Than 50,000 and Who Joined in 2019
-- SELECT SUM(salary)
-- AS total_salary
-- FROM employee_salaries
-- WHERE salary > 50000 AND joining_year = 2019

-- Count the Number of Employees in the 'IT' Department with a Salary Above 60,000
-- SELECT COUNT(id)
-- AS number_of_employees
-- FROM employee_salaries
-- WHERE department = 'IT' AND salary > 60000

-- Find the Highest Salary for Employees Aged Under 30 and with Designation 'Junior Developer'
-- SELECT MAX(salary)
-- AS highest_salary
-- FROM employee_salaries
-- WHERE age <= 30 AND designation = 'Junior Developer'

-- Calculate the Average Salary for Employees Who Joined Between 2015 and 2018 and Are in the Finance Department
-- SELECT AVG(salary)
-- AS avg_salary
-- FROM employee_salaries
-- WHERE joining_year >= 2015 AND joining_year <= 2018 AND department = 'Finance'

-- Count the Number of Male Employees Aged Between 30 and 40 Who Work in the IT Department
-- SELECT COUNT(id)
-- AS number_of_employees
-- FROM employee_salaries
-- WHERE age > 30 AND age < 40 AND department = 'IT'

-- Find the Average Salary for Employees in the 'HR' Department Who Are Younger Than 40 and Joined After 2017
-- SELECT AVG(salary)
-- AS avg_salary
-- FROM employee_salaries
-- WHERE department = 'HR' AND age < 40 AND joining_year > 2017 

-- Find the Highest Salary for Employees Aged Between 25 and 35 Who Are in the Finance Department
-- SELECT MAX(salary)
-- AS highest_salary
-- FROM employee_salaries
-- WHERE age >= 25 AND age <= 35 AND department = 'Finance'

-- Calculate the Total Salary for Female Employees Who Joined Between 2019 and 2021 and Have a Salary Above 55,000
SELECT SUM(salary)
AS total_salary
FROM employee_salaries
WHERE gender = 'Female' AND joining_year >= 2019 AND joining_year <= 2021 AND salary > 55000