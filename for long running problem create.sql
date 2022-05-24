use PerfDB
go
begin tran 
update emp set name = 'ajay'
where id = 100

rollback