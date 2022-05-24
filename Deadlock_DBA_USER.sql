-- DBA There are tow ways to enable deadlock flag 1.temprory 2. permently 
-- 1. in temprory way you can set deadlock flag through dbcc command its a particular session only 
-- and globally, when restart sqlserverices that time its automatically goes to normal state it 
-- means desable.
-- 2. in perment way you can enable through add deadlock flag in startup parameter ..

-- for check dead lock flag activate or not value 1 for activate value 0 for deactivate
dbcc tracestatus(1222,1204)

-- To on deadlock flag on 1222  value (-1 for globally, 1 for session only)
dbcc traceon(1222,1)

-- To on deadlock flag on 1204 (-1 for globally, 1 for session only)

dbcc traceon(1204,-1)

dbcc tracestatus(1222,1204)

-- To OFF deadlock flag on 1222  value (-1 for globally, 1 for session only)
dbcc traceoff(1204,0)
dbcc traceoff(1222,0)
DBCC TRACEOFF (1204,-1)


-- for enable permentaly deadlock with using add startup parameter with -T1222, -T1204
-- go to configuration manager and add startup parameter 

-- findout deadlock error another way


Exec XP_ReadErrorLog 0
Exec XP_ReadErrorLog 0, 1
Exec XP_ReadErrorLog 0, 1, 'deadlock'
Exec XP_ReadErrorLog 0, 1, 'deadlock', 'MDW'


SET DEADLOCK_PRIORITY { LOW | NORMAL |HIGH | @deadlock_var }



SELECT deadlock_priority FROM sys.dm_exec_sessions


