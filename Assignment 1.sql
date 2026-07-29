create database employee;
use employee;

Create Table departments (
Department_ID int Primary Key ,
Department_Name varchar(50));

Create Table Location (
Location_ID int Primary key ,
Location varchar(50));

Create Table employees (
Employee_ID Int Primary key ,
Employee_Name Varchar(50),
Gender Enum("M","F"),
Age int,
Hire_Date date,
designation Varchar(50),
Department_ID int,
Location_ID int,
Salary decimal(10,2));

alter Table employees Add Column Email varchar(100);
Alter Table employees Modify Column designation Varchar (200);
Alter Table employees Drop Column Age;
Alter Table employees Rename Column Hire_Date to Date_of_Joining;

Rename Table departments to Departments_Info;
Rename Table location to Locations;

Truncate Table employees;
Drop Table employees;
Drop Database employee;

Create database employee;
use employee;

Create Table Departments (
Department_ID int Primary Key,
Department_Name Varchar(100) not null unique );

Create Table location (
Location_ID int Primary Key auto_increment,
Location Varchar(50) Not Null Unique);

Create Table employees (
Employee_ID int Primary Key,
Employee_Name Varchar(50) not null,
Gender enum("M","F") not null,
Age Int check (age >=18),
Hire_Date Date default (current_date),
Designation Varchar(100),
Department_ID INT ,
Location_ID INT ,
Salary decimal(10,2),
Foreign Key (Department_ID) references departments(Department_ID),
Foreign Key (Location_ID) references location(Location_ID));


