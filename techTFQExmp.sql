use testdb;
create table department(
    dept_id varchar(20),
    depat_name varchar(10)
);
select * from testdb.employee;
select * from testdb.department;

insert into testdb.department values ('D1','HR');
insert into testdb.department values ('D2','IT');
insert into testdb.department values ('D3','Finance');
insert into testdb.department values ('D4','Admin');

insert into testdb.employee values ('E1','Gajanan',10000,'D1','M1');
insert into testdb.employee values ('E2','James',20000,'D1','M1');
insert into testdb.employee values ('E3','Koman',50000,'D2','M2');
insert into testdb.employee values ('E4','Michel',24000,'D3','M2');
insert into testdb.employee values ('E5','Robin',90000,'D3','M3');
insert into testdb.employee values ('E6','Hooda',70000,'D4','M3');
insert into testdb.employee values ('E7','Deeoak',59000,'D5','M4');