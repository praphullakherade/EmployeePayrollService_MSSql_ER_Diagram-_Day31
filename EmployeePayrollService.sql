-- Welcome to MySql

-- UC1
create database payroll_service;
show databases;
use payroll_service;

-- UC2
use payroll_service;
create table employee_payroll(id int not null auto_increment primary key, empname varchar(25),salary double,startDate date);
desc employee_payroll;

