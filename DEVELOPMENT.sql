CREATE DATABASE EMP
create table emp
(id int not null,
name nvarchar(50) NOT null,
deptid int not null);
use EMP
insert into EMP
values
	(1,'ABS',100),
	(2,'B',100),
	(3,'c',100),
	(4,'d',200)

	select  * from emp


create database dept
use dept
select * from dept
create table dept(depid int,deptname nvarchar(50))
insert into dept
values(100,'HR'),
(100,'DBA'),
(100,'ML')

use emp
update emp set deptid=101
where id =2
go
begin tran --  for data 
delete from emp where id=4
go
rollback -- for undo data
commit --  for succesfully execute your code 
select * from emp;;
