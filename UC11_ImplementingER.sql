/*UC 11 : Implemetation of E-R concept*/

use payroll_services;

--Creating company table
create table company
(CompanyId int not null primary key,
CompanyName varchar(150) not null);
select * from company;
--Adding data to table
insert into company values
(1001,'Capgemini'),
(1002,'Bridgelabz');
select * from company;

--Creating employee Table
create table employee
(EmpId int not null identity(1,1) primary key,
EmpName varchar(150) not null,
Gender char(1) not null,
PhoneNo bigint not null,
Address varchar(500) not null,
StartDate date not null,
CompanyId int not null);
--Adding data to employee table
insert into employee values
('Bill','M',3456787654,'London','2018-11-28',1001),
('Terisa','F',5677893456,'Italy','2020-06-04',1001),
('Sandhu','F',2345678765,'USA','2019-06-12',1001),
('kalpesh','M',3452341234,'India','2019-07-14',1001),
('Karan','M',7898765678,'India','2020-07-04',1002);
select * from employee;

--Creating table payroll
create table payroll
(EmpId int not null primary key,
BasicPay float not null,
Deductions float not null,
TaxablePay float not null,
Tax float not null,
NetPay float not null);
--Adding data into the payroll table
insert into payroll values
(1,90000,5000,85000,5000,80000),
(2,50000,5000,45000,4000,41000),
(3,60000,4000,56000,4000,52000),
(4,90000,5000,85000,5000,80000),
(5,90000,5000,85000,5000,80000);

--Creating table department
create table department
(DeptId int not null primary key,
DeptName varchar(100) not null);
--Adding data into department table
insert into department values
(100,'Sales'),
(101,'Marketing'),
(102,'HR');

--Creating new table employee_dept to reduce many to many relation between employee and department
create table employee_dept
(EmpId int not null,
DeptId int not null);
--Adding Teressa details into table
insert into employee_dept values
(1,102),
(2,100),
(2,101),
(3,102),
(4,101),
(5,101);