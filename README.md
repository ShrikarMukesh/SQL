# SQL (Structured Query Language)
Database : A database is an organized collection of data.

DBMS: DBMS stands for Database Management System. DBMS is a system software responsible for the creation, retrieval, updation, and management of the database. examples : MYSQL, SQL SERVER, ORACLE

What are Constraints in SQL?

Constraints are used to specify the rules concerning data in the table. It can be applied for single or multiple fields in an SQL table during the creation of the table or after creating using the ALTER TABLE command. The constraints are:

NOT NULL - Restricts NULL value from being inserted into a column.
CHECK - Verifies that all values in a field satisfy a condition.
DEFAULT - Automatically assigns a default value if no value has been specified for the field.
UNIQUE - Ensures unique values to be inserted into the field.
INDEX - Indexes a field providing faster retrieval of records.
PRIMARY KEY - Uniquely identifies each record in a table.
FOREIGN KEY - Ensures referential integrity for a record in another table.

Composite Key in SQL:
Now a composite key is also a primary key, but the difference is that it is made by the combination of more than one column to identify the particular row in the table.
CREATE TABLE student(
   rollNumber INT, 
   name VARCHAR(30), class VARCHAR(30), 
   section VARCHAR(1), mobile VARCHAR(10),
PRIMARY KEY (rollNumber, mobile));

![new](https://user-images.githubusercontent.com/46884233/186828268-39d83e0d-2ee1-4760-9d60-4122fb8b3249.png)

SQL is a Hybride Language, it's basically 4 types of languages in one.
 DQL: Data Query Lang
   1) Used to query the database information.
   2)Get Information that is already stored there.
   
 DDL: Data Defination language
   1)Used for defining db schemas.
   
 DCL: Data control language
   1) Used for controlling access to the data in db.
   2) User and permissions management.
 DML: Data Manipulation lang
   1)Used for inserting , updating and deleting data
   

