/*
GROUP BY

The GROUP BY clause in SQL is used to group rows that have the same values in specified columns into aggregated data. It's commonly used with aggregate functions like COUNT(), SUM(), AVG(), MAX(), and MIN() to perform operations on each group of data.

Basic Syntax

SELECT column1, aggregate_function(column2)
FROM table
GROUP BY column1;

Purpose: GROUP BY is used to aggregate data across multiple rows and produce a summary result for each group.

Usage: It is often used with aggregate functions to perform calculations on groups of data.

Result: The result set will have one row for each group specified in the GROUP BY clause, with aggregate values calculated for each group.

User Sessions Table

The User Sessions table records detailed information about user activity during their sessions on a platform. It includes the following columns: id, user_id, login_date, device_type, browser, session_duration, pages_viewed, data_used_MB, and location.

id: A unique identifier for each session entry.

user_id: The identifier of the user who initiated the session.

login_date: The date when the user logged in.

device_type: The type of device used for the session, such as Desktop, Mobile, or Tablet.

browser: The web browser used during the session, such as Chrome or Firefox.

session_duration: The total duration of the session, measured in minutes.

pages_viewed: The number of pages viewed during the session, reflecting user engagement.

data_used_MB: The amount of data consumed during the session, measured in megabytes.

location: The city or location from where the user accessed the platform.

This table offers valuable insights into user behavior, platform usage, and engagement patterns. It allows for analysis of session duration, device preferences, and data consumption, helping to understand user interaction with the platform, optimize performance, and tailor experiences based on location and device type.

*/

-- Create the user_sessions table
CREATE TABLE user_sessions (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    login_date TEXT,
    device_type TEXT,
    browser TEXT,
    location TEXT,
    session_duration INTEGER,
    pages_viewed INTEGER,
    data_used_MB INTEGER
);

-- Insert data into the user_sessions table
INSERT INTO user_sessions (id, user_id, login_date, device_type, browser, location, session_duration, pages_viewed, data_used_MB) VALUES
(1, 1001, '2024-08-01', 'Mobile', 'Chrome', 'Mumbai', 45, 10, 15),
(2, 1001, '2024-08-02', 'Desktop', 'Firefox', 'Mumbai', 60, 15, 20),
(3, 1002, '2024-08-01', 'Desktop', 'Firefox', 'Bangalore', 45, 12, 18),
(4, 1002, '2024-08-03', 'Mobile', 'Chrome', 'Bangalore', 30, 8, 12),
(5, 1003, '2024-08-01', 'Tablet', 'Safari', 'Delhi', 30, 7, 10),
(6, 1003, '2024-08-02', 'Desktop', 'Edge', 'Delhi', 75, 20, 25),
(7, 1004, '2024-08-01', 'Mobile', 'Chrome', 'Pune', 60, 18, 22),
(8, 1004, '2024-08-02', 'Tablet', 'Safari', 'Pune', 45, 10, 14),
(9, 1005, '2024-08-01', 'Desktop', 'Edge', 'Chennai', 105, 30, 35),
(10, 1005, '2024-08-03', 'Mobile', 'Chrome', 'Chennai', 50, 12, 16),
(11, 1006, '2024-08-01', 'Mobile', 'Chrome', 'Kolkata', 45, 9, 13),
(12, 1006, '2024-08-03', 'Desktop', 'Chrome', 'Kolkata', 55, 14, 19),
(13, 1007, '2024-08-02', 'Tablet', 'Safari', 'Hyderabad', 30, 6, 11),
(14, 1007, '2024-08-03', 'Mobile', 'Chrome', 'Hyderabad', 40, 10, 15),
(15, 1008, '2024-08-01', 'Desktop', 'Chrome', 'Ahmedabad', 60, 14, 20),
(16, 1008, '2024-08-02', 'Mobile', 'Chrome', 'Ahmedabad', 35, 8, 12),
(17, 1009, '2024-08-01', 'Mobile', 'Chrome', 'Jaipur', 30, 7, 10),
(18, 1009, '2024-08-03', 'Tablet', 'Safari', 'Jaipur', 50, 11, 15),
(19, 1010, '2024-08-02', 'Desktop', 'Firefox', 'Lucknow', 30, 6, 9),
(20, 1010, '2024-08-03', 'Mobile', 'Chrome', 'Lucknow', 45, 9, 13);


-- SELECT * FROM user_sessions

-- Total Sessions per User
-- SELECT user_id, COUNT(user_id) AS total_sessions
-- FROM user_sessions
-- GROUP BY user_id

-- Average Session Duration by Device Type
-- SELECT device_type, AVG(session_duration) AS avg_duration
-- FROM user_sessions
-- GROUP BY device_type

-- Total Data Used by Each User
-- SELECT user_id, SUM(data_used_MB) AS total_amount_used
-- FROM user_sessions
-- GROUP BY user_id

-- Maximum Pages Viewed per User
-- SELECT user_id, MAX(pages_viewed) AS max_pages
-- FROM user_sessions
-- GROUP BY user_id

-- Total Sessions by Browser and Device Type
-- SELECT browser, device_type, COUNT(user_id) AS total_sessions
-- FROM user_sessions
-- GROUP BY browser, device_type

