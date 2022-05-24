use [PerfDB]
-- to check which lock is put
sp_MONITOR


select * from sys.objects
where object_id = 901578250

select * from sys.dm_tran_locks
where resource_database_id=10

