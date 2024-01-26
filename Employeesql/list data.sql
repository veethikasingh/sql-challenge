

--List data 
--List the employee number, last name, first name, sex, and salary of each employee.

select e.emp_no, e.last_name, e.first_name, e.sex ,
       s.salary
from employee as e
inner join salaries as s
on e.emp_no = s.emp_no
order by e.emp_no;

--List the first name, last name, and hire date for the employees who were 
--hired in 1986.

select first_name, last_name, hire_date 
from employee
where hire_date between '1986-01-01' and '1986-12-31'
order by first_name;

--List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.

select a.dept_no, b.dept_name, c.emp_no, c.last_name, c.first_name
from dept_manager as a
inner join department as b
on a.dept_no = b.dept_no
inner join employee as c
on a.emp_no = c.emp_no
order by a.dept_no;

--List the department number for each employee along with that employee’s 
--employee number,last name, first name, and department name.

select a.emp_no, b.last_name , b.first_name, a.dept_no, c.dept_name
from dept_emp as a
inner join employee as b 
on a.emp_no = b.emp_no
inner join department as c
on a.dept_no = c.dept_no
order by a.emp_no;

--List first name, last name, and sex of each employee whose 
--first name is Hercules and whose last name begins with the letter B

select first_name, last_name, sex
from employee
where first_name = 'Hercules' and
      SUBSTRING(last_name FROM 1 FOR 1) = 'B';
	  
--List each employee in the Sales department, 
--including their employee number, last name, and first name.	

select s.dept_name, d.emp_no, e.last_name, e.first_name
from dept_emp as d
inner join employee as e
on d.emp_no = e.emp_no 
inner join department as s
on d.dept_no = s.dept_no
where d.dept_no = 'd007'
order by d.emp_no;

-- List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, 
-- and department name.

select s.dept_name, d.emp_no, e.last_name, e.first_name
from dept_emp as d
inner join employee as e
on d.emp_no = e.emp_no 
inner join department as s
on d.dept_no = s.dept_no
where d.dept_no = 'd007' or 
      d.dept_no = 'd005'
order by d.emp_no;

--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).

SELECT last_name, COUNT(last_name) AS "Total"
FROM employee
GROUP BY last_name
order by count(last_name) desc;
















