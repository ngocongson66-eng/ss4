create database CompanyDB;
SET SQL_SAFE_UPDATES = 0;
use CompanyDB;
create table Employees( 
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
);

ALTER TABLE Employees
ADD COLUMN HireDate DATE;
ALTER TABLE Employees
ADD COLUMN Salary INT;
USE CompanyDB;
INSERT INTO Employees (FirstName, LastName, HireDate, Salary) VALUES
    ('Nguyễn', 'Văn A', '2023-01-15', 6000000),
    ('Trần', 'Thị B', '2022-11-01', 8500000),
    ('Lê', 'David', '2024-05-20', 7000000);
UPDATE Employees
SET Salary = 4800
WHERE EmployeeID = 2;
UPDATE Employees
SET HireDate = '2021-08-01'
WHERE FirstName = 'David';
DELETE FROM Employees
WHERE EmployeeID = 1;
DELETE FROM Employees
WHERE Salary < 5000;
SELECT * FROM Employees;
SELECT *
FROM Employees
WHERE Salary > 5000;
SELECT *
FROM Employees
WHERE Salary > 5000
ORDER BY HireDate DESC;
