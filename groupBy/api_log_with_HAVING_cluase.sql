/*
Using GROUP BY with the HAVING clause in SQL allows you to group rows that have the same values in specified columns into summary rows, such as aggregating data, and then filter these grouped results based on conditions.

GROUP BY: This clause groups rows that have the same values in specified columns into aggregated data. For example, grouping by a column like department can aggregate data for each department.

HAVING: This clause is used to filter the results of the GROUP BY clause. Unlike WHERE, which filters rows before grouping, HAVING filters groups after the aggregation is performed. It allows you to apply conditions to the aggregated data.

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 10;

In this example:

GROUP BY department groups the rows by the department column.

HAVING COUNT(*) > 10 filters the groups to include only those departments with more than 10 employees.

This combination is useful for summarizing data and filtering results based on aggregated values.

API Logs Table

The API Logs table records detailed information about API interactions on the platform. It includes the following columns:

id: A unique identifier for each API log entry.

endpoint: The specific API endpoint accessed during the request.

user_id: The identifier of the user who made the API request.

request_time_seconds: The time taken by the server to process the request, measured in seconds.

response_time_seconds: The total time taken to receive a response after the request was made, measured in seconds.

status_code: The HTTP status code returned by the server, indicating the result of the request (e.g., 200 for success, 404 for not found).

method: The HTTP method used for the request, such as GET, POST, or PUT.

response_size_kb: The size of the response returned by the API, measured in kilobytes.

This table provides valuable insights into the performance and behavior of the API, including processing times, response sizes, and the status of requests. It helps analyze API usage patterns, identify performance issues, and understand user interactions with the API.

-- Create the API Logs table
CREATE TABLE api_logs (
    id INTEGER PRIMARY KEY,
    endpoint TEXT NOT NULL,
    user_id INTEGER NOT NULL,
    request_time_seconds INTEGER NOT NULL,
    response_time_seconds INTEGER NOT NULL,
    status_code INTEGER NOT NULL,
    method TEXT NOT NULL,
    response_size_kb INTEGER NOT NULL
);

-- Insert data into the API Logs table
INSERT INTO api_logs (id, endpoint, user_id, request_time_seconds, response_time_seconds, status_code, method, response_size_kb) VALUES
(1, '/api/v1/login', 101, 2, 3, 200, 'POST', 12),
(2, '/api/v1/getData', 102, 1, 4, 200, 'GET', 20),
(3, '/api/v1/updateProfile', 101, 3, 5, 500, 'PUT', 15),
(4, '/api/v1/logout', 103, 2, 2, 200, 'POST', 5),
(5, '/api/v1/getData', 104, 1, 3, 404, 'GET', 0),
(6, '/api/v1/createAccount', 105, 4, 6, 201, 'POST', 18),
(7, '/api/v1/deleteAccount', 106, 3, 7, 204, 'DELETE', 10),
(8, '/api/v1/login', 107, 2, 3, 200, 'POST', 12),
(9, '/api/v1/getData', 108, 1, 4, 200, 'GET', 22),
(10, '/api/v1/updateProfile', 109, 3, 5, 400, 'PUT', 16),
(11, '/api/v1/logout', 110, 2, 2, 200, 'POST', 6),
(12, '/api/v1/getData', 111, 1, 3, 404, 'GET', 0),
(13, '/api/v1/createAccount', 112, 4, 6, 201, 'POST', 19),
(14, '/api/v1/deleteAccount', 113, 3, 7, 204, 'DELETE', 11),
(15, '/api/v1/login', 114, 2, 3, 200, 'POST', 12),
(16, '/api/v1/getData', 115, 1, 4, 200, 'GET', 23),
(17, '/api/v1/updateProfile', 116, 3, 5, 500, 'PUT', 17),
(18, '/api/v1/logout', 117, 2, 2, 200, 'POST', 7),
(19, '/api/v1/getData', 118, 1, 3, 404, 'GET', 0),
(20, '/api/v1/createAccount', 119, 4, 6, 201, 'POST', 20);

-- SELECT * FROM api_logs

-- Average Response Time by Endpoint
-- SELECT endpoint, AVG(response_time_seconds)
-- AS avg_response_time
-- FROM api_logs
-- GROUP BY endpoint
-- HAVING avg_response_time > 4

-- Total Requests by User with High Response Time
-- SELECT user_id, COUNT(user_id) AS total_requests
-- FROM api_logs
-- WHERE response_time_seconds > 5
-- GROUP BY user_id

-- Average Response Size by HTTP Method
-- SELECT method, AVG(response_size_kb) 
-- AS average_response_size
-- FROM api_logs
-- GROUP BY method
-- HAVING average_response_size > 15

-- Response Time Analysis by Status Code
-- SELECT status_code, AVG(response_time_seconds) 
-- AS avg_response_time
-- FROM api_logs
-- GROUP BY status_code
-- HAVING avg_response_time < 4

-- Large Response Size by Endpoint
-- SELECT endpoint, AVG(response_size_kb) 
-- AS avg_response_size
-- FROM api_logs
-- GROUP BY endpoint
-- HAVING avg_response_size

-- Maximum Response Time by Endpoint
-- SELECT endpoint, MAX(response_time_seconds) AS max_response_time
-- FROM api_logs
-- WHERE status_code = 500
-- GROUP BY endpoint

-- Average Request and Response Time by User
-- SELECT user_id, 
-- AVG(request_time_seconds) 
-- AS avg_request_time, 
-- AVG(response_time_seconds) 
-- AS avg_response_time
-- FROM api_logs
-- GROUP BY user_id
-- ORDER BY avg_response_time DESC

-- Most Common HTTP Methods
-- SELECT method, COUNT(user_id) AS method_count
-- FROM api_logs

-- Average Response Size by Status Code
-- SELECT status_code, AVG(response_size_kb) AS avg_response_size
-- FROM api_logs
-- GROUP BY status_code
-- HAVING COUNT(*) >= 5

-- Longest Response Time by Endpoint and Status Code
-- SELECT endpoint, status_code, MAX(response_time_seconds) AS max_respoonse_time
-- FROM api_logs
-- WHERE method = 'POST'
-- GROUP BY endpoint, status_code

-- Count of Successful Requests by User
-- SELECT user_id, COUNT(user_id) AS successful_request
-- FROM api_logs
-- WHERE status_code = 200
-- GROUP BY user_id

-- Average Request Time for Specific Endpoints
-- SELECT endpoint, AVG(request_time_seconds) AS avg_request_time
-- FROM api_logs
-- WHERE endpoint = '/api/v1/login' OR endpoint = '/api/v1/getData'
-- GROUP BY endpoint

-- Users with High Average Response Size
-- SELECT user_id, AVG(response_size_kb) AS avg_response_size
-- FROM api_logs
-- WHERE response_size_kb > 15
-- GROUP BY user_id
-- ORDER BY avg_response_size DESC

-- Slowest Endpoints by Response Time
-- SELECT endpoint, AVG(response_time_seconds) AS avg_response_time
-- FROM api_logs
-- GROUP BY endpoint
-- HAVING avg_response_time > COUNT(*)

-- Count of Requests by User and Status Code
-- SELECT user_id, COUNT(request_time_seconds) AS request_count
-- FROM api_logs
-- WHERE status_code = 404
-- GROUP BY user_id, status_code

-- Average Response Time for POST and GET Methods
-- SELECT method, AVG(response_time_seconds) AS avg_response_time
-- FROM api_logs
-- WHERE method = "POST" OR method = "GET"
-- GROUP BY method
-- ORDER BY method

-- Minimum and Maximum Response Size by Endpoint
-- SELECT endpoint, MIN(response_size_kb) AS min_response_size,
-- MAX(response_size_kb) AS max_response_size
-- FROM api_logs
-- GROUP BY endpoint

-- Top 5 Endpoints with the Most Requests
-- SELECT endpoint, COUNT(*) AS request_count
-- FROM api_logs
-- GROUP BY endpoint
-- LIMIT 5;

--  Most Frequently Used Endpoint by Each User
-- SELECT user_id, endpoint, COUNT(*) AS access_count
-- FROM api_logs
-- GROUP BY user_id, endpoint

-- Requests with Long Processing Times
-- SELECT endpoint, SUM(request_time_seconds) + SUM( response_time_seconds) AS total_processing_time
-- FROM api_logs
-- GROUP BY endpoint
-- HAVING total_processing_time > 10

-- Average Response Size by User for Successful Requests
-- SELECT user_id, AVG(response_size_kb) AS avg_response_size
-- FROM api_logs
-- WHERE status_code = 200
-- GROUP BY user_id

-- Endpoint Performance Analysis
SELECT endpoint, AVG( response_time_seconds) AS avg_response_time, 
COUNT(*) AS request_count
FROM api_logs
GROUP BY endpoint
ORDER BY avg_response_time ASC

*/