-- Average Data Used by City
-- SELECT location, AVG(data_used_MB) AS avg_data_used
-- FROM user_sessions
-- GROUP BY location

-- Sessions by Device Type and Browser
-- SELECT device_type, browser, COUNT(device_type) AS session_count
-- FROM user_sessions
-- GROUP BY browser, device_type

-- Total Sessions by User and Browser
-- SELECT user_id, browser, COUNT() AS session_count
-- FROM user_sessions
-- GROUP BY user_id, browser

-- Average Session Duration by City and Device Type
-- SELECT location, device_type, AVG(session_duration) AS avg_duration
-- FROM user_sessions
-- GROUP BY location, device_type

-- Total Data Used by User and Device Type
-- SELECT user_id, device_type, SUM(data_used_MB) AS total_data_used
-- FROM user_sessions
-- GROUP BY user_id, device_type

-- Count of Sessions by Browser and Login Date
-- SELECT browser, login_date, COUNT(user_id) AS session_count
-- FROM user_sessions
-- GROUP BY browser, login_date

-- Maximum Pages Viewed by User and Device Type
-- SELECT user_id, device_type, MAX(pages_viewed) AS max_pages
-- FROM user_sessions
-- GROUP BY user_id, device_type

-- Average Data Used by City and Browser
-- SELECT location, browser, AVG(data_used_MB) AS avg_date_used
-- FROM user_sessions
-- GROUP BY location, browser

-- Total Sessions by User and Login Date
-- SELECT user_id, login_date, COUNT(user_id) AS session_count
-- FROM user_sessions
-- GROUP BY user_id, login_date

-- Total Pages Viewed by City and Device Type
-- SELECT location, device_type, SUM(pages_viewed) AS total_pages
-- FROM user_sessions
-- GROUP BY location, device_type

-- Maximum Session Duration by Browser and Login Date
-- SELECT browser, login_date, MAX(session_duration) AS mac_duration
-- FROM user_sessions
-- GROUP BY browser, login_date

-- Total Data Used by User and City
-- SELECT user_id, location, SUM(data_used_MB) AS total_data_used
-- FROM user_sessions
-- GROUP BY user_id, location

--  Total Sessions by Device Type in Mumbai
-- SELECT device_type, COUNT(user_id) AS session_count
-- FROM user_sessions
-- WHERE location = "Mumbai"
-- GROUP BY device_type

-- Total Data Used by User with Sessions Longer Than 1 Hour
-- SELECT user_id, SUM(data_used_MB) AS total_data_used
-- FROM user_sessions
-- WHERE session_duration > 60
-- GROUP BY user_id

-- Total Sessions by User and Device Type in Bangalore
-- SELECT user_id, device_type, COUNT(user_id) AS session_count
-- FROM user_sessions
-- WHERE location = 'Bangalore'
-- GROUP BY user_id, device_type

-- Maximum Data Used by Browser for Sessions Longer Than 30 Minutes
-- SELECT browser, MAX(data_used_MB) AS max_data_used
-- FROM user_sessions
-- WHERE session_duration > 30
-- GROUP BY browser

-- Total Data Used by City and Browser for Mobile Sessions
-- SELECT location, browser, SUM(data_used_MB) AS total_data_used
-- FROM user_sessions
-- WHERE device_type = 'Mobile'
-- GROUP BY browser, location

-- Number of Sessions by User and Location for Desktop Devices
-- SELECT user_id, location, COUNT(user_id) AS session_count
-- FROM user_sessions
-- WHERE device_type = "Desktop"
-- GROUP BY user_id, location

-- Average Data Used by Browser for Sessions in Mumbai
-- SELECT browser, AVG(data_used_MB) AS avg_data_used
-- FROM user_sessions
-- WHERE location = 'Mumbai'
-- GROUP BY browser

-- Total Sessions by Browser and Device Type with More Than 10 Pages Viewed
-- SELECT browser, device_type, COUNT(user_id) AS session_count
-- FROM user_sessions
-- WHERE pages_viewed > 10
-- GROUP BY browser, device_type

-- Total Pages Viewed by City for Sessions Longer Than 45 Minutes
-- SELECT location, SUM(pages_viewed) AS total_pages_viewed
-- FROM user_sessions
-- WHERE session_duration > 45
-- GROUP BY location

-- Average Session Duration by Device Type for Sessions in Bangalore
-- SELECT device_type, AVG(session_duration) AS avg_duration
-- FROM user_sessions
-- WHERE location = 'Bangalore'
-- GROUP by device_type

-- Average Session Duration by Browser in Pune
-- SELECT browser, AVG(session_duration) AS avg_duration
-- FROM user_sessions
-- WHERE location = 'Pune'
-- GROUP BY browser

-- Total Data Used by Device Type for Sessions with More Than 3 Pages Viewed
-- SELECT device_type, SUM(data_used_MB) AS total_data_used
-- FROM user_sessions
-- WHERE pages_viewed > 3
-- GROUP BY device_type

-- Maximum Data Used by Browser for Sessions in Bangalore
SELECT browser, MAX(data_used_MB) AS max_data_used
FROM user_sessions
WHERE location = 'Bangalore'
GROUP BY browser































































