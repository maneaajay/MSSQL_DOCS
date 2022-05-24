--index 
select * from emp
where id = 10000

-- to check how much pages scanned
set statistics IO on 
select * from emp
where id = 10000


select top 10 *from emp