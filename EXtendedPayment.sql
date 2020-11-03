create database Payroll_Service;
use Payroll_Service;
Select DB_NAME();

create table employee_payroll
(
ID int identity(1,1),
name varchar(25) not null,
Salary money not null,
startd date not null
);

Select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME ='employee_payroll';

insert into employee_payroll values
('Bill', 1000000.00,'2018-01-03'),
('Terissa', 20000000.00,'2019-11-13'),
('Charlie', 30000000.00,'2020-05-21');

select * from employee_payroll;

select Salary from employee_payroll where name='Bill';

select * from employee_payroll where startd between '2018-01-01' and  GETDATE(); 

Alter table employee_payroll ADD Gender char;


Select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME= 'employee_payroll';

select * from employee_payroll;

UPDATE employee_payroll SET Gender ='M' where name ='Bill' or name ='Charlie';
UPDATE employee_payroll SET Gender ='F' where name ='Terissa';


--UC8

alter table employee_payroll add phone varchar(15);
alter table employee_payroll add department varchar(50);
alter table employee_payroll add address varchar(50);
alter table employee_payroll add constraint df_address default 'India' for address;
select * from employee_payroll;
insert into employee_payroll (name, salary, startd) values
('Billi',20000.00,'2018-04-07');
insert into employee_payroll(name, salary, Gender, startd) values
('Mohan',250000.00,'M','2019-10-10');
