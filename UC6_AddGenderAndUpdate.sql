/*UC 6 : Adding gender to employee payroll table and update rows to display correct emp gender*/
use payroll_services;
select * from employee_payroll;
/* Alter the table to add new colulmn*/
alter table employee_payroll add Gender char(1);
/*Update the newly created column*/
update employee_payroll set Gender='M' where EmpName ='Bill' or EmpName ='Kalpesh';
update employee_payroll set Gender='F' where EmpName ='Terisa' or EmpName ='Sandhu';