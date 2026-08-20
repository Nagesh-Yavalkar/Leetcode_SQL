# Write your MySQL query statement below
select
manager.employee_id,
manager.name,
count(employee.reports_to) as reports_count,
round(avg(employee.age)) as average_age

from Employees as manager
inner join Employees as employee
on manager.employee_id = employee.reports_to
group by manager.employee_id, manager.name
order by manager.employee_id;
