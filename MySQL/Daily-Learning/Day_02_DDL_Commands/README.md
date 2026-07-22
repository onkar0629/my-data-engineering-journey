# Day 02 - DDL Commands

> **Course:** SQL for Data Engineering
>
> **Chapter:** Day 02 - DDL Commands
>
> **Prerequisite:** Day 01 - Database Basics

---

# 🎯 Learning Objectives

After completing this chapter, you will be able to:

- Understand what SQL is and why it is important.
- Explain the history and evolution of SQL.
- Understand the different categories of SQL commands.
- Differentiate between DDL, DML, DQL, DCL, and TCL.
- Understand CRUD operations and their relationship with SQL.
- Explain what Data Definition Language (DDL) is.
- Understand how DDL is used in database design.
- Recognize where DDL commands are used in real-world applications and Data Engineering.

---

# 📖 Introduction

In **Day 01**, we learned what databases are, why they are important, and how they are used to store information.

However, before we can store any data, we first need to create the structure that will hold it.

Think of constructing a new apartment building.

Before people can move in, engineers must first:

- Design the building
- Construct the rooms
- Number each apartment
- Build doors and windows

Only after the structure is ready can people start living there.

Databases work in exactly the same way.

Before inserting any records, we must first create the database objects such as:

- Databases
- Tables
- Columns
- Views
- Indexes

The SQL commands responsible for creating and modifying these objects belong to **Data Definition Language (DDL)**.

This chapter introduces SQL and explains the command categories before focusing on DDL commands.

---

# 📌 What is SQL?

**SQL** stands for **Structured Query Language**.

It is the standard language used to communicate with **Relational Database Management Systems (RDBMS)**.

Using SQL, we can:

- Create databases
- Create tables
- Insert data
- Retrieve data
- Update records
- Delete records
- Control user permissions
- Manage transactions

SQL is supported by almost every relational database system, making it one of the most valuable technical skills in software development and data engineering.

> **Definition**
>
> SQL is a standardized language used to define, manipulate, retrieve, and manage data stored in relational databases.

---

## Why Do We Need SQL?

Imagine a company stores millions of customer records.

Without SQL:

- Finding a specific customer would be difficult.
- Updating records would require manual work.
- Generating reports would take hours.
- Managing large amounts of data would become inefficient.

SQL provides a simple and standardized way to perform all of these operations.

Instead of searching through files manually, we simply write SQL queries.

---

## What Can SQL Do?

SQL allows us to perform various operations on databases.

Some common tasks include:

| Operation | Example |
|-----------|----------|
| Create Database | Create a new database |
| Create Table | Design a table structure |
| Insert Data | Add new records |
| Retrieve Data | Search and display records |
| Update Data | Modify existing records |
| Delete Data | Remove records |
| Manage Users | Grant or revoke permissions |
| Manage Transactions | Commit or rollback changes |

---

# 📜 History of SQL

SQL has been around for more than four decades and continues to be the most widely used database language.

## Timeline

| Year | Event |
|------|-------|
| 1970 | Dr. Edgar F. Codd proposed the Relational Model. |
| 1974 | IBM developed SEQUEL (Structured English Query Language). |
| 1979 | Oracle released the first commercial SQL database. |
| 1986 | ANSI adopted SQL as a standard. |
| 1987 | ISO approved SQL as an international standard. |
| Today | SQL is supported by almost every major relational database system. |

---

## Why Did SQL Become the Industry Standard?

SQL became popular because it is:

- Easy to learn
- Human-readable
- Powerful
- Portable
- Standardized
- Reliable

Today, SQL is used in:

- Banking
- Healthcare
- E-Commerce
- Education
- Manufacturing
- Government
- Telecommunications
- Data Engineering
- Business Intelligence
- Data Analytics

---

# 💼 Why Should a Data Engineer Learn SQL?

SQL is one of the most frequently used languages in Data Engineering.

A Data Engineer spends a significant amount of time interacting with databases.

Typical responsibilities include:

