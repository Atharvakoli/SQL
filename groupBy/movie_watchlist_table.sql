CREATE TABLE movie_watchlist (
    id INTEGER PRIMARY KEY,
    movie_name TEXT,
    movie_genre TEXT,
    rating REAL,
    view_count INTEGER,
    platform TEXT,
    language TEXT
);

-- Insert data into the movie_watchlist table
INSERT INTO movie_watchlist (id, movie_name, movie_genre, rating, view_count, platform, language) VALUES
(1, '3 Idiots', 'Drama', 9.2, 5, 'Netflix', 'Hindi'),
(2, 'Baahubali: The Beginning', 'Action', 8.5, 4, 'Amazon Prime', 'Telugu'),
(3, 'Kabir Singh', 'Romance', 7.5, 3, 'Netflix', 'Hindi'),
(4, 'Super Deluxe', 'Thriller', 8.9, 2, 'Hotstar', 'Tamil'),
(5, 'KGF: Chapter 1', 'Action', 8.2, 6, 'Amazon Prime', 'Kannada'),
(6, 'Dil Bechara', 'Drama', 7.8, 4, 'Disney+', 'Hindi'),
(7, 'Sardar Udham', 'Historical', 8.8, 3, 'Amazon Prime', 'Hindi'),
(8, 'Andhadhun', 'Thriller', 8.3, 5, 'Netflix', 'Hindi'),
(9, 'Article 15', 'Drama', 8.2, 2, 'Netflix', 'Hindi'),
(10, 'Drishyam', 'Thriller', 8.6, 7, 'Hotstar', 'Malayalam'),
(11, 'Tumbbad', 'Horror', 8.3, 2, 'Amazon Prime', 'Hindi'),
(12, 'Badhaai Ho', 'Comedy', 7.9, 5, 'Hotstar', 'Hindi'),
(13, 'Shershaah', 'Biography', 8.7, 6, 'Amazon Prime', 'Hindi'),
(14, 'The White Tiger', 'Drama', 7.2, 3, 'Netflix', 'English'),
(15, 'Ratsasan', 'Thriller', 8.7, 4, 'Hotstar', 'Tamil'),
(16, 'Stree', 'Comedy', 7.6, 3, 'Netflix', 'Hindi'),
(17, 'Piku', 'Drama', 7.6, 2, 'SonyLIV', 'Hindi'),
(18, 'Gully Boy', 'Musical', 8.1, 5, 'Amazon Prime', 'Hindi'),
(19, 'Asuran', 'Action', 8.5, 4, 'Amazon Prime', 'Tamil'),
(20, 'Ludo', 'Comedy', 7.6, 3, 'Netflix', 'Hindi');


-- SELECT * FROM movie_watchlist

-- Average Rating by Movie Genre

-- SELECT movie_genre, AVG(rating) 
-- AS average_rating
-- FROM movie_watchlist
-- GROUP BY movie_genre

-- Total Views by Language
-- SELECT language, SUM(view_count)
-- FROM movie_watchlist
-- GROUP BY language

-- Highest Rated Movie on Each Platform
-- SELECT platform, movie_name, MAX(rating) AS highest_rating
-- FROM movie_watchlist
-- GROUP BY platform

--  Count of Movies by Genre with High Ratings
-- SELECT movie_genre, COUNT(id) AS count_of_high_rated_movie
-- FROM movie_watchlist
-- GROUP BY movie_genre

-- Total View Count for Hindi Movies on Netflix
-- SELECT SUM(view_count)
-- FROM movie_watchlist
-- WHERE platform = 'Netflix' AND language = "Hindi"

-- Average Rating by Platform
-- SELECT platform, AVG(rating) AS average_rating
-- FROM movie_watchlist
-- GROUP BY platform

-- Total Views by Genre for Tamil Movies
-- SELECT movie_genre, SUM(view_count) AS total_views
-- FROM movie_watchlist
-- WHERE language = 'Tamil'
-- GROUP BY movie_genre

-- Count of Movies per Language on Hotstar
-- SELECT language, COUNT(id) AS movie_count
-- FROM movie_watchlist
-- WHERE platform = "Hotstar"
-- GROUP BY language

-- Sum of View Count for Action Movies
-- SELECT SUM(view_count) AS total_views
-- FROM movie_watchlist
-- WHERE movie_genre = 'Action'

-- Average Rating of Hindi Movies by Platform
-- SELECT platform, AVG(rating)
-- FROM movie_watchlist
-- WHERE language = 'Hindi'
-- GROUP BY platform

-- Total Number of Movies with a Rating Above 8.0 by Platform
-- SELECT platform, COUNT(rating) AS total_rated_movies
-- FROM movie_watchlist
-- WHERE rating > 8.0
-- GROUP BY platform

