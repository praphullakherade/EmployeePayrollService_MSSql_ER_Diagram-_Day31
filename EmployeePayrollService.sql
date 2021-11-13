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