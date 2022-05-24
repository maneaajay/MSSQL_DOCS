Create database PerfDB
go
create table PerfDB.dbo.EMP3(id int,name varchar(100),salary int,deptid int,c1 char(1000),c2 char(1000))
go
SET nocount on
go
BEGIN TRAN
declare @i int
Set @i = 1
While (@i<=10000)
Begin
	Insert into PerfDB.dbo.EMP3 values (@i, char((@i%26)+97)+cast (@i as varchar
	(100)), rand()*100000,(@i%3)+1, 'suraj', 'ajay')
	If(@i%50000 = 0)
		Begin
			Commit
			Begin tran
		END
	set @i= @i+1
END
COMMIT

use PerfDB
select * from emp3