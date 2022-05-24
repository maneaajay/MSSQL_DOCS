use PerfDB
select * from emp1

set statistics io on
select * from emp1
where name = 'f5'


BEGIN TRAN
declare @i int
Set @i = 1
While (@i<=10000)
Begin
	Insert into PerfDB.dbo.EMP1 values (@i, char((@i%26)+97)+cast (@i as varchar
	(100)), rand()*100000,(@i%3)+1, 'test', 'test')
	If(@i%50000 = 0)
		Begin
			Commit
			Begin tran
		END
	set @i= @i+1
END
COMMIT