- Extracting data
- Cleaning raw data
- Transforming data
- Loading data into data warehouses
- Validating data quality
- Creating staging tables
- Designing schemas
- Optimizing SQL queries

Whether you work with:

- Azure
- AWS
- Google Cloud

or modern data warehouses like:

- Snowflake
- Amazon Redshift
- Google BigQuery

SQL remains one of the core skills required.

> **Note**
>
> Many Data Engineering interviews focus heavily on SQL because it is used daily in production environments.

---

# 📚 Types of SQL Commands

SQL commands are grouped into categories based on the type of operation they perform.

```text
                      SQL
                       │
        ┌──────────────┼──────────────┐
        │              │              │
       DDL            DML            DQL
        │              │              │
        └──────────────┼──────────────┘
                       │
                 ┌─────┴─────┐
                 │           │
                DCL         TCL
```

There are **five major categories** of SQL commands.

| Category | Full Form | Purpose |
|----------|-----------|---------|
| DDL | Data Definition Language | Defines database structure |
| DML | Data Manipulation Language | Modifies data |
| DQL | Data Query Language | Retrieves data |
| DCL | Data Control Language | Controls user permissions |
| TCL | Transaction Control Language | Manages transactions |

Let's understand each category in detail.

---

# 🏗 Data Definition Language (DDL)

## Definition

**Data Definition Language (DDL)** consists of SQL commands used to create and manage the structure of database objects.

DDL focuses on **how data is organized**, not on the actual data stored inside tables.

Using DDL, we can:

- Create databases
- Create tables
- Modify table structures
- Rename database objects
- Delete database objects

---

## Common DDL Commands

| Command | Purpose |
|----------|---------|
| CREATE | Creates a new database object |
| ALTER | Modifies an existing object |
| DROP | Deletes an object permanently |
| TRUNCATE | Removes all rows from a table |
| RENAME | Changes the name of an object |

---

## Example

```sql
CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100),
    salary DECIMAL(10,2)
);
```

The above statement creates a table named `employees`.

Notice that no data is inserted.

We are only defining the structure of the table.

---

# ✏️ Data Manipulation Language (DML)

## Definition

**Data Manipulation Language (DML)** consists of SQL commands used to work with the data stored inside tables.

Unlike DDL, DML does not change the table structure.

Instead, it changes the contents of the table.

---

## Common DML Commands

| Command | Purpose |
|----------|---------|
| INSERT | Adds new records |
| UPDATE | Modifies existing records |
| DELETE | Removes records |

---

## Example

```sql
INSERT INTO employees
VALUES (101, 'Rahul', 50000);
```

This command inserts a new record into the `employees` table.

---

# 🔍 Data Query Language (DQL)

## Definition

**Data Query Language (DQL)** is used to retrieve information from one or more tables.

The primary command in DQL is:

- `SELECT`

---

## Example

```sql
SELECT *
FROM employees;
```

This query retrieves every row from the `employees` table.

---

# 🔐 Data Control Language (DCL)

## Definition

**Data Control Language (DCL)** manages database security and user permissions.

These commands are mainly used by Database Administrators (DBAs).

---

## Common DCL Commands

| Command | Purpose |
|----------|---------|
| GRANT | Gives permissions to users |
| REVOKE | Removes permissions from users |

---

## Example

```sql
GRANT SELECT
ON employees
TO analyst;
```

This command allows the user `analyst` to read data from the `employees` table.

---

# 🔄 Transaction Control Language (TCL)

## Definition

**Transaction Control Language (TCL)** manages database transactions.

A transaction is a group of SQL statements executed as a single unit of work.

Transactions help maintain data consistency and integrity.

---

## Common TCL Commands

| Command | Purpose |
|----------|---------|
| COMMIT | Saves changes permanently |
| ROLLBACK | Undoes changes |
| SAVEPOINT | Creates a rollback point |

---

## Example

```sql
COMMIT;
```

This command permanently saves all changes made during the current transaction.

---

# 📊 Comparison of SQL Command Categories

