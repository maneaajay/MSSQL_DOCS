--MIRROR SERVER
--create same database name on bothh serevers
create database FAN
--------------------------------------------------
sp_helpdb FAN
--------------------------------------------------

--restore full and log database with norecovery option
restore database FAN
from disk = 'E:\full_FAN.bak'
with move 'FAN' to 'E:\SQL01\DATA\FAN.mdf',
move 'FAN_log' to 'E:\SQL01\LOG\FAN_log.ldf',replace, norecovery
go
--------------------------------------------------

--restore tlog backup with norecovery option
restore log FAN
from disk = 'E:\tlog_FAN.trn' with norecovery
--------------------------------------------------


-- FIRST need to restore full and diffrential database on mirror server 
-- with norecovery option
-- HANDSHAKE METHOD FROM PRIMARY TO MIRROR SERVER
-- configure mirroring through Script

alter database FAN
set partner = 'TCP://DESKTOP-GKIPOD8:5022'
--------------------------------------------------



---Safety FULL with Witness :
--   Well the answer for this ‘depends on the mode in which mirroring is configured’. 
--   If mirroring is configured in High Availability mode (Full safety) then we don’t
--   need to worry about failover as the mirror server will form a quorum with witness 
--   and will initiate an automatic failover. The safety level can be set using the below command,

ALTER DATABASE dbname SET SAFETY FULL
ALTER DATABASE dbname SET SAFETY OFF
------------------------------------------------------------------------------------------------------------

--Safety OFF :
-- For example, prior to the failure, Server_A and Server_B acted as principal and mirror respectively.
-- Server_A fails. You need to execute the following on Server_B to make the database service available:
ALTER DATABASE FAN SET PARTNER FORCE_SERVICE_ALLOW_DATA_LOSS

------------------------------------------------------------------------------------------------------------


--Safety FULL without Witness :
--This scenario provides high safety, but automatic failover is not allowed.
-- This mode is called as High Protection mode. In the event of failure of the 
--principal, the database service becomes unavailable. 
--You need manual intervention to make the database service available. 
--You must break the mirroring session and then recover the mirror database.
--**For example, prior to the failure,Server_A and Server_B acted as principal
--  and mirror respectively. Server_A fails.You need to execute
--  the following on Server_B to make the database service available:**
ALTER DATABASE FAN SET PARTNER OFF
RESTORE DATABASE FAN WITH RECOVERY

------------------------------------------------------------------------------------------------------------
