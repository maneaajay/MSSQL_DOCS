/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [LAPTOPID]
      ,[MODEL_NAME]
      ,[rowguid]
  FROM [DELL_MERGE].[dbo].[THINKPAD]

  insert into [DELL_MERGE].[dbo].[THINKPAD]
 ([LAPTOPID], [MODEL_NAME]) values (6, 100)