| Category | Purpose | Common Commands |
|----------|---------|-----------------|
| DDL | Defines database structure | CREATE, ALTER, DROP, TRUNCATE, RENAME |
| DML | Modifies table data | INSERT, UPDATE, DELETE |
| DQL | Retrieves data | SELECT |
| DCL | Controls permissions | GRANT, REVOKE |
| TCL | Manages transactions | COMMIT, ROLLBACK, SAVEPOINT |


# 🔄 CRUD Operations

One of the fundamental concepts in database management is **CRUD**.

CRUD represents the **four basic operations** that can be performed on data stored in a database.

| Letter | Operation | Description | SQL Commands |
|---------|-----------|-------------|--------------|
| **C** | Create | Add new data | `INSERT` |
| **R** | Read | Retrieve existing data | `SELECT` |
| **U** | Update | Modify existing data | `UPDATE` |
| **D** | Delete | Remove existing data | `DELETE` |

---

## CRUD Flow

```text
            Database Table
                  │
     ┌────────────┼────────────┐
     │            │            │
  Create        Read        Update
 (INSERT)     (SELECT)     (UPDATE)
                  │
               Delete
              (DELETE)
```

---

## Real-World Example

Imagine a student management system.

### Create a Student

```sql
INSERT INTO students
VALUES (101, 'Rahul', 20);
```

A new student record is added.

---

### Read Student Details

```sql
SELECT *
FROM students;
```

Displays all student records.

---

### Update Student Details

```sql
UPDATE students
SET age = 21
WHERE student_id = 101;
```

Updates Rahul's age.

---

### Delete Student Record

```sql
DELETE FROM students
WHERE student_id = 101;
```

Removes the student record.

---

> **Note**
>
> CRUD operations manipulate **data**, not the structure of a table. They primarily use **DML** (`INSERT`, `UPDATE`, `DELETE`) and **DQL** (`SELECT`) commands.

---

# 📝 SQL Naming Conventions

SQL itself does not enforce strict naming rules beyond identifier syntax, but following consistent naming conventions makes databases easier to understand and maintain.

Good naming conventions improve:

- Readability
- Maintainability
- Team collaboration
- Query clarity
- Long-term scalability

---

## Recommended Naming Conventions

### 1. Use Meaningful Names

Choose names that clearly describe the object.

✅ Good

```sql
employee_salary
customer_orders
student_details
```

❌ Poor

```sql
abc
table1
temp
data
```

---

### 2. Use Lowercase Letters

Although SQL keywords are case-insensitive in most databases, many teams prefer lowercase object names.

```sql
employees
departments
customer_orders
```

---

### 3. Separate Words Using Underscores

This improves readability.

✅ Recommended

```sql
employee_details
order_history
product_category
```

❌ Avoid

```sql
EmployeeDetails
employeeDetails
employee-details
```

---

### 4. Use Singular or Plural Consistently

Both approaches are acceptable.

Examples:

```text
employees
departments
orders
```

or

```text
employee
department
order
```

Choose one convention and use it consistently across the project.

---

### 5. Avoid Reserved Keywords

Do not use SQL keywords as object names.

❌

```sql
CREATE TABLE SELECT;
```

✅

```sql
CREATE TABLE employee_data;
```

---

### 6. Avoid Spaces

Spaces require quoting and make queries harder to read.

❌

```text
Employee Details
```

✅

```text
employee_details
```

---

### 7. Keep Names Short but Meaningful

Avoid excessively long names.

❌

```text
employee_information_for_company_database
```

✅

```text
employee_info
```

---

### Industry Naming Example

```text
company_db

employees

departments

employee_salary

customer_orders

sales_transactions
```

---

# 💬 SQL Comments

Comments are notes written inside SQL scripts to explain code.

The database ignores comments during execution.

Comments improve:

- Readability
- Documentation
- Collaboration
- Maintenance

---

## Types of SQL Comments

### 1. Single-Line Comment

A single-line comment starts with two hyphens (`--`).

```sql
-- Create Employees Table

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100)
);
```

---

