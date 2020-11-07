use payroll_service5;
CREATE TABLE [dbo].[spAddEmployeeDetails]
(
EmployeeName varchar(255),
PhoneNumber varchar(255),
addreess varchar(255),
Department varchar(255),
Gender char(1),
BasicPay float,
Deductions float,
TaxablePay float,
Tax float,
NetPay float,
StartDate Date
) 

insert into [dbo].[spAddEmployeeDetails] values
(
'EmployeeName','PhoneNumber', 'addreess','Department','Gender','BasicPay', 'Deductions','TaxablePay','Tax','NetPay','StartDate'
)
drop table [dbo].[spAddEmployeeDetails]

