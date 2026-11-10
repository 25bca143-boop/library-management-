
USE library_management;

-- ADD MEMBERS
INSERT INTO members
(full_name, email, phone, joined_on)
VALUES
('Rahul Kumar', 'rahul@gmail.com', '9876543210', '2026-01-10'),
('Priya Sharma', 'priya@gmail.com', '9876543211', '2026-01-12'),
('Arun Kumar', 'arun@gmail.com', '9876543212', '2026-02-01');

-- ADD BOOKS
INSERT INTO books
(title, author, category, isbn,
total_copies, available_copies)
VALUES
('Python Programming', 'Guido', 'Programming', '10001', 5, 4),
('Java Programming', 'James Gosling', 'Programming', '10002', 4, 4),
('Data Science', 'John Smith', 'Education', '10003', 3, 3),
('Artificial Intelligence', 'Russell', 'Technology', '10004', 6, 6),
('Database Management', 'Raghu', 'Database', '10005', 2, 2);

-- ADD STAFF
INSERT INTO staff
(full_name, username, email)
VALUES
('Library Admin', 'admin', 'admin@gmail.com');

-- ISSUE BOOKS
INSERT INTO loans
(member_id, book_id, issue_date, due_date, status)
VALUES
(1, 1, '2026-11-01', '2026-11-15', 'Issued'),
(2, 2, '2026-11-02', '2026-11-16', 'Issued');

-- DISPLAY RECORDS
SELECT * FROM members;
SELECT * FROM books;
SELECT * FROM staff;
SELECT * FROM loans;