-- Total Views by Platform for Comedy Movies
-- SELECT platform, SUM(view_count) AS total_views
-- FROM movie_watchlist
-- WHERE movie_genre = "Comedy"
-- GROUP BY platform

-- Highest Rating for Movies by Language
-- SELECT language, MAX(rating) as highest_rating
-- FROM movie_watchlist
-- GROUP BY language

--  Count of Movies by Genre in Each Language
-- SELECT language, movie_genre, COUNT(id) AS movie_count
-- FROM movie_watchlist
-- GROUP BY movie_genre

-- Average View Count for Hindi Movies by Genre
-- SELECT movie_genre, AVG(view_count) AS average_views
-- FROM movie_watchlist
-- WHERE language = 'Hindi'
-- GROUP BY movie_genre

-- Total Number of Movies per Language with a Rating Below 7.5
-- SELECT language, COUNT(id) AS low_rated_movies
-- FROM movie_watchlist
-- WHERE rating < 7.5
-- GROUP BY language

-- Average Rating of Action Movies by Language
-- SELECT language, AVG(rating) AS average_rating
-- FROM movie_watchlist
-- WHERE movie_genre = 'Action'
-- GROUP BY language

-- Total Views of Movies by Genre on Amazon Prime
-- SELECT movie_genre, SUM(view_count) AS total_views
-- FROM movie_watchlist
-- WHERE platform = 'Amazon Prime'
-- GROUP BY movie_genre

-- Total Number of Movies by Genre for Kannada Movies
-- SELECT movie_genre, COUNT(id) AS movie_count
-- FROM movie_watchlist
-- WHERE language = 'Kannada'
-- GROUP BY movie_genre

-- Average Rating by Platform for Movies with More Than 4 Views
-- SELECT platform, AVG(rating) AS average_rating
-- FROM movie_watchlist
-- WHERE view_count > 4
-- GROUP BY platform 

-- Count of Movies by Language
-- SELECT language, COUNT(id) AS movie_count
-- FROM movie_watchlist
-- GROUP BY language

-- Total View Count by Movie Name
-- SELECT movie_name, SUM(view_count) AS total_view
-- FROM movie_watchlist
-- GROUP BY movie_name

-- Highest Rating by Movie Name
-- SELECT movie_name, MAX(rating) AS highest_rating
-- FROM movie_watchlist
-- GROUP BY movie_name

-- Average View Count for Movies with Ratings Above 8.0
-- SELECT AVG(view_count) AS average_view_count
-- FROM movie_watchlist
-- WHERE rating > 8.0

-- Count of Movies by Platform and Genre
-- SELECT platform, movie_genre, COUNT(id) AS movie_count
-- FROM movie_watchlist
-- GROUP BY platform, movie_genre 

-- Movies with a Rating of 9.0 or More
-- SELECT movie_name, platform
-- FROM movie_watchlist
-- WHERE rating > 9.0

-- Average Rating for Each Genre on Netflix
-- SELECT movie_genre, AVG(rating) AS average_rating
-- FROM movie_watchlist
-- WHERE platform = 'Netflix'
-- GROUP BY movie_genre

-- Total Views for Each Genre by Language
-- SELECT language, movie_genre, SUM(view_count) AS total_views
-- FROM movie_watchlist
-- GROUP BY movie_genre

-- Count of Movies with High Ratings on Each Platform
-- SELECT platform, COUNT(id) AS count_of_high_rated_movies
-- FROM movie_watchlist
-- WHERE rating > 8.5
-- GROUP BY platform

-- Movies with Maximum Views per Genre
-- SELECT movie_genre, movie_name, MAX(view_count) AS max_views
-- FROM movie_watchlist
-- GROUP BY movie_genre

--  Average Rating for Movies in Each Language
-- SELECT language, AVG(rating) AS average_rating
-- FROM movie_watchlist
-- GROUP BY language

-- Count of Movies by Genre with a Minimum View Count
-- SELECT movie_genre, COUNT(id) AS movie_count
-- FROM movie_watchlist
-- WHERE view_count <= 3
-- GROUP BY movie_genre

-- Total Views by Movie Name on Amazon Prime
-- SELECT movie_name, SUM(view_count) AS total_views
-- FROM movie_watchlist
-- WHERE platform = 'Amazon Prime'
-- GROUP BY movie_name

-- Average View Count of Movies with a Rating Above 7.5
-- SELECT AVG(view_count) AS average_view_count
-- FROM movie_watchlist
-- WHERE rating > 7.5

-- Count of Movies by Genre with Ratings Below 7.0
-- SELECT COUNT(movie_genre) AS movie_count
-- FROM movie_watchlist
-- WHERE rating < 7.0

-- Total Views by Language and Platform
SELECT language, platform, SUM(view_count) AS total_views
FROM movie_watchlist
GROUP BY platform