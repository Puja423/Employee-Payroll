create database Payroll_Service;
use Payroll_Service;
Select DB_NAME();

--create table employee_payroll
--(
--ID int identity(1,1),
--Fname varchar(25) not null,
--Salary money not null,
--startd date not null
--);

--Select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME ='employee_payroll';

--insert into employee_payroll values
--('Bill', 1000000.00,'2018-01-03'),
--('Terissa', 20000000.00,'2019-11-13'),
=--'Charlie', 30000000.00,'2020-05-21');

--select * from employee_payroll;

--select Salary from employee_payroll where Fname='Bill';

--select * from employee_payroll where startd between '2018-01-01' and  GETDATE(); 

--Alter table employee_payroll ADD Gender char;


--Select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME= 'employee_payroll';

--select * from employee_payroll;

--UPDATE employee_payroll SET Gender ='M' where Fname ='Bill' or Fname ='Charlie';
--UPDATE employee_payroll SET Gender ='F' where Fname ='Terissa';

--select * from employee_payroll;
