
SELECT DB_Name(qp.dbid) as dbname , qp.dbid , qp.objectid , qp.number
       , qt.text
       , SUBSTRING(qt.text, (qs.statement_start_offset/2) + 1,
             ((CASE statement_end_offset
                    WHEN -1 THEN DATALENGTH(qt.text)
                    ELSE qs.statement_end_offset END
                           - qs.statement_start_offset)/2) + 1) as statement_text

       , qs.creation_time , qs.last_execution_time , qs.execution_count

       , qs.total_worker_time    / qs.execution_count as avg_worker_time

FROM sys.dm_exec_query_stats as qs

       CROSS APPLY sys.dm_exec_query_plan(qs.plan_handle) as qp

       CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) as qt

WHERE last_execution_time >= '2022-05-20 09:43:03.530' --Start Time Slot

AND last_execution_time <'2022-05-20 09:47:03.940' -- Latest Time Slot

order by avg_worker_time desc