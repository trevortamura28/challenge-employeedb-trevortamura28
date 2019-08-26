create database EmployeeDB;

create schema Employee;

create table Employee.Department
(
	DepartmentId int not null identity,
	Name nvarchar(50),
	Location int
	)
  
 create table Employee.Employee
(
	EmployeeId int not null  identity,
	DepartmentId int not null,
	FirstName nvarchar(50), 
	LastName nvarchar (50)
	)
  
  create table Employee.EmployeeDetails
(
	Emid int not null identity,
	EmployeeId int not null,
	Salary numeric (10,3), 
	Street nvarchar (50),
	City nvarchar (50),
	Province nvarchar (50)
	)
  
alter table Employee.Department
	add constraint  PK_DepartmentId primary key (DepartmentId)
 
 alter table Employee.Employee
	add constraint  PK_EmployeeId primary key (EmployeeId)
  
alter table Employee.Employee
	add constraint  FK_DepartmentId Foreign key (DepartmentId) references Employee.Department( DepartmentId)
  
alter table Employee.EmployeeDetails
add constraint PK_EmployeeDetails primary key (Emid)

alter table Employee.EmployeeDetails
	add constraint FK_EmployeeId foreign key (EmployeeId) references Employee.Employee (EmployeeId)
