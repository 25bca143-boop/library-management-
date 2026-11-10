
-- LIBRARY MANAGEMENT SYSTEM
-- Create Database

CREATE DATABASE IF NOT EXISTS library_management;

USE library_management;

-- MEMBERS TABLE
CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE,
    phone VARCHAR(20),
    joined_on DATE
);

-- BOOKS TABLE
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author VARCHAR(100),
    category VARCHAR(60),
    isbn VARCHAR(20) UNIQUE,
    total_copies INT DEFAULT 1,
    available_copies INT DEFAULT 1
);

-- LOANS TABLE
CREATE TABLE loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    book_id INT,
    issue_date DATE,
    due_date DATE,
    return_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (member_id)
        REFERENCES members(member_id),
    FOREIGN KEY (book_id)
        REFERENCES books(book_id)
);

-- STAFF TABLE
CREATE TABLE staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    username VARCHAR(50) UNIQUE,
    email VARCHAR(120)
);

-- DISPLAY TABLES
SHOW TABLES;

SELECT * FROM members;
SELECT * FROM books;
SELECT * FROM loans;
SELECT * FROM staff;

-- SEARCH BOOKS
SELECT * FROM books
WHERE title LIKE '%Python%';

-- AVAILABLE BOOKS
SELECT * FROM books
WHERE available_copies > 0;

-- ISSUED BOOKS
SELECT * FROM loans
WHERE status = 'Issued';
