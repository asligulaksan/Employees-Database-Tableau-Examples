# 4. Create an SQL stored procedure that will allow you to obtain the average male and female salary per department within a certain salary range.
# Let this range be defined by two values the user can insert when calling the procedure.

# Finally, visualize the obtained result-set in Tableau as a double bar chart. 


DELIMITER $$
create procedure avg_salary(in p_low VARCHARACTER(255), in p_high VARCHARACTER(255))
begin
select
	e.gender, round(avg(s.salary),2) as salary, d.dept_name
from t_employees e
join t_salaries s on e.emp_no =s.emp_no
join t_dept_emp de on e.emp_no = de.emp_no
join t_departments d on de.dept_no = d.dept_no
where salary between p_low and p_high
group by e.gender, d.dept_name
order by d.dept_name;
end$$
DELIMITER ;

call avg_salary(50000,90000);