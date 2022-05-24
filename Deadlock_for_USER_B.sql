--user2

use pune
go 

--Step - 2
begin tran 
update emp2 set nname = 'suraj'
where id = 3


-- Step - 4
SET DEADLOCK_PRIORITY low;  
GO 
select * from emp1
where id = 3



