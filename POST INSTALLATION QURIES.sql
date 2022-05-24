--DAC Connection [Dedicated admin connection]
sp_configure 'remote admin connections',1 -- 1 = TRUE, 0 = FALSE
go
reconfigure
go


--how to enable backup compression
-- with GUI and Command line

sp_configure
sp_configure 'backup compression default',0 -- 1 = TRUE, 0 = FALSE
go
reconfigure
go


--set min max memory

sp_configure 

sp_configure'max server memory (MB)',8000 --in MB 1024mb = 1gb
go
reconfigure
go