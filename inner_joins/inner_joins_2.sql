/*

Display the titles of all books along with the names of libraries where the library name contains 'Public'.
SELECT b.title, l.library_name
FROM books b
INNER JOIN libraries l ON b.library_id = l.id
WHERE l.library_name LIKE '%Public%';

*/

CREATE TABLE libraries (
    id INTEGER PRIMARY KEY,
    library_name TEXT,
    location TEXT,
    established_year INTEGER,
    contact_number TEXT
);

INSERT INTO libraries (id, library_name, location, established_year, contact_number) VALUES
(1, 'Delhi Public Library', 'Delhi', 1951, '011-23711200'),
(2, 'Asiatic Library', 'Mumbai', 1804, '022-22660099'),
(3, 'State Central Library', 'Kolkata', 1835, '033-22488398'),
(4, 'Connemara Public Library', 'Chennai', 1896, '044-28193751'),
(5, 'British Council Library', 'Bangalore', 1960, '080-22533005');

CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    title TEXT,
    author TEXT,
    genre TEXT,
    library_id INTEGER,
    FOREIGN KEY (library_id) REFERENCES libraries (id)
);

INSERT INTO books (id, title, author, genre, library_id) VALUES
(1, 'The White Tiger', 'Aravind Adiga', 'Fiction', 1),
(2, 'God of Small Things', 'Arundhati Roy', 'Fiction', 2),
(3, 'Midnight''s Children', 'Salman Rushdie', 'Historical', 3),
(4, 'The Guide', 'R.K. Narayan', 'Fiction', 1),
(5, 'The Namesake', 'Jhumpa Lahiri', 'Fiction', 2),
(6, 'The Palace of Illusions', 'Chitra B. Divakaruni', 'Mythology', 4),
(7, 'The Immortals of Meluha', 'Amish Tripathi', 'Mythology', 5),
(8, 'Train to Pakistan', 'Khushwant Singh', 'Historical', 3),
(9, 'Shiva Trilogy', 'Amish Tripathi', 'Mythology', 4),
(10, 'Gitanjali', 'Rabindranath Tagore', 'Poetry', 2),
(11, 'A Suitable Boy', 'Vikram Seth', 'Fiction', 1),
(12, 'In Custody', 'Anita Desai', 'Fiction', 2),
(13, 'The Blue Umbrella', 'Ruskin Bond', 'Children''s Fiction', 3),
(14, 'Malgudi Days', 'R.K. Narayan', 'Short Stories', 4),
(15, 'Five Point Someone', 'Chetan Bhagat', 'Fiction', 5),
(16, 'I Too Had a Love Story', 'Ravinder Singh', 'Romance', 1),
(17, 'The Secret of the Nagas', 'Amish Tripathi', 'Mythology', 4),
(18, 'My Experiments with Truth', 'Mahatma Gandhi', 'Autobiography', 3),
(19, 'Wings of Fire', 'A.P.J. Abdul Kalam', 'Autobiography', 5),
(20, 'Ignited Minds', 'A.P.J. Abdul Kalam', 'Inspiration', 2);

-- SELECT * FROM libraries
-- SELECT * FROM books

-- List All Books Available in 'Delhi Public Library'
-- SELECT b.title, b.author
-- FROM libraries l
-- INNER JOIN books b ON l.id = b.library_id
-- WHERE l.library_name = 'Delhi Public Library'

-- Find All Books in 'Chennai' Libraries
-- SELECT b.title, b.author, b.genre
-- FROM libraries l
-- INNER JOIN books b ON l.id = b.library_id
-- WHERE l.location = 'Chennai'

-- List Books by 'Amish Tripathi' Along with Their Library Names
-- SELECT b.title
-- FROM libraries l
-- INNER JOIN books b ON l.id = b.library_id
-- WHERE b.author = 'Amish Tripathi'

-- Find Historical Books in 'Kolkata' Libraries
-- SELECT b.title, b.genre
-- FROM libraries l
-- INNER JOIN books b ON l.id = b.library_id
-- WHERE l.location = 'Kolkata' AND genre = 'Historical'

-- List All Books Along with the Libraries They Belong To
-- SELECT b.title, l.library_name
-- FROM libraries l
-- INNER JOIN books b ON l.id = b.library_id

-- Find Books in 'Mumbai' Libraries by 'Arundhati Roy'
-- SELECT b.title, b.genre
-- FROM libraries l
-- INNER JOIN books b ON l.id = b.library_id
-- WHERE l.location = 'Mumbai' AND b.author = 'Arundhati Roy'

-- List All Books and Libraries Where Library Name Contains 'Public'
-- SELECT b.title, l.library_name
-- FROM libraries l
-- INNER JOIN books b ON l.id = b.library_id
-- WHERE l.library_name LIKE '%Public%'

-- Total Number of Books Across All Libraries
-- SELECT COUNT(b.id) AS total_books
-- FROM libraries l
-- INNER JOIN books b ON l.id = b.library_id

-- Total Number of Books by 'Salman Rushdie'
-- SELECT COUNT(b.id) AS total_count
-- FROM libraries l
-- INNER JOIN books b ON l.id = b.library_id
-- WHERE b.author = 'Salman Rushdie'

-- Count of Books in Libraries Located in 'Delhi'
-- SELECT COUNT(b.id) AS book_count
-- FROM libraries l
-- INNER JOIN books b ON l.id = b.library_id
-- WHERE l.location = 'Delhi'

-- Number of Books in Libraries Established After 1950
-- SELECT COUNT(b.id) AS number_of_books
-- FROM libraries l
-- INNER JOIN books b ON l.id = b.library_id
-- WHERE l.established_year > 1950

-- Count of Fiction Books in 'Mumbai' Libraries
SELECT COUNT(b.id) AS book_count
FROM libraries l
INNER JOIN books b ON l.id = b.library_id
WHERE b.genre = 'Fiction' AND l.location = 'Mumbai'