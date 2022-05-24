--create database--
create database TestDB1

--use database--
use TestDB1

--if you want to delete Use Database, so first use Master and then delete/drop database

use master
--Drop Database--
drop database TestDB1

--get backup of database Full,Diffrential and log --
--First Full backup--
BACKUP database testDB to disk='E:\Backup\testDB.bak'

--Diffrential Backup --

backup database testDB to disk='E:\testDB_diff.bak' with differential

--log backup--]
backup log testDB to disk='E:\testDB_log.trn'

drop database testDB

--restore databse--
restore database testDB from disk= 'E:\testDB.bak' with replace



