create database CompanyDB;
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
    ('Lê', 'Hoàng C', '2024-05-20', 7000000);
