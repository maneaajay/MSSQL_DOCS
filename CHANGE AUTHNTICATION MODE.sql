USE [master]
GO
EXEC xp_instance_regwrite 
	N'HKEY_LOCAL_MACHINE',
		N'Software\Microsoft\MSSQLServer\MSSQLServer',
		N'LoginMode', 
		REG_DWORD,2   --1 FOR WINDOWS AUTHNTICATION AND 2 FOR MIXED MODE
GO
