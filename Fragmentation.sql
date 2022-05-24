use PerfDB
go
dbcc showcontig -- check Scan Density [Best Count:Actual Count] percentage


--for to findout database id
select * from sys.sysdatabases

-- for findout object id(table)
select * from sys.sysobjects
where id = 581577110


select * from sys.dm_db_index_physical_stats(5,581577110,null,null,null)
where page_count<1500

select * from sys.dm_db_index_physical_stats
(null,null,null,null,null)

--- Total 5 null values inserted here
-- First null denotes -- Database Id
-- Second null denotes -- Object Id
-- Third null denotes -- Index Id
-- Fourth null denotes -- Partitaion Number
-- Fifth null denotes -- Mode

