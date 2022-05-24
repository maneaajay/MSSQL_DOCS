--PRIMARY SEREVER
--create Database
create database FAN
--------------------------------------------------

--take full and differential backup 
use master
go 
backup database FAN to disk = 'E:\full_FAN.bak'
go
backup log FAN to disk = 'E:\tlog_FAN.trn'
--------------------------------------------------


--HANDSHAKE METHOD FROM PRIMARY TO MIRROR SERVER
alter database FAN
set partner = 'TCP://DESKTOP-GKIPOD8:5023'
--------------------------------------------------

