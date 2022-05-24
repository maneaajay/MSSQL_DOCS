-- We can set min - max memory two ways 1. Graphical Through 2. Script Through
--1. Object Explorer --> Right click instanance --> properties --> memory --> set min-max memory

-- first check how much memory set through sp_configure
sp_configure


-- for set Maximum memory
exec sys.sp_configure 'max server memory (MB)','MEMORY SIZE in MB' 
go
reconfigure
go


-- for set minimum memory
exec sys.sp_configure 'min server memory (MB)','MEMORY SIZE in MB' 
go
reconfigure
go

