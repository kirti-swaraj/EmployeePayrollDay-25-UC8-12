/*UC 10 : Ability to make Terisa as part of Sales and Marketing Department*/

use payroll_services;
select * from employee_payroll;
--Add/update data into the table
update employee_payroll set 
PhoneNo=7807893842,
Address='Italy',
Department='Sales',
BasicPay=70000,
Deductions=4000,
TaxablePay=66000,
Tax=2000,
NetPay=64000
where EmpName='Terisa';
--Adding Terisa as a part of Marketing dept also
insert into employee_payroll values('Terisa','2020-06-04','F',7807893842,'Italy','Marketing',70000,4000,66000,2000,64000);
--Two rows for Terisa is created with different emp id meaning they are two different employee
select * from employee_payroll where EmpName='Terisa';
