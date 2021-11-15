<img align="left" src="https://img.shields.io/github/license/0l1v3rr/sql-for-beginners?color=red&style=flat"> &nbsp;
<img align="left" src="https://img.shields.io/github/last-commit/0l1v3rr/sql-for-beginners?color=blue&style=flat"> &nbsp;
<img align="left" src="https://img.shields.io/badge/sql-%2300618A.svg?style=flat&logo=mysql&logoColor=white">

<br>

# SQL for Beginners
Each lesson includes an example, an explanation, an exercise, and a solution. <br>
At the end of this lesson, you are going to be able to create databases, insert and edit data, and write complex queries. <br>

**What do you need?**
- basic knowledge of relational databases
- basic English knowledge
- [xampp](https://www.apachefriends.org/hu/download.html)

# Lessons
- SQL Basics
   - [What is SQL?](#what-is-sql)
   - [What Can SQL do?](#what-can-sql-do)
   - [SQL syntax](#sql-syntax)
- SQL Database
   - [Create Database](#create-database)
   - [Drop Database](#drop-database)
   - Create Table
   - Drop Table
   - Data types

<hr>

## SQL Basics
### What is SQL?
SQL (Structured Query Language) is a domain-specific language used in programming and designed for managing data held in a relational database management system (RDBMS), or for stream processing in a relational data stream management system (RDSMS). It is particularly useful in handling structured data, i.e. data incorporating relations among entities and variables.

### What Can SQL do?
SQL offers two main advantages over older read-write APIs such as ISAM or VSAM. Firstly, it introduced the concept of accessing many records with one single command. Secondly, it eliminates the need to specify how to reach a record, e.g. with or without an index. <br>
SQL can execute queries against a database, for example, insert, update and delete records. Also, SQL can create, edit and delete databases and tables.

### SQL syntax
A database contains one or more tables. Each table is identified by a name. Tables contain records with data.<br>
Most of the actions you need to perform on a database are done with SQL statements.<br>
SQL keywords are not case-sensitive. (E.g `create` = `CREATE` = `cReATe`).<br>
Some database systems do not require a semicolon at the end of the SQL statement, but we will use it.

## SQL Database
### Create Database
The `CREATE DATABASE` statement is used to create a new database.
#### Syntax:
```sql
CREATE DATABASE dbname;
```
#### Example:
```sql
CREATE DATABASE testdb;
```
This statement creates a database called `testdb`.

### Drop Database
The `DROP DATABASE` statement is used to drop a database.
#### Syntax:
```sql
DROP DATABASE dbname;
```
#### Example:
```sql
DROP DATABASE testdb;
```
This statement drops the `testdb` database.