CREATE TABLE StudentTable (
    AdmissionNo INT PRIMARY KEY,
    Firstname VARCHAR(50),
    Surname VARCHAR(50),
    DoB DATE,
    Gender CHAR(1),
    Year INT,
    Class VARCHAR(10)
);
INSERT INTO StudentTable (AdmissionNo, Firstname, Surname, DoB, Gender, Year, Class) VALUES
(68102, 'Janet', 'Baker', '1994-12-08', 'F', 7, '7w/ict'),
(68103, 'Darren', 'Kirk', '1994-12-09', 'M', 7, '7w/ict'),
(68104, 'Sophie', 'Meadows', '1993-12-10', 'F', 7, '7w/ict'),
(68105, 'Ravi', 'Patel', '1994-12-01', 'M', 7, '7w/ict'),
(68106, 'Daisy', 'Rogers', '1993-12-02', 'F', 7, '7w/ict'),
(68107, 'Tom', 'Rogers', '1993-12-02', 'M', 7, '7w/ict'),
(67998, 'Brett', 'Akers', '1994-10-01', 'M', 8, '8r/ict');


SELECT 
    Class,
    Gender,
    COUNT(*) AS student_count
FROM 
    StudentTable
GROUP BY 
    Class,
    Gender
ORDER BY 
    Class,
    Gender;