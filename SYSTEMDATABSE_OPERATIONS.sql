--show sp_config all configration details
sp_configure 'show advanced options',1
go
reconfigure
go

-- set database single access or multiple access
ALTER DATABaSE best set multi_user

--for check and get all databse names
--get all information about databses
select * from sys.databases
select * from sys.sysdatabases

-- for get list of objects
select * from sys.sysobjects

-- get all list of tables 
select * from sys.tables

--for shutdown your connection and services
SHUTDOWN
-- for get all created and built login names or list
select * from syslogins


SELECT SERVERPROPERTY('ResourceVersion');  
GO  
-- for use or select/set database
use msdb

select * from [dbo].[backupmediafamily]

select * from sysjobs

select * from sysoperators

select * from [dbo].[sysmail_profile]

--create temp table (Loacal)
create table #temp
(id int)

insert into #temp values(2)

select * from #temp


--create temp table (Global)
create table ##temp
(id int)
insert into ##temp values(2)
Go
select * from ##temp