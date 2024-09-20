-- Create Database

CREATE DATABASE LAB2;

-- Create Authors Table
CREATE TABLE Authors (
    AuthorID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Country TEXT
);
-- Create Books Table
CREATE TABLE Books (
    ISBN int PRIMARY KEY,
    Title TEXT NOT NULL,
    AuthorID INTEGER,
    PublishedYear INTEGER,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);
-- Create Members Table
CREATE TABLE Members (
    MemberID INTEGER PRIMARY KEY ,
    Name TEXT NOT NULL,
    Email TEXT NOT NULL
);





-------------------------------
-- Create BorrowingRecords Table
CREATE TABLE BorrowingRecords (
    BorrowID int PRIMARY KEY ,
    MemberID INTEGER,
    ISBN Int,
    BorrowDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (ISBN) REFERENCES Books(ISBN)
);


-- Insert Sample Data into Authors
INSERT INTO Authors  VALUES (001,'George Orwell', 'UK');
INSERT INTO Authors VALUES (002,'J.K. Rowling', 'UK');
INSERT INTO Authors  VALUES (003,'Gabriel García Márquez', 'Colombia');

-- Insert Sample Data into Books
INSERT INTO Books (ISBN, Title, AuthorID, PublishedYear) 
VALUES ('9780451', '1984', 1, 1949);
INSERT INTO Books (ISBN, Title, AuthorID, PublishedYear) 
VALUES ('97807475', 'Harry Potter and the Philosopher''s Stone', 2, 1997);
INSERT INTO Books (ISBN, Title, AuthorID, PublishedYear) 
VALUES ('97803073', 'One Hundred Years of Solitude', 3, 1967);

-- Insert Sample Data into Members
INSERT INTO Members  VALUES (101,'Alice Johnson', 'alice@example.com');
INSERT INTO Members  VALUES (102,'Bob Smith', 'bob@example.com');
INSERT INTO Members  VALUES (103,'Carol Davis', 'carol@example.com');

-- Insert Sample Data into BorrowingRecords
INSERT INTO BorrowingRecords 
VALUES (1,101, '9780451', '2024-09-19', '2024-09-26');
INSERT INTO BorrowingRecords 
VALUES (2,102, '97807475', '2024-09-20', NULL);
INSERT INTO BorrowingRecords 
VALUES (3,103, '97803073', '2024-09-21', NULL);

