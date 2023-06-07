create database bank;
use bank;
create table bank(id int,bank_name varchar(10),bank_branch varchar(20),branch_no int,branch_name varchar(20),location varchar(10),ac_holder_name varchar(10), age int,address varchar(30),ac_no int,ac_type varchar(10),atm_card varchar(30),credit_card varchar(30),loan varchar(30),nomene varchar(20));
select * from bank;


/*add 4 new coloumn*/
alter table bank add column ac_holder_phno int;
alter table bank add column ac_holder_phno int;
alter table bank add column ac_holder_phno int;
