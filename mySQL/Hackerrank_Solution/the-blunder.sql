-- solution 1
set @sum = (select sum(salary)/count(*) from employees);
update employees set salary = replace(salary, '0', '');
set @sum1 = (select sum(salary)/count(*) from employees);
select round(@sum - @sum1+1);

-- solution 2
SELECT CEIL(AVG(Salary)-AVG(REPLACE(Salary,'0',''))) FROM EMPLOYEES;