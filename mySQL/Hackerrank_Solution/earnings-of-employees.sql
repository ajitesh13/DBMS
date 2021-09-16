-- solution by taking different variables
set @maxearning = (select max(salary * months) from employee);
set @maxearningnumber = (select count(*) from employee where salary*months = @maxearning);
select @maxearning, @maxearningnumber;

-- second single line solution 
select (salary*months) as earning, count(*) 
from employee 
group by earning 
order by earning desc limit 1;

-- "order by earning" is same as "order by 1"
select (salary*months) as earning, count(*) 
from employee 
group by 1 
order by earning desc limit 1;