create database Payroll_Service4;
/*Using Database*/
use Payroll_Service4;
/*Viewing database*/
select DB_NAME();
/*Creating table*/
create table employee_payroll
(
id int identity(1,1),
name varchar(25) not null,
salary money not null,
start date not null
);
/*Displaying table details*/
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'employee_payroll';
/*Inserting data in table*/
insert into employee_payroll values
('Bill',100000.00,'2018-01-03'),
('Terissa',200000.00,'2019-11-13'),
('Charlie',300000.00,'2020-05-21');
/*Selecting all columns and rows of table*/
select * from employee_payroll;
/*Selecting salary of Bill*/
select salary from employee_payroll where name = 'Bill';
/*Selecting all employees with start date between 1/1/2018 and present date*/
select * from employee_payroll where start between '2018-01-01' and GETDATE();
/*Add extra column of gender*/
Alter table employee_payroll
Add gender char;
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'employee_payroll';
/*Update gender of employees*/
update employee_payroll set gender = 'M' where name = 'Bill' or name = 'Charlie';
update employee_payroll set gender = 'F' where name = 'Terissa';
select * from employee_payroll;
/*Sum of salary of all males*/
select sum(salary) as sum_of_salary, avg(salary) as avg_of_salary,
min(salary) as min_of_salary, max(salary) as max_of_salary, count(name) as number_of_female_employees
from employee_payroll where gender = 'F' 
group by gender

select sum(salary) as sum_of_salary, avg(salary) as avg_of_salary,
min(salary) as min_of_salary, max(salary) as max_of_salary, count(name) as number_of_male_employees
from employee_payroll where gender = 'M' 
group by gender;

alter table employee_payroll
sp_rename 'employee_payroll.salary', 'net_pay';

alter table employee_payroll
add basic_pay money default 40000,
add taxable_pay money default 0,
add income_tax money default 0

insert into employee_payroll (name, net_pay, start) values
('Sam',20000.00,'2018-04-07');
insert into employee_payroll(name, net_pay, gender, start) values
('Naman',250000.00,'M','2019-10-10')

select * from employee_payroll;
ALTER PROCEDURE [DBO].[SPADDEMPLOYEEDETAILS]
(
@EMPLOYEENAME VARCHAR(255),
@ADDRESS VARCHAR(255),
);