### 2. Multi-Line Comment

A multi-line comment starts with `/*` and ends with `*/`.

```sql
/*
This table stores
employee information.
*/

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100)
);
```

---

## Best Practices for Comments

✔ Explain **why**, not just **what**.

✔ Add comments before complex queries.

✔ Keep comments up to date.

✔ Remove obsolete comments.

---

## Example

```sql
-- Create customer table

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);
```

---

# 🏗 CREATE TABLE Statement

The `CREATE TABLE` statement is used to create a new table in a database.

A table consists of:

- Columns
- Data types
- Constraints (optional)

Each column stores a specific type of information.

---

## Syntax

```sql
CREATE TABLE table_name (
    column_name_1 data_type,
    column_name_2 data_type,
    column_name_3 data_type
);
```

---

## Example

```sql
CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100),
    salary DECIMAL(10,2),
    joining_date DATE
);
```

This creates a table named `employees` with four columns.

---

## How SQL Processes CREATE TABLE

```text
CREATE TABLE
        │
        ▼
Check whether the table name is valid
        │
        ▼
Validate column definitions
        │
        ▼
Validate data types
        │
        ▼
Create metadata
        │
        ▼
Allocate storage
        │
        ▼
Table Created Successfully
```

---

## Real-World Example

An HR system may store employee details like this:

```sql
CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);
```

This defines the structure before any employee data is inserted.

---

# 📋 SHOW TABLES

The `SHOW TABLES` command displays all tables present in the currently selected database.

It helps verify that tables have been created successfully.

---

## Syntax

```sql
SHOW TABLES;
```

---

## Example

```sql
USE company_db;

SHOW TABLES;
```

Example output:

```text
employees
departments
projects
customers
```

---

## How SHOW TABLES Works

```text
SHOW TABLES
        │
        ▼
Current Database
        │
        ▼
Read Metadata
        │
        ▼
Display Table Names
```

---

# 📖 DESCRIBE (DESC)

The `DESCRIBE` command (or its shorthand `DESC`) displays the structure of a table.

It provides information about:

- Column names
- Data types
- NULL values
- Keys
- Default values
- Extra attributes

---

## Syntax

```sql
DESCRIBE table_name;
```

or

```sql
DESC table_name;
```

---

## Example

```sql
DESC employees;
```

Example output:

| Field | Type | Null | Key | Default | Extra |
|------|------|------|-----|---------|-------|
| employee_id | int | NO | PRI | NULL | |
| employee_name | varchar(100) | YES | | NULL | |
| salary | decimal(10,2) | YES | | NULL | |
| joining_date | date | YES | | NULL | |

---

## Why DESCRIBE Is Useful

Database developers commonly use `DESC` to:

- Verify table structure
- Check column data types
- Review constraints
- Understand existing tables before writing queries

It is one of the most frequently used commands during database development and troubleshooting. 

# 🔧 ALTER TABLE Statement

The `ALTER TABLE` statement is used to **modify the structure of an existing table** without deleting the table or its data.

Unlike `CREATE TABLE`, which creates a new table, `ALTER TABLE` changes an already existing table.

Using `ALTER TABLE`, you can:

- Add new columns
- Modify existing columns
- Rename columns
- Drop columns
- Rename the table
- Add or remove constraints

It is one of the most frequently used DDL commands in database development because database structures often evolve as application requirements change.

---

## General Syntax

```sql
ALTER TABLE table_name
operation;
```

---

# ➕ ADD COLUMN

The `ADD COLUMN` clause is used to add one or more new columns to an existing table.

---

## Syntax

```sql
ALTER TABLE table_name
ADD COLUMN column_name data_type;
```

---

## Example

```sql
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);
```

The `employees` table now contains an additional column named `email`.

---

## Adding Multiple Columns

```sql
ALTER TABLE employees
ADD COLUMN phone VARCHAR(15),
ADD COLUMN address VARCHAR(200);
```

---

## Execution Flow

