create table if not exists employee (
	employee_id integer primary key,
	employee_name varchar(200) not null,
	department varchar(100) not null,
	department_head_id integer references employee(employee_id)
)