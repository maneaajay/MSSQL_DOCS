-- User A

-- To create deadlock sennario
use pune
go
-- setp - 1
begin tran 
update emp1 set nname = 'ajay'
where id = 3

--Step - 3
select * from emp2
where id = 3