```text
ALTER TABLE
       │
       ▼
Locate Existing Table
       │
       ▼
Validate New Column
       │
       ▼
Update Table Metadata
       │
       ▼
Allocate Storage
       │
       ▼
Table Updated
```

---

# ✏️ MODIFY COLUMN (MySQL)

The `MODIFY COLUMN` clause changes the **data type or definition** of an existing column.

> **MySQL Note**
>
> `MODIFY COLUMN` is supported in MySQL but is **not part of the ANSI SQL standard**.

---

## Syntax

```sql
ALTER TABLE table_name
MODIFY COLUMN column_name new_data_type;
```

---

## Example

Suppose the `employee_name` column was originally defined as:

```sql
employee_name VARCHAR(50)
```

We decide that 50 characters are insufficient.

```sql
ALTER TABLE employees
MODIFY COLUMN employee_name VARCHAR(100);
```

Now the column can store up to 100 characters.

---

## Another Example

```sql
ALTER TABLE employees
MODIFY COLUMN salary DECIMAL(12,2);
```

This increases the precision of the salary column.

---

# 🔄 CHANGE COLUMN (MySQL)

The `CHANGE COLUMN` clause is used to:

- Rename a column
- Change its data type

Unlike `MODIFY COLUMN`, you must specify the column name twice.

> **MySQL Note**
>
> `CHANGE COLUMN` is specific to MySQL.

---

## Syntax

```sql
ALTER TABLE table_name
CHANGE COLUMN old_column_name
new_column_name new_data_type;
```

---

## Example

```sql
ALTER TABLE employees
CHANGE COLUMN employee_name full_name VARCHAR(100);
```

The column:

```text
employee_name
```

becomes

```text
full_name
```

---

## Another Example

```sql
ALTER TABLE employees
CHANGE COLUMN salary monthly_salary DECIMAL(12,2);
```

This changes both the column name and its definition.

---

# 🏷️ RENAME COLUMN

Modern versions of MySQL (8.0+) support renaming a column without changing its data type.

---

## Syntax

```sql
ALTER TABLE table_name
RENAME COLUMN old_name TO new_name;
```

---

## Example

```sql
ALTER TABLE employees
RENAME COLUMN phone TO mobile_number;
```

Only the column name changes.

The data type remains unchanged.

---

## When Should You Use It?

Use `RENAME COLUMN` when:

- Only the column name needs to change.
- The data type should remain the same.

---

# ❌ DROP COLUMN

The `DROP COLUMN` clause permanently removes a column from a table.

> **Warning**
>
> All data stored in the dropped column is permanently deleted.

---

## Syntax

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

---

## Example

```sql
ALTER TABLE employees
DROP COLUMN address;
```

The `address` column is removed from the table.

---

## Execution Flow

```text
ALTER TABLE
       │
       ▼
Locate Column
       │
       ▼
Remove Metadata
       │
       ▼
Delete Stored Values
       │
       ▼
Update Table Structure
```

---

# 🏷️ RENAME TABLE

The `RENAME TABLE` statement changes the name of an existing table.

No data is lost.

Only the table name changes.

---

## Syntax

```sql
RENAME TABLE old_table_name
TO new_table_name;
```

---

## Example

```sql
RENAME TABLE employees
TO employee_details;
```

The table is now called `employee_details`.

---

## Alternative (MySQL)

MySQL also supports:

```sql
ALTER TABLE employees
RENAME TO employee_details;
```

Both statements achieve the same result.

---

# 🗑️ TRUNCATE TABLE

The `TRUNCATE TABLE` statement removes **all rows** from a table.

However, the table structure remains intact.

---

## Syntax

```sql
TRUNCATE TABLE table_name;
```

---

## Example

```sql
TRUNCATE TABLE employees;
```

After execution:

- Table still exists ✅
- Columns remain ✅
- Constraints remain ✅
- All rows are deleted ✅

---

## TRUNCATE vs DELETE

