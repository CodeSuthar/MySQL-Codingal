CREATE TABLE IF NOT EXISTS Students (
    Student_Id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    DOB DATE,
    grade TEXT
);

INSERT INTO Students VALUES
(1001, 'Krisha Patel', 15, '2009-09-14', '11th'),
(1002, 'Aditya Suthar', 15, '2009-08-13', '11th'),
(1003, 'Vyom Varia', 15, '2009-07-12', '12th');

SELECT * FROM Students WHERE grade = '11th';
