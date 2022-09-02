create database giraffe;

create table student(
  student_id INT,
  name varchar(20) NOT NULL,
  major varchar(20) UNIQUE,
  primary key (student_id)
);
  
insert into student values(1 , 'jack', 'Biology');
insert into student(student_id,name,major)  values(3 ,'dinesh' , 'Physics');
insert into student(student_id,name,major)  values(4 ,'javed' , 'Java');

select * from student;
update student SET major = 'Bio' where major = 'Biology';

update student SET major = 'BioChemistry' where major = 'Bio' OR major = 'Chemistry';

select name, major, student_id
from student 
order by major, student_id limit 2;