| Feature | TRUNCATE | DELETE |
|----------|----------|---------|
| Removes all rows | ✅ | ✅ |
| Removes selected rows | ❌ | ✅ |
| WHERE clause | ❌ | ✅ |
| Faster | ✅ | ❌ |
| Resets AUTO_INCREMENT (MySQL) | ✅ | ❌ (generally) |

---

## Execution Flow

```text
TRUNCATE TABLE
        │
        ▼
Locate Table
        │
        ▼
Remove All Rows
        │
        ▼
Reset Storage
        │
        ▼
Keep Table Structure
```

---

# ❌ DROP TABLE

The `DROP TABLE` statement permanently deletes an entire table.

This includes:

- Table definition
- Columns
- Constraints
- Indexes
- All data

> **Warning**
>
> This operation cannot be undone unless a backup exists.

---

## Syntax

```sql
DROP TABLE table_name;
```

---

## Example

```sql
DROP TABLE employees;
```

The table no longer exists in the database.

---

## DROP TABLE vs TRUNCATE TABLE

| Feature | DROP TABLE | TRUNCATE TABLE |
|----------|------------|----------------|
| Deletes rows | ✅ | ✅ |
| Deletes table | ✅ | ❌ |
| Deletes columns | ✅ | ❌ |
| Table remains | ❌ | ✅ |
| Removes metadata | ✅ | ❌ |

---

# ⚙️ SQL Execution Flow (DDL Commands)

Although DDL commands do not retrieve or manipulate rows like `SELECT` or `UPDATE`, they still follow an execution process internally.

## CREATE TABLE

```text
CREATE TABLE
      │
      ▼
Check Syntax
      │
      ▼
Validate Table Name
      │
      ▼
Validate Columns
      │
      ▼
Validate Data Types
      │
      ▼
Create Metadata
      │
      ▼
Allocate Storage
      │
      ▼
Table Created
```

---

## ALTER TABLE

```text
ALTER TABLE
      │
      ▼
Locate Existing Table
      │
      ▼
Validate Requested Change
      │
      ▼
Modify Metadata
      │
      ▼
Update Physical Structure (if required)
      │
      ▼
Save Changes
```

---

## DROP TABLE

```text
DROP TABLE
      │
      ▼
Locate Table
      │
      ▼
Check Dependencies
      │
      ▼
Remove Metadata
      │
      ▼
Release Storage
      │
      ▼
Table Deleted
```

---

## 💡 Best Practices

- Always take a backup before running `DROP` or `TRUNCATE`.
- Test DDL statements in a development environment before applying them to production.
- Use meaningful column names when adding new columns.
- Avoid changing data types without understanding the impact on existing data.
- Review table dependencies before renaming or dropping tables.
- Use version control or migration tools (such as Flyway or Liquibase) to manage schema changes in production systems.


# 📊 Visual Explanation

Understanding how DDL commands affect a database is easier when viewed as a workflow.

---

## Database Object Lifecycle

```text
                  CREATE
                     │
                     ▼
              Database Object
                     │
          ┌──────────┼──────────┐
          │          │          │
          ▼          ▼          ▼
       ALTER      RENAME    TRUNCATE
          │                     │
          │                     ▼
          │              Removes All Rows
          │              (Structure Remains)
          │
          ▼
 Modify Table Structure
(Add/Modify/Drop Columns)
          │
          ▼
       DROP TABLE
          │
          ▼
Object Permanently Deleted
```

---

## DDL Commands at a Glance

| Command | Purpose | Structure Changed | Data Affected |
|----------|---------|------------------|---------------|
| `CREATE` | Creates a new database object | ✅ Yes | ❌ No |
| `ALTER` | Modifies an existing object | ✅ Yes | ⚠️ Depends |
| `RENAME` | Changes object name | ✅ Yes | ❌ No |
| `TRUNCATE` | Removes all rows | ❌ No | ✅ Yes |
| `DROP` | Deletes the entire object | ✅ Yes | ✅ Yes |

---

## Understanding the Difference

