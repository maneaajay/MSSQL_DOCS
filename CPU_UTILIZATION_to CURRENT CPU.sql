 

--Current CPU

select * from sys.sysprocesses

where spid >50 and status<>'sleeping'

order by CPU desc

 

-- CPU threading

select spid , count(spid)  from sys.sysprocesses

where spid >50 and status<>'sleeping'

group by spid

having COUNT(spid)>1

 

 

 

select spid , lastwaittype, count(spid)  from sys.sysprocesses

where spid >50 and status<>'sleeping'

group by spid,lastwaittype

having COUNT(spid)>1

 

 

 

-- Chck Plan for top SPID

SELECT * FROM sys.dm_exec_requests qs CROSS APPLY sys.dm_exec_query_plan(qs.plan_handle)

where session_id=58

