
-- findout long running quries
--long running query 
select 
SQLtext.text, 
req.session_id,
req.command,
req.cpu_time,
req.total_elapsed_time
From
sys.dm_exec_requests req
cross apply sys.dm_exec_sql_text (SQL_handle) as sqltext
order by CPU_Time desc





--- we can find open tran with particular database to check open tran  
--first select particular database
dbcc opentran()



select * from sys.syslogins
where sid= 0xafa2aa765a6e234e8a1de44fbe8d715c
-- Get 
sp_who2

-- to check which query in long running 
dbcc inputbuffer(57)

