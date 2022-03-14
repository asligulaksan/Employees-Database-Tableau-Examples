# 2. Compare the number of male managers to the number of female managers from different departments for each year, starting from 1990.

SELECT 
    d.dept_name,
    e.gender,
    dm.emp_no,
    dm.from_date,
    dm.to_date,
    calendar_year,
    IF(YEAR(dm.to_date) >= a.calendar_year
            AND YEAR(dm.from_date) <= a.calendar_year,
        1,
        0) as active
FROM
    (SELECT DISTINCT
        YEAR(hire_date) AS calendar_year
    FROM
        t_employees
    ORDER BY calendar_year) a
        CROSS JOIN
    t_dept_manager dm
        JOIN
    t_employees e ON e.emp_no = dm.emp_no
        JOIN
    t_departments d ON dm.dept_no = d.dept_no
ORDER BY dm.emp_no , calendar_year;