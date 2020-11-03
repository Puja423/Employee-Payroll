create database payroll_serVICE5
USE PAYROLL_SERVICE5;
SELECT DB_NAME()
--UC2

CREATE TABLE EMPLOYEE_PAYROLL
(
ID INT IDENTITY (1,1),
NAME VARCHAR(25) NOT NULL,
SALARY MONEY NOT NULL,
START DATE NOT NULL,
);
SELECT *FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME ='EMPLOYEE_PAYROLL';
--uc3
INSERT INTO EMPLOYEE_PAYROLL VALUES
('Bill',100000.00,'2018-01-03'),
('Terissa',200000.00,'2019-11-13'),
('Charlie',300000.00,'2020-05-21');
SELECT *FROM EMPLOYEE_PAYROLL
--UC4
SELECT SALARY FROM EMPLOYEE_PAYROLL WHERE NAME='BILL'
--UC5
SELECT * FROM EMPLOYEE_PAYROLL WHERE START BETWEEN '2018-01-01' AND GETDATE();

--UC6
ALTER TABLE EMPLOYEE_PAYROLL add gender VARCHAR;
commit;
SELECT *FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME ='EMPLOYEE_PAYROLL';
UPDATE EMPLOYEE_PAYROLL SET gender ='M' WHERE NAME ='BILL' OR  NAME ='CHARLIE';
UPDATE EMPLOYEE_PAYROLL SET gender ='F' WHERE NAME = 'TERISSA';
SELECT * FROM EMPLOYEE_PAYROLL;
--UC7
SELECT SUM(SALARY) FROM EMPLOYEE_PAYROLL WHERE gender ='F'
group BY gender;

SELECT AVG(SALARY) FROM EMPLOYEE_PAYROLL WHERE gender = 'F' GROUP BY gender;
SELECT MIN(SALARY) FROM EMPLOYEE_PAYROLL WHERE gender = 'F'GROUP BY gender;
SELECT MAX(SALARY) FROM EMPLOYEE_PAYROLL WHERE gender = 'F' GROUP BY gender;
SELECT COUNT(SALARY) FROM EMPLOYEE_PAYROLL WHERE gender ='F' GROUP BY gender;

SELECT SUM(SALARY),AVG(SALARY),MIN(SALARY),MAX(SALARY),COUNT(SALARY) FROM EMPLOYEE_PAYROLL
WHERE gender = 'M' GROUP BY gender;
--UC8
select * from employee_payroll;
ALTER TABLE EMPLOYEE_PAYROLL ADD PHONE_NUMBER VARCHAR(25);
ALTER TABLE EMPLOYEE_PAYROLL ADD DEPARTMENT VARCHAR(25)
SELECT * FROM employee_payroll
ALTER TABLE EMPLOYEE_PAYROLL ADD ADDRESS VARCHAR(150);
ALTER TABLE EMPLOYEE_PAYROLL ADD CONSTRAINT DF_ADDRESS DEFAULT 'INDIA' FOR ADDRESS
SELECT * FROM EMPLOYEE_PAYROLL;
 INSERT into employee_payroll (name, salary, start) values
('Billi',20000.00,'2018-04-07');
insert into employee_payroll(name, salary, gender, start) values
('Mohan',250000.00,'M','2019-10-10');
--UC9
alter table employee_payroll add deduction float, taxable_pay real, income_tax real, net_pay real
EXEC sp_rename 'employee_payroll.salary', 'basic_pay', 'COLUMN';

--UC10
UPDATE EMPLOYEE_PAYROLL SET DEPARTMENT = 'SALES' WHERE ID =1;
UPDATE EMPLOYEE_PAYROLL SET DEPARTMENT = 'MARKETING' WHERE ID =2;
insert into employee_payroll (name, start, basic_pay, department) values
('Terissa', '2019-11-13', '200000', 'Sales');
select * from employee_payroll

--UC11
CREATE TABLE EMPLOYEEDEPARTMENT
(
ID INT IDENTITY NOT NULL,
NAME VARCHAR(25) NOT NULL,
DEPARTMENT VARCHAR(25)NOT NULL,
);
INSERT INTO EMPLOYEEDEPARTMENT VALUES
('1','BILL','SALES'),
('2','TERISSA','MARKETING'),
('2','CHARLIE','SALES'),
('3','TERISSA','SALES'),
('1','BILL','MARKETING');

CREATE TABLE EMPLOYEE
(
ID  INT IDENTITY (1,1),
NAME VARCHAR(50)NOT NULL,
GENDER VARCHAR(1)NOT NULL,
PHONENUMBER VARCHAR(25) NOT NULL,
ADDRESS VARCHAR(250)NOT NULL DEFAULT 'INDIA'
);
INSERT INTO employee VALUES
('Bill', 'M', '9424787443', 'MATA MANDIR'),
('Terissa', 'F', '8109322276', 'NEW MARKET'),
('Charlie', 'M', '9926707344', 'TT NAGAR')

create table Payroll
(
Id int not null,
Name varchar(25) not null,
Start date not null,
Basic_pay money not null,
Deduction money,
Taxable_pay money,
Income_tax money,
Net_pay money not null
);
SELECT *FROM EMPLOYEEDEPARTMENT
SELECT *FROM EMPLOYEE
SELECT *FROM Payroll

