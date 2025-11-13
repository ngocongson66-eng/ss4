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