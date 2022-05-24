
--Current CPU (to check which spid is gave high CPU)

select * from sys.sysprocesses

where spid >50 and status<>'sleeping'

order by CPU desc

 

-- CPU threading 

select spid , count(spid)  from sys.sysprocesses

where spid >50 and status<>'sleeping'

group by spid

having COUNT(spid)>1

 

 

 -- For findout which packet in lastwaittype (95% to 98% ) is showing CXPACKET

select spid , lastwaittype, count(spid)  from sys.sysprocesses

where spid >50 and status<>'sleeping'

group by spid,lastwaittype

having COUNT(spid)>1

 

 

 

-- Chck Excution Plan for top SPID for make decision Indexing are available or not 

SELECT * FROM sys.dm_exec_requests qs CROSS APPLY sys.dm_exec_query_plan(qs.plan_handle)

where session_id=76


-- for findout Program name, loginby, db_name, command and cputime
sp_who2 76


-- for findout which query is long running 
DBCC inputbuffer(76)