insert into Employee.Department
values ('Marketing', 1);
insert into Employee.Department
values ('Sales', 2);
insert into Employee.Department
values ('Human Resources', 3);

insert into Employee.Employee
values (2, 'Tina', 'Smith');
insert into Employee.Employee
values ( 3, 'John', 'Doe');
insert into Employee.Employee
values ( 2, 'Lucy', 'Timmons');

insert into Employee.EmployeeDetails
values (1, 85000.00, 'Marine Ave', 'Manhattan Beach', 'CA');
insert into Employee.EmployeeDetails
values (2, 75000.00, 'Sausalito Cir', 'Redondo Beach', 'CA');
insert into Employee.EmployeeDetails
values (3, 100000, 'Center St', 'Arlington', 'TX');

select * from Employee.Employee
where DepartmentId=2;

update Employee.EmployeeDetails
set salary = 90000
where EmployeeId =1
