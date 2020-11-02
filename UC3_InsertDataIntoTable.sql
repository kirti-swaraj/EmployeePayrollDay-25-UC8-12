 /* UC 3 : Insert data into the table */
/*  Using the payroll_service database */
use payroll_services;
/* Creating a table */
create table employee_payroll
(EmpID int not null identity(1,1) primary key,
EmpName varchar(150) not null,
Salary float not null,
StartDate date not null
);
/* Inserting data into table */
insert into employee_payroll(EmpName,Salary,StartDate) values
('Bill',40000,'2018-11-28'),
('Sandhu',55000,'2019-06-12'),
('Kalpesh',20000,'2019-07-14'),
('Terisa',35000,'2020-06-04');
