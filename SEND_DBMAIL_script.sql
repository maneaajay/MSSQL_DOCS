--- SEND DB_MAIL USING SCRIPT


EXEC msdb.dbo.sp_send_dbmail  
    @profile_name = 'NISSISOFT_DBA',  --Your DB mail Profile name
    @recipients = 'ajaymane1050@gmail.com', --recipient email id 
    @body = '<b>The stored procedure finished</b> <I>successfully.</I>', --body message  
    @subject = 'Automated Success Message', -- subject name
	@body_format = 'HTML'