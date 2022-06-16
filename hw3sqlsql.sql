 --1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select * from employees;
select * from salary_1;

select employee_name, monthly_salary from employees inner join
salary_1
on employees.id=salary_1.id ;

--2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary from employees inner joi
salary_1
on employees.id=salary_1.id 
where monthly_salary < 2000;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select monthly_salary, roles_employee.employee_id from salary_1 
join employee_salary on salary_1.id = employee_salary.salary_id
left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
where role_id is null;

--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select monthly_salary, roles_employee.employee_id from salary_1 
join employee_salary on salary_1.id = employee_salary.salary_id
left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
where role_id is null and monthly_salary < 2000 ;
--5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name,employee_salary.employee_id,monthly_salary from employees
left join  roles_employee on employees.id=roles_employee.employee_id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id
left join salary_1 on employee_salary.employee_id=salary_1.id
where employee_salary.employee_id is null;

 --6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name from employees inner join roles_employee
on 
employees.id =employee_id
join roles on roles.id= roles_employee.role_id;

--7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name from employees inner join roles_employee
on 
employees.id =employee_id
join roles on roles.id= roles_employee.role_id
where role_name LIKE '%Java developer%'

--.8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name from employees inner join roles_employee
on 
employees.id =employee_id
join roles on roles.id= roles_employee.role_id
where role_name LIKE '%Python developer%';
--9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name from employees inner join roles_employee
on 
employees.id =employee_id
join roles on roles.id= roles_employee.role_id
where role_name LIKE '%QA engineer%';
-- 10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name from employees inner join roles_employee
on 
employees.id =employee_id
join roles on roles.id= roles_employee.role_id
where role_name LIKE '%Manual QA engineer%';
--11.������� ����� � ��������� ��������������� QA
select employee_name, role_name from employees inner join roles_employee
on 
employees.id =employee_id
join roles on roles.id= roles_employee.role_id
where role_name LIKE '%Automation QA engineer%';
--12. ������� ����� � �������� Junior ������������
select employee_name, role_name, monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id 
join roles_employee on employees.id= roles_employee.employee_id
join roles on roles.id= roles_employee.role_id 
where role_name like '%Junior%';
--13. ������� ����� � �������� Middle ������������
select employee_name, role_name, monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id 
join roles_employee on employees.id= roles_employee.employee_id
join roles on roles.id= roles_employee.role_id 
where role_name like '%Middle%';

--14. ������� ����� � �������� Senior ������������
select employee_name, role_name, monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id 
join roles_employee on employees.id= roles_employee.employee_id
join roles on roles.id= roles_employee.role_id 
where role_name like '%Senior%';
--15. ������� �������� Java �������������
select  role_name, monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id 
join roles_employee on employees.id= roles_employee.employee_id
join roles on roles.id= roles_employee.role_id 
where role_name like '%Java developer%';
-- 16. ������� �������� Python �������������
select  role_name, monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id 
join roles_employee on employees.id= roles_employee.employee_id
join roles on roles.id= roles_employee.role_id 
where role_name like '%Python developer%';
--17. ������� ����� � �������� Junior Python �������������

select employee_name, role_name, monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id 
join roles_employee on employees.id= roles_employee.employee_id
join roles on roles.id= roles_employee.role_id 
where role_name like '%Junior Python developer%';


--18.������� ����� � �������� Middle JS �������������
select employee_name, role_name, monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id 
join roles_employee on employees.id= roles_employee.employee_id
join roles on roles.id= roles_employee.role_id 
where role_name like '%Middle JavaScript developer%';

-- 19. ������� ����� � �������� Senior Java �������������
select employee_name, role_name, monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id 
join roles_employee on employees.id= roles_employee.employee_id
join roles on roles.id= roles_employee.role_id 
where role_name like '%Senior JavaScript developer%';
--20.������� �������� Junior QA ���������
select  role_name, monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id 
join roles_employee on employees.id= roles_employee.employee_id
join roles on roles.id= roles_employee.role_id 
where role_name like '%Junior% QA engineer%';
 --21. ������� ������� �������� ���� Junior ������������
select  AVG (monthly_salary) from salary_1
join employee_salary on salary_1.id = employee_salary.salary_id
join roles_employee on employee_salary.id = roles_employee.employee_id
join roles on roles.id= roles_employee.role_id 
where role_name like '%Junior%';
--22. ������� ����� ������� JS �������������
select  sum (monthly_salary) from salary_1
join employee_salary on salary_1.id = employee_salary.salary_id
join roles_employee on employee_salary.id = roles_employee.employee_id
join roles on roles.id= roles_employee.role_id 
where role_name like '%Java developer%';
--23. ������� ����������� �� QA ���������
select min(monthly_salary) from salary join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '% QA engineer';
----24. ������� ������������ �� QA ���������
select max(monthly_salary) from salary join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '% QA engineer';

--25. ������� ���������� QA ���������
select count(employees.id) from employees join roles_employee on 
employees.id=roles_employee.employee_id
join roles on roles_employee.role_id=roles.id 
where role_name like '%QA engineer%';

--26. ������� ���������� Middle ������������.
select count(employees.id) from employees join roles_employee on 
employees.id=roles_employee.employee_id
join roles on roles_employee.role_id=roles.id 
where role_name like '%Middle%';

--27. ������� ���������� �������������
select count(employees.id) from employees join roles_employee on 
employees.id=roles_employee.employee_id
join roles on roles_employee.role_id=roles.id 
where role_name like '%developer%';

--28. ������� ���� (�����) �������� �������������

select count (monthly_salary) from salary_1 
join employee_salary on  salary_1.id=employee_salary.salary_id
join roles_employee on roles_employee.employee_id =employee_salary.employee_id 
join roles on   roles.id =roles_employee.role_id
where role_name like '%developer%';

--29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employee_name, role_name, monthly_salary from employees 
join salary_1 on employees.id= salary_1.id 
join employee_salary on salary_1.id = employee_salary.salary_id
left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
join roles on roles_employee.role_id = roles.id 
order by monthly_salary;

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary from employees 
join salary_1 on employees.id= salary_1.id 
join employee_salary on salary_1.id = employee_salary.salary_id
left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
join roles on roles_employee.role_id = roles.id 
where monthly_salary between 1700 and 2300
order by monthly_salary;
--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary from employees 
join salary_1 on employees.id= salary_1.id 
join employee_salary on salary_1.id = employee_salary.salary_id
left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
join roles on roles_employee.role_id = roles.id 
where monthly_salary < 2300
order by monthly_salary;
--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employees 
join salary_1 on employees.id= salary_1.id 
join employee_salary on salary_1.id = employee_salary.salary_id
left join roles_employee on roles_employee.employee_id = employee_salary.employee_id
join roles on roles_employee.role_id = roles.id 
where monthly_salary in (1100,1500,2000)
order by monthly_salary;