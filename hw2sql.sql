-- 1.Создать таблицу employees- id. serial,  primary key, employee_name. Varchar(50), not null

create table employees (
id serial primary key,
employee_name Varchar(50) not null);
 
select * from employees;
--2.Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
values ('emloyee1'),
       ('emloyee2'),
       ('emloyee3'),
       ('emloyee4'),
       ('emloyee5'),
       ('emloyee6'),
       ('emloyee7'),
       ('emloyee8'),
       ('emloyee9'),
       ('emloyee10'),
       ('emloyee11'),
       ('emloyee12'),
       ('emloyee13'),
       ('emloyee14'),
       ('emloyee15'),
       ('emloyee16'),
       ('emloyee17'),
       ('emloyee18'),
       ('emloyee19'),
       ('emloyee20'),
       ('emloyee21'),
       ('emloyee22'),
       ('emloyee23'),
       ('emloyee24'),
       ('emloyee25'),
       ('emloyee26'),
       ('emloyee27'),
       ('emloyee28'),
       ('emloyee29'),
       ('emloyee30'),
       ('emloyee31'),
       ('emloyee32'),
       ('emloyee33'),
       ('emloyee34'),
       ('emloyee35'),
       ('emloyee36'),
       ('emloyee37'),
       ('emloyee38'),
       ('emloyee39'),
       ('emloyee40'),
       ('emloyee41'),
       ('emloyee42'),
       ('emloyee43'),
       ('emloyee44'),
       ('emloyee45'),
       ('emloyee46'),
       ('emloyee47'),
       ('emloyee48'),
       ('emloyee49'),
       ('emloyee50'),
       ('emloyee51'),
       ('emloyee52'),
       ('emloyee53'),
       ('emloyee54'),
       ('emloyee55'),
       ('emloyee56'),
       ('emloyee57'),
       ('emloyee58'),
       ('emloyee59'),
       ('emloyee60'),
       ('emloyee61'),
       ('emloyee62'),
       ('emloyee63'),
       ('emloyee64'),
       ('emloyee65'),
       ('emloyee66'),
       ('emloyee67'),
       ('emloyee68'),
       ('emloyee69'),
       ('emloyee70');
       select * from employees;

     -- 3. Создать таблицу salary- id. Serial  primary key,- monthly_salary. Int, not null

      create table salary_1 (
      id serial primary key,
      monthly_salary int not null 
     );
    --4)Наполнить таблицу salary 15 строками:
     insert into salary_1 (monthly_salary)
      values (1000),
             (1100), 
             (1200),
             (1300),
             (1400),
             (1500), 
             (1600),
             (1700),
             (1800),
             (1900), 
             (2000),
             (2100),
             (2200),
             (2300),
             (2400),
             (2500);
             select * from salary_1;
            
 drop table emloyee_salary;

--5.Cоздать таблицу employee_salary(- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null)
 create table employee_salary (
 id serial primary key,
 employee_id int not null unique,
 salary_id int not null
 );
--6.Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
 insert into employee_salary (employee_id, salary_id)
 values      (1,2),
             (2,4), 
             (3,5),
             (4,1),
             (5,6),
             (6,7), 
             (7,8),
             (8,9),
             (10,11),
             (11,12), 
             (12,13),
             (13,14),
             (14,15),
             (15,1),
             (16,2),
             (17,3),
             (18,11),
             (19,12), 
             (20,13),
             (21,14),
             (22,15),
             (23,1),
             (24,2),
             (25,3),
             (26,12), 
             (27,13),
             (28,14),
             (29,15),
             (30,1),
             (71,2),
             (72,3),
             (73,1),
             (74,2),
             (75,3),
             (76,12), 
             (77,13),
             (78,14),
             (79,15),
             (80,1);
             
select * from employee_salary;

--7)Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
create table roles(
id serial primary key, 
role_name int not null unique 
); 
--8)Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30);
--9)Наполнить таблицу roles 20 строками
insert into roles (role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');
      
     --10)Создать таблицу roles_employee
--- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id) 
    create table roles_employee (
    id serial primary key,
    employee_id int not null unique, 
    role_id int not null, 
    foreign key (employee_id)
    references employees(id),
    foreign key (role_id)
    references roles (id)
   );
   --11)Наполнить таблицу roles_employee 40 строками:
   insert into roles_employee (employee_id,role_id)
   values    (1,2),
             (2,4), 
             (3,5),
             (4,1),
             (5,6),
             (6,7), 
             (7,8),
             (8,9),
             (10,11),
             (11,12), 
             (12,13),
             (13,14),
             (14,15),
             (15,1),
             (16,2),
             (17,3),
             (18,11),
             (19,12), 
             (20,13),
             (21,14),
             (22,15),
             (23,11),
             (24,18),
             (25,3),
             (26,19), 
             (27,18),
             (28,17),
             (29,16),
             (30,15),
             (31,14),
             (32,15),
             (33,1),
             (34,2),
             (35,3),
             (36,12), 
             (37,13),
             (38,14),
             (39,15),
             (40,1);

