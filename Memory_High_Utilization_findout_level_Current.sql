--Current Instance Level

 

--Instance Level

select * from sys.dm_os_process_memory

 

 



 

--Memory used by SQL Server

select

(physical_memory_in_use_kb/1024)Memory_usedby_Sqlserver_MB,

(locked_page_allocations_kb/1024 )Locked_pages_used_Sqlserver_MB,

(total_virtual_address_space_kb/1024 )Total_VAS_in_MB,

process_physical_memory_low,

process_virtual_memory_low

from sys.dm_os_process_memory

 

 

 

 

-- Total OS Memory and used percentage

--Script: Captures System Memory Usage

--Works On: 2008, 2008 R2, 2012, 2014, 2016

 

select

      total_physical_memory_kb/1024 AS Total_physical_memory_mb,

      available_physical_memory_kb/1024 AS available_physical_memory_mb,

      total_page_file_kb/1024 AS total_page_file_mb,

      available_page_file_kb/1024 AS available_page_file_mb,

      100 - (100 * CAST(available_physical_memory_kb AS DECIMAL(18,3))/CAST(total_physical_memory_kb AS DECIMAL(18,3)))

      AS 'Percentage_Used',

      system_memory_state_desc

from  sys.dm_os_sys_memory;