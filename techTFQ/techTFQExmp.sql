use testdb;
create table department(
    dept_id varchar(20),
    depat_name varchar(10)
);

select * from testdb.employee;
select * from testdb.department;


insert into testdb.employee values ('E1','Gajanan',10000,'D1','M1');
insert into testdb.employee values ('E2','James',20000,'D1','M1');
insert into testdb.employee values ('E3','Koman',50000,'D2','M2');
insert into testdb.employee values ('E4','Michel',24000,'D3','M2');
insert into testdb.employee values ('E5','Robin',90000,'D3','M3');
insert into testdb.employee values ('E6','Hooda',70000,'D4','M3');
insert into testdb.employee values ('E7','Deeoak',59000,'D5','M4');
insert into testdb.employee values ('E8','Raghu',9000,'D10','M9');

insert into testdb.department values ('D1','HR');
insert into testdb.department values ('D2','IT');
insert into testdb.department values ('D3','Finance');
insert into testdb.department values ('D4','Admin');
insert into testdb.department values ('D5','Sales');
insert into testdb.department values ('D15','Satff');
insert into testdb.department values ('D25','Support');

create table manager(
    manager_id varchar(20),
    manager_name varchar(20),
    dept_id varchar(10)
);

insert into testdb.manager values ('M1','Pratap','D1');
insert into testdb.manager values ('M2','Pramod','D3');
insert into testdb.manager values ('M3','Gaurav','D4');
insert into testdb.manager values ('M4','Anup','D2');

create table projects(
   project_id varchar(20),
    project_name varchar(20),
    team_member_id varchar(10)
);
select *from testdb.projects;

insert into testdb.projects values ('P1','Pharma Data Portal','E1');
insert into testdb.projects values ('P1','Google Sheet','E2');
insert into testdb.projects values ('P1','Google Drive','M1');
insert into testdb.projects values ('P2','Practice Management','M3');
insert into testdb.projects values ('P2','HubSpot','E3');

-- featch employee name and the dept name they belong too 
-- Inner Join /JOIN
select e.emp_name, d.depat_name, e.salary
from testdb.employee e
join testdb.department d on e.dept_id = d.dept_id;

-- featch ALL the employee name and the dept name they belong too 
-- left join = inner join + any additional records in left table
select e.emp_name, d.depat_name
from employee e left join department d on e.dept_id = d.dept_id;

-- featch employee name and ALL the dept name they belong too 
-- Right join = inner join + any additional records in Right table

select e.emp_name, d.depat_name
from employee e right join department d on e.dept_id = d.dept_id;



 
