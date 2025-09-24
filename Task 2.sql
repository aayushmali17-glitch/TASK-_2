CREATE TABLE BK (
    BookID INTEGER PRIMARY KEY,
    Title TEXT NOT NULL,
    Author TEXT,
    PublishedYear INTEGER,
    Genre TEXT,
    CopiesAvailable INTEGER
);


-- Insert complete records
INSERT INTO BK (BookID, Title, Author, PublishedYear, Genre, CopiesAvailable)
VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Novel', 5),
(2, 'To Kill a Mockingbird', 'Harper Lee', 1960, 'Fiction', 3);

-- Insert with NULL values (handling missing info)
INSERT INTO BK (BookID, Title, Author, PublishedYear, Genre, CopiesAvailable)
VALUES
(3, 'Untitled', NULL, NULL, 'Unknown', 0);

select * from Bk

-- Update NULL author to actual name
update BK
SET Author = 'Unknown Author' ,
WHERE Author IS NULL;

-- Delete a book with no copies available
DELETE FROM BK
WHERE CopiesAvailable = 0;