```text
CREATE
│
├── Creates a new table
│

ALTER
│
├── Changes an existing table
│
├── Add Column
├── Modify Column
├── Rename Column
└── Drop Column

TRUNCATE
│
├── Deletes all rows
└── Keeps the table

DROP
│
└── Deletes the entire table
```

---

## Visual Comparison

```text
Before ALTER

+-------------------------------+
| employee_id                   |
| employee_name                 |
| salary                        |
+-------------------------------+


ALTER TABLE employees
ADD COLUMN email VARCHAR(100);


After ALTER

+-------------------------------+
| employee_id                   |
| employee_name                 |
| salary                        |
| email                         |
+-------------------------------+
```

---

```text
Before TRUNCATE

employees

101 Rahul
102 Amit
103 Priya


TRUNCATE TABLE employees;


After TRUNCATE

employees

(No rows)

Structure still exists.
```

---

```text
Before DROP

employees
departments
projects


DROP TABLE employees;


After DROP

departments
projects

employees table no longer exists.
```

---

# 🌍 Real-World Examples

## Example 1: School Management System

A school is developing a new database.

Initially, the developers create a table to store student information.

```sql
CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(100),
    age INT
);
```

Later, the school decides to store each student's email address.

Instead of creating a new table, they modify the existing one.

```sql
ALTER TABLE students
ADD COLUMN email VARCHAR(100);
```

---

## Example 2: E-Commerce Platform

An online shopping application originally stores only the customer's name and phone number.

As the business grows, customers need multiple delivery addresses.

The database schema is updated using `ALTER TABLE` to support the new requirement without recreating the table.

---

## Example 3: HR Management System

An HR application stores employee salaries using the `INT` data type.

As salaries become more precise, the company decides to store decimal values.

```sql
ALTER TABLE employees
MODIFY COLUMN salary DECIMAL(12,2);
```

This allows salaries such as:

```text
45678.50
78000.75
```

instead of only whole numbers.

---

## Example 4: Cleaning Test Data

During software testing, developers frequently need to remove all records before running a new test.

Instead of deleting rows one by one, they use:

```sql
TRUNCATE TABLE test_orders;
```

The table remains available for the next round of testing.

---

## Example 5: Removing an Unused Table

A company decides to discontinue an old module.

The associated table is no longer required.

```sql
DROP TABLE old_logs;
```

This permanently removes the table from the database.

---

# 💼 Data Engineering Perspective

DDL commands are used extensively in Data Engineering because data pipelines rely on well-defined database structures.

Before data can be loaded into a warehouse or lakehouse, engineers must create and maintain the required schema.

Common use cases include:

- Creating staging tables for raw data ingestion.
- Designing fact and dimension tables in a data warehouse.
- Modifying schemas as business requirements evolve.
- Renaming database objects for consistency.
- Adding new columns when additional data sources are integrated.
- Removing obsolete tables after data migration.
- Preparing temporary tables for ETL or ELT workflows.

### Example Workflow

```text
Raw CSV Files
        │
        ▼
Landing Zone
        │
        ▼
CREATE Staging Tables
        │
        ▼
Load Raw Data
        │
        ▼
ALTER Tables (Business Changes)
        │
        ▼
Transform Data
        │
        ▼
Load Data Warehouse
        │
        ▼
Reporting & Analytics
```

### Why This Matters

In production environments, database schemas rarely remain unchanged.

Business requirements evolve over time, requiring engineers to:

- Add new columns.
- Change data types.
- Introduce new tables.
- Remove obsolete structures.
- Optimize schemas for performance and scalability.

A solid understanding of DDL commands enables Data Engineers to manage these changes safely and efficiently while minimizing disruption to downstream systems.

> **Key Takeaway**
>
> DDL commands define the foundation of every relational database. A well-designed schema makes data easier to store, query, maintain, and scale.

---

## 📚 Navigation

| Previous | Home                    | Next |
|----------|-------------------------|------|
| [⬅️ Day 01 - Database Basics](../Day_01_Database_Basics/README.md) | [🏠 SQL ](../README.md) | [Day 03 - DML Commands ➡️](../Day_03_DML_Commands/README.md) |