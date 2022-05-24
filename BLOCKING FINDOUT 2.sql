--DBA Role

-- there are multiple ways to findout blocking 

-- First 
Sp_who2



-- Second Way 
select * from sys.sysprocesses
where spid>50
and status <> 'sleeping'
and blocked <> 0 


-- Third Way cheack blocking_session_id column
select * from sys.dm_os_waiting_tasks
where blocking_session_id is not null


-- Fourth way to cheack blocking_session_id column

select session_id,blocking_session_id,wait_type from sys.dm_exec_requests
where blocking_session_id <> 0


DBCC inputbuffer(52)


-- to kill spid 
kill 52
