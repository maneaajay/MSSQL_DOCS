--DBA

sp_who2 -- findout whos responsible for blocking throgh sp_who2 50+
sp_who2 57

-- User A is responsible for blocking 

-- findout which query is responsible for blocking using DBCC command
dbcc inputbuffer(56) 


--for killing responsible blocking spid using kill(spid)
kill 56 


-- another way to findout which one is responsible 
select * from sys.sysprocesses
where spid >50
and status <> 'sleeping'
and blocked<> 0



-- another way to findout which one is responsible from cloumn [Blocking_Session_Id]

select * from sys.dm_os_waiting_tasks


-- another way to findout which one is responsible from cloumn [Blocking_Session_Id]

select * from sys.dm_exec_requests

--done
