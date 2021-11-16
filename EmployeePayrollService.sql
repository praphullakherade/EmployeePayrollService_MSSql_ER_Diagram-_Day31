-- Welcome to MySql

-- UC1
create database payroll_service;
show databases;
use payroll_service;

-- UC2
use payroll_service;
create table employee_payroll(id int not null auto_increment primary key, empname varchar(25),salary double,startDate date);
desc employee_payroll;

-- UC3
use payroll_service;
insert into employee_payroll(empname,salary,startDate) values('Sachin',1200,'2021-01-30');
insert into employee_payroll(empname,salary,startDate) values('Rohit',12000,'2020-10-21');
insert into employee_payroll(empname,salary,startDate) values('Virat',5263,'2016-5-4');
insert into employee_payroll(empname,salary,startDate) values('Kapil',78965,'2012-5-7');
insert into employee_payroll(empname,salary,startDate) values('Hardik',7412,'2016-1-6');

-- UC4
select * from employee_payroll;

-- UC5
select salary from employee_payroll where empname='Rohit';
select * from employee_payroll where startDate between cast('2017-01-05' as date) and date(now());

-- UC6 
desc employee_payroll;
alter table employee_payroll add column gender varchar(1) after empname;
update employee_payroll set gender='M' where id>=1;
select * from employee_payroll;

-- UC7
insert into employee_payroll(empname,gender,salary,startDate) values('Aditi','F',1000000,'2015-7-10');
insert into employee_payroll(empname,gender,salary,startDate) values('Rutika','F',8500,'2018-6-21');
insert into employee_payroll(empname,gender,salary,startDate) values('Smurti','F',78512,'2021-7-27');
select * from employee_payroll;

select sum(salary) from employee_payroll where gender='M' group by gender;
select avg(salary) from employee_payroll where gender='M' group by gender;
select min(salary) from employee_payroll where gender='M' group by gender;
select max(salary) from employee_payroll where gender='M' group by gender;
select count(salary) from employee_payroll where gender='M' group by gender;

select sum(salary) from employee_payroll where gender='F' group by gender;
select avg(salary) from employee_payroll where gender='F' group by gender;
select min(salary) from employee_payroll where gender='F' group by gender;
select max(salary) from employee_payroll where gender='F' group by gender;
select count(salary) from employee_payroll where gender='F' group by gender;

-- UC8
alter table employee_payroll add phoneNumber varchar(250) after empname;
alter table employee_payroll add address varchar(250) after phoneNumber;
alter table employee_payroll add department varchar(250) not null after address;
alter table employee_payroll alter address set default 'TBD';
desc employee_payroll;
select * from employee_payroll;

-- UC9
alter table employee_payroll rename column salary to basicPay;
alter table employee_payroll add deductions double not null after basicPay;
alter table employee_payroll add texablePay double not null after deductions;
alter table employee_payroll add tax double not null after texablePay;
alter table employee_payroll add netPay double not null after tax;
desc employee_payroll;

-- UC10
select * from employee_payroll where empname = 'Aditi';
update employee_payroll set department = 'sales' where id=7;
insert into employee_payroll(empname,department,gender,basicPay,deductions,texablePay,tax,netPay,startDate) values('Aditi', 'marketting', 'F', 1000000, 75000, 60000, 900000, 780000, '2018-08-30');

delete from employee_payroll where id = 11;

-- UC 11
create table employee_department(emp_id int not null auto_increment primary key, dept_id int not null);
insert into employee_department(emp_id, dept_id) values(1, 101);
insert into employee_department(emp_id, dept_id) values(2, 102);
insert into employee_department(emp_id, dept_id) values(3, 103);
insert into employee_department(emp_id, dept_id) values(4, 104);
insert into employee_department(emp_id, dept_id) values(5, 105);
insert into employee_department(emp_id, dept_id) values(6, 106);
insert into employee_department(emp_id, dept_id) values(7, 107);
insert into employee_department(emp_id, dept_id) values(8, 108);
insert into employee_department(emp_id, dept_id) values(9, 109);
insert into employee_department(emp_id, dept_id) values(10, 110);
select * from employee_department;