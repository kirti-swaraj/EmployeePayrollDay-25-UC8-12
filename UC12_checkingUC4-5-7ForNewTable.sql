-- uc12 Check uc4 ,uc5, uc7 again
use payroll_services;
-- Rechecking uc 4 get salary of all employees
select EmpName,NetPay from employee,payroll
where employee.EmpId = payroll.EmpId

--Rechecking UC5 - retrieve salary of particular employee or with start date range
select EmpName,NetPay from employee,payroll
where EmpName = 'Terisa' and employee.EmpId = payroll.EmpId

-- Rechecking to Get within a given date range
select EmpName,StartDate,NetPay from employee,payroll
where StartDate between cast('2019-01-01' as date) and cast(getdate() as date) and
employee.EmpId = payroll.EmpId

--rechecking Uc7 min max salaries
select * from employee E
Inner join(
select P.NetPay,P.EmpId from payroll P
inner Join(select max(NetPay) as Maxpay from payroll) P1 
on P1.Maxpay = P.NetPay ) E1 on  E1.EmpId = E.EmpId

select * from employee E
Inner join(
select P.NetPay,P.EmpId from payroll P
inner Join(select min(NetPay) as MinPay from payroll) P1 
on P1.MinPay = P.NetPay ) E1 on  E1.EmpId = E.EmpId
