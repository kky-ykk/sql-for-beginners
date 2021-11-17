<img align="left" src="https://img.shields.io/github/license/0l1v3rr/sql-for-beginners?color=red&style=flat"> &nbsp;
<img align="left" src="https://img.shields.io/github/last-commit/0l1v3rr/sql-for-beginners?color=blue&style=flat"> &nbsp;
<img align="left" src="https://img.shields.io/badge/sql-%2300618A.svg?style=flat&logo=mysql&logoColor=white">

# SQL for Beginners
Each lesson includes an example, an explanation, an exercise, and a solution. <br>
At the end of this lesson, you are going to be able to create databases and tables, insert and edit data, and write complex queries. <br>

**What do you need?** Basic knowledge of relational databases, and [xampp](https://www.apachefriends.org/hu/download.html).

<hr>

- [SQL for Beginners](#sql-for-beginners)
  - [1. SQL Basics](#1-sql-basics)
    - [1/1. What is SQL?](#11-what-is-sql)
    - [1/2. What Can SQL do?](#12-what-can-sql-do)
    - [1/3. SQL syntax](#13-sql-syntax)
  - [2. SQL Database](#2-sql-database)
    - [2/1. Create Database](#21-create-database)
    - [2/2. Drop Database](#22-drop-database)
    - [2/3. Create Table](#23-create-table)
    - [2/4. Drop Table](#24-drop-table)
    - [2/5. Insert Into](#25-insert-into)
    - [2/6. Update](#26-update)
    - [2/7. Delete](#27-delete)
    - [2/8. Test](#28-test)

<hr>

## 1. SQL Basics
###  1/1. What is SQL?
SQL (Structured Query Language) is a domain-specific language used in programming and designed for managing data held in a relational database management system (RDBMS), or for stream processing in a relational data stream management system (RDSMS). It is particularly useful in handling structured data, i.e. data incorporating relations among entities and variables.

### 1/2. What Can SQL do?
SQL offers two main advantages over older read-write APIs such as ISAM or VSAM. Firstly, it introduced the concept of accessing many records with one single command. Secondly, it eliminates the need to specify how to reach a record, e.g. with or without an index. <br>
SQL can execute queries against a database, for example, insert, update and delete records. Also, SQL can create, edit and delete databases and tables.

### 1/3. SQL syntax
A database contains one or more tables. Each table is identified by a name. Tables contain records with data.<br>
Most of the actions you need to perform on a database are done with SQL statements.<br>
SQL keywords are not case-sensitive. (E.g `create` = `CREATE` = `cReATe`).<br>
Some database systems do not require a semicolon at the end of the SQL statement, but we will use it.

## 2. SQL Database
### 2/1. Create Database
The `CREATE DATABASE` statement is used to create a new database.<br>
**Syntax:**
```sql
CREATE DATABASE dbname;
```
**Example:**
```sql
CREATE DATABASE testdb;
```
This statement creates a database called `testdb`.

### 2/2. Drop Database
The `DROP DATABASE` statement is used to drop a database.<br>
**Syntax:**
```sql
DROP DATABASE dbname;
```
**Example:**
```sql
DROP DATABASE testdb;
```
This statement drops the `testdb` database.

### 2/3. Create Table
The `CREATE TABLE` statement is used to create a table in a database.<br>
**Syntax:**
```sql
CREATE TABLE tablename(
   column1 datatype(100),
   column2 datatype(255),
   ...
);
```
**Datatypes:**
- `INT(n)` -> integer
- `VARCHAR(n)` -> string
- `DATE` -> date
- `TIME` -> time
- `REAL` -> double

**NOT NULL**<br>
By default, a column can hold NULL values.<br>
The NOT NULL constraint enforces a column to NOT accept NULL values.<br>

**PRIMARY KEY**<br>
The PRIMARY KEY constraint uniquely identifies each record in a table.<br>
Primary keys must contain UNIQUE values, and cannot contain NULL values.<br>

**AUTO_INCREMENT**<br>
Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.<br>

**Example:**
```sql
CREATE TABLE test_table(
   id INT(255) NOT NULL AUTO_INCREMENT,
   name VARCHAR(30),
   email VARCHAR(80),
   age INT(100),
   passwd VARCHAR(255) NOT NULL,
   PRIMARY KEY(id)
);
```

### 2/4. Drop Table
The `DROP TABLE` statement is used to drop a table.<br>
**Syntax:**
```sql
DROP TABLE tablename;
```
**Example:**
```sql
DROP TABLE test_table;
```
This statement drops the `test_table` table.

### 2/5. Insert Into
The INSERT INTO statement is used to insert new records in a table.<br>
**Syntax:**
```sql
INSERT INTO table_name(column1, column2, ...) VALUES(value1, value2, ...);
```
**Example:**
```sql
INSERT INTO test_table(name, email, age, passwd) VALUES('John', 'john@domain.com', 23, 'jEm3;l!kA78f');
```

### 2/6. Update
The UPDATE statement is used to modify the existing records in a table.
**Syntax:**
```sql
UPDATE table_name SET column = colvalue, ... WHERE condition;
```
**Example:**
```sql
UPDATE test_table SET age = 24 WHERE id = 1;
```

### 2/7. Delete
The DELETE statement is used to delete existing records in a table.
**Syntax:**
```sql
DELETE FROM table_name WHERE condition;
```
**Example:**
```sql
DELETE FROM test_table WHERE id = 1;
```

### 2/8. Test
**1.**<br>
Create a Database called `testdb`;<br>
**2.**<br>
Create a Table in this `testdb` database called `test_table`, with the following fields:<br>
- id --> integer, not null, primary key, auto incrementű
- name --> string(40)
- address --> string(100)
- age --> integer

**3.**<br>
Insert two records into the table.<br> 
*First:* name: 'John', address: 'US', age: 23<br>
*Second:* name: 'Joshua', address: 'UK', age: 17<br>
**4.**<br>
Update every address to `USA`, where the address is `US`.<br>
**5.**<br>
Delete every record in the table, where the age is 17.<br>
*You can check your solution [here](solutions/test1.sql).*