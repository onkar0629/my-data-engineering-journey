# Day 02 - DDL (Data Definition Language)

> Welcome to **Day 02** of my MySQL learning journey.
>
> In Day 01, we learned the fundamentals of databases and MySQL. Now it's time to start writing SQL commands.
>
> In this chapter, we will learn **Data Definition Language (DDL)**, which is used to create and manage the structure of database objects such as databases, tables, and columns.

---

# Learning Objectives

By the end of this chapter, you will be able to:

- Understand what DDL is
- Learn why DDL is important
- Understand the characteristics of DDL
- Create tables in MySQL
- Modify existing tables
- Rename tables
- Delete tables
- Remove all records from a table using `TRUNCATE`
- View table structure
- Display all tables in a database
- Understand the difference between DDL and DML

---

# Table of Contents

1. Data Definition Language (DDL)
2. CREATE TABLE
3. ALTER TABLE
4. RENAME TABLE
5. TRUNCATE TABLE
6. DROP TABLE
7. DESCRIBE / DESC
8. SHOW TABLES
9. DDL vs DML
10. Summary
11. Best Practices
12. Common Mistakes
13. Interview Questions
14. Key Takeaways
15. What's Next?

---

# 1. Data Definition Language (DDL)

## What is DDL?

**Data Definition Language (DDL)** is a category of SQL commands used to **define, create, modify, and remove the structure of database objects**.

DDL commands work on the **structure (schema)** of a database rather than the data stored inside it.

Database objects include:

- Databases
- Tables
- Columns
- Constraints
- Indexes
- Views (in some database systems)

> [!IMPORTANT]
> DDL commands modify the **structure** of database objects, not the actual records stored inside them.

---

## Why Do We Need DDL?

Before storing any data, we first need to create a proper database structure.

DDL allows us to:

- Create databases
- Create tables
- Define columns
- Specify data types
- Add or remove columns
- Rename database objects
- Delete database objects when they are no longer required

Without DDL, there would be no structure to store data.

---

## Characteristics

- Defines database structure
- Works on database objects
- Uses SQL commands
- Automatically commits changes in MySQL
- Changes are generally permanent unless restored from a backup

> [!NOTE]
> Most DDL operations perform an **implicit COMMIT** in MySQL. This means the changes are saved automatically and cannot be rolled back using `ROLLBACK`.

---

## Real-World Example

Imagine you're constructing a new apartment building.

Before people can move in, you must:

- Design the building
- Create rooms
- Add floors
- Modify room layouts if required

Only after the building is ready can people start living in it.

Similarly,

- **DDL builds the structure**
- **DML stores the data inside that structure**

---

## Data Engineer Perspective

Data Engineers frequently use DDL while:

- Designing new databases
- Creating staging tables
- Building data warehouse tables
- Updating table structures
- Managing schema changes during ETL pipelines

A well-designed table structure improves data quality, query performance, and maintainability.

---

## 📊 ASCII Diagram

```text
                    DDL
                     │
      ┌──────────────┼──────────────┐
      │              │              │
      ▼              ▼              ▼
   CREATE         ALTER          DROP
      │              │              │
      ▼              ▼              ▼
 Creates        Modifies       Removes
 Objects         Objects        Objects
```

---

## 🔄 Workflow Diagram

```text
CREATE DATABASE
        │
        ▼
USE DATABASE
        │
        ▼
CREATE TABLE
        │
        ▼
ALTER TABLE
        │
        ▼
DESCRIBE TABLE
        │
        ▼
SHOW TABLES
        │
        ▼
DROP TABLE
```

---

## 🏗️ Architecture Diagram

```text
Developer
     │
     ▼
DDL Command
     │
     ▼
MySQL Server
     │
     ▼
Database Schema
     │
     ▼
Structure Updated
```

---

## 💡 Memory Tip

> 💡 **DDL = Define**
>
> If a command changes the **structure** of a database object, it belongs to **DDL**.

---

## Examples

### Example 1: Creating a Database

```sql
CREATE DATABASE company_db;
```

**Explanation**

This command creates a new database named `company_db`.

Since it creates a database object, it is a DDL command.

---

### Example 2: Creating a Table

```sql
CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100)
);
```

**Explanation**

This command creates a new table named `employees` with two columns.

It defines the structure of the table, making it a DDL command.

---

### Example 3: Removing a Table

```sql
DROP TABLE employees;
```

**Explanation**

This command permanently deletes the `employees` table and all of its records.

> [!WARNING]
> `DROP TABLE` permanently removes the table and its data. This action cannot be undone unless a backup is available.

---

# 2. CREATE TABLE

## What is CREATE TABLE?

The **`CREATE TABLE`** statement is a DDL command used to create a new table inside a database.

A table consists of **rows** and **columns**, where:

- **Columns** define the type of information to be stored.
- **Rows** store the actual records.

Before inserting any data, a table must first be created.

> [!IMPORTANT]
> A table cannot store data until it has been created.

---

## Why Do We Need CREATE TABLE?

The `CREATE TABLE` statement helps us:

- Organize data into tables
- Define column names
- Specify data types
- Apply constraints
- Maintain data consistency
- Store related information efficiently

Without tables, a relational database cannot store records.

---

## Characteristics

- Creates a new table.
- Defines the table structure.
- Specifies column names and data types.
- Supports constraints.
- Is a DDL command.
- Automatically commits the transaction in MySQL.

---

## Real-World Example

Imagine you're creating an **Employee Register** for a company.

Before recording employee details, you first decide:

- What information to store?
- Employee ID?
- Name?
- Department?
- Salary?
- Joining Date?

Only after defining these fields can employee records be added.

Similarly, `CREATE TABLE` defines the structure before storing data.

---

## Data Engineer Perspective

Data Engineers frequently use `CREATE TABLE` to:

- Build staging tables
- Create warehouse tables
- Design fact tables
- Design dimension tables
- Create temporary tables for ETL processes

A well-designed table improves performance, data quality, and scalability.

---

## 📊 ASCII Diagram

```text
                employees
+--------------------------------------+
| employee_id    INT                   |
| employee_name  VARCHAR(100)          |
| department     VARCHAR(50)           |
| salary         DECIMAL(10,2)         |
+--------------------------------------+
```

---

## 🔄 Workflow Diagram

```text
CREATE DATABASE
        │
        ▼
USE DATABASE
        │
        ▼
CREATE TABLE
        │
        ▼
DESCRIBE TABLE
        │
        ▼
INSERT DATA
```

---

## 🏗️ Architecture Diagram

```text
Developer
     │
     ▼
CREATE TABLE
     │
     ▼
MySQL Server
     │
     ▼
Creates Table Structure
     │
     ▼
Database
```

---

## 💡 Memory Tip

> 💡 **Memory Tip**
>
> **Database → Table → Data**
>
> First create the **Database**, then the **Table**, and finally insert the **Data**.

---

## Syntax

### Basic Syntax

```sql
CREATE TABLE table_name (
    column_name_1 data_type,
    column_name_2 data_type,
    column_name_3 data_type
);
```

---

## Syntax Breakdown

| Keyword | Description |
|----------|-------------|
| `CREATE TABLE` | Creates a new table |
| `table_name` | Name of the table |
| `column_name` | Name of a column |
| `data_type` | Defines what type of data can be stored |

---

## Rules for Creating a Table

- Table names should be meaningful.
- Column names should clearly describe the data.
- Every column must have a data type.
- Column names within the same table must be unique.
- Avoid using SQL reserved keywords as table or column names.
- Follow a consistent naming convention.

> [!TIP]
> Use lowercase names with underscores for better readability.
>
> Example:
>
> - `employee_details`
> - `customer_orders`
> - `student_marks`

---

## Example 1: Create a Simple Table

```sql
CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(100),
    age INT
);
```

**Explanation**

This command creates a table named `students` with three columns:

| Column | Data Type |
|---------|-----------|
| `student_id` | `INT` |
| `student_name` | `VARCHAR(100)` |
| `age` | `INT` |

---

## Example 2: Employee Table

```sql
CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
```

**Explanation**

This table stores employee information.

- `employee_id` stores employee IDs.
- `employee_name` stores employee names.
- `department` stores department names.
- `salary` stores salary values with two decimal places.

---

## Example 3: Product Table

```sql
CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    quantity INT
);
```

**Explanation**

This table is designed for an inventory system.

Each row represents one product in the inventory.

---

## Example 4: Check the Table Structure

```sql
DESCRIBE students;
```

or

```sql
DESC students;
```

**Explanation**

Displays the structure of the `students` table, including:

- Column names
- Data types
- NULL settings
- Keys
- Default values
- Extra information

> [!NOTE]
> After creating a table, it's a good practice to run `DESCRIBE` or `DESC` to verify that the table has been created correctly.

---

## Common Errors

### Error 1: Table Already Exists

```sql
CREATE TABLE students (
    student_id INT
);
```

If the `students` table already exists, MySQL returns an error.

---

### Error 2: Duplicate Column Names

```sql
CREATE TABLE students (
    id INT,
    id VARCHAR(20)
);
```

**Explanation**

Column names within the same table must be unique.

---

### Error 3: Missing Data Type

```sql
CREATE TABLE students (
    student_id,
    student_name VARCHAR(100)
);
```

**Explanation**

Every column must have a valid data type.

---

### Error 4: Missing Comma

```sql
CREATE TABLE students (
    student_id INT
    student_name VARCHAR(100)
);
```

**Explanation**

Columns must be separated using commas.

> [!WARNING]
> Even a small syntax mistake such as a missing comma or bracket can prevent a table from being created successfully.

---

# 3. ALTER TABLE

## What is ALTER TABLE?

The **`ALTER TABLE`** statement is a DDL command used to **modify the structure of an existing table** without deleting the table or its data.

Using `ALTER TABLE`, you can:

- Add new columns
- Modify existing columns
- Rename columns
- Drop columns
- Rename the table

> [!IMPORTANT]
> `ALTER TABLE` changes the **structure** of an existing table, not the data stored inside it.

---

## Why Do We Need ALTER TABLE?

Business requirements change over time.

For example:

- A company starts storing employee email addresses.
- A school wants to add a phone number for students.
- An e-commerce website needs a discount column.

Instead of creating a new table, we simply modify the existing one.

---

## Characteristics

- Modifies an existing table
- Can add, modify, rename, or remove columns
- Preserves existing data (except when incompatible changes are made)
- Is a DDL command
- Performs an implicit commit in MySQL

---

## Real-World Example

Suppose a company initially stores:

- Employee ID
- Employee Name
- Department

Later, management decides to store:

- Email
- Phone Number
- Date of Joining

Instead of creating a new table, the existing table is altered.

---

## Data Engineer Perspective

Data Engineers frequently use `ALTER TABLE` when:

- Business requirements change
- New columns are introduced
- Existing columns need modification
- Data warehouse schemas evolve
- ETL pipelines require additional fields

---

## 📊 ASCII Diagram

```text
Before ALTER

employees

+----------------------+
| id        INT        |
| name      VARCHAR    |
+----------------------+

          │
          │ ALTER TABLE
          ▼

After ALTER

+----------------------+
| id        INT        |
| name      VARCHAR    |
| email     VARCHAR    |
+----------------------+
```

---

## 🔄 Workflow Diagram

```text
Existing Table
       │
       ▼
ALTER TABLE
       │
       ▼
Choose Operation
       │
       ├─────────────┬──────────────┬──────────────┐
       ▼             ▼              ▼              ▼
ADD COLUMN     MODIFY COLUMN   RENAME COLUMN   DROP COLUMN
```

---

## 🏗️ Architecture Diagram

```text
Developer
     │
     ▼
ALTER TABLE
     │
     ▼
MySQL Server
     │
     ▼
Updates Table Structure
     │
     ▼
Existing Table
```

---

## 💡 Memory Tip

> 💡 **Memory Tip**
>
> Think of `ALTER` as **"Alter = Change"**.
>
> If you want to change the structure of an existing table, use `ALTER TABLE`.

---

# 3.1 ADD COLUMN

## What is ADD COLUMN?

The `ADD COLUMN` clause is used to add one or more new columns to an existing table.

---

## Syntax

```sql
ALTER TABLE table_name
ADD COLUMN column_name data_type;
```

---

## Example 1

```sql
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);
```

**Explanation**

Adds a new column named `email` to the `employees` table.

---

## Example 2

```sql
ALTER TABLE employees
ADD COLUMN salary DECIMAL(10,2);
```

**Explanation**

Adds a new `salary` column capable of storing decimal values.

---

## Example 3

```sql
ALTER TABLE employees
ADD COLUMN joining_date DATE;
```

**Explanation**

Adds a column to store the employee's joining date.

---

# 3.2 MODIFY COLUMN

## What is MODIFY COLUMN?

The `MODIFY COLUMN` clause changes the **data type or size** of an existing column.

---

## Syntax

```sql
ALTER TABLE table_name
MODIFY COLUMN column_name new_data_type;
```

---

## Example 1

```sql
ALTER TABLE employees
MODIFY COLUMN employee_name VARCHAR(150);
```

**Explanation**

Changes the maximum length of `employee_name` from its previous size to 150 characters.

---

## Example 2

```sql
ALTER TABLE employees
MODIFY COLUMN salary DECIMAL(12,2);
```

**Explanation**

Increases the precision of the salary column.

---

## Example 3

```sql
ALTER TABLE employees
MODIFY COLUMN phone_number BIGINT;
```

**Explanation**

Changes the data type of `phone_number` to `BIGINT`.

> [!WARNING]
> Ensure the new data type is compatible with the existing data to avoid errors or data loss.

---

# 3.3 CHANGE COLUMN

## What is CHANGE COLUMN?

The `CHANGE COLUMN` clause is used to **rename a column** and optionally change its data type.

Unlike `MODIFY COLUMN`, you must specify both the old column name and the new column name.

---

## Syntax

```sql
ALTER TABLE table_name
CHANGE COLUMN old_column_name new_column_name data_type;
```

---

## Example 1

```sql
ALTER TABLE employees
CHANGE COLUMN employee_name full_name VARCHAR(150);
```

**Explanation**

Renames `employee_name` to `full_name` while keeping the data type as `VARCHAR(150)`.

---

## Example 2

```sql
ALTER TABLE employees
CHANGE COLUMN salary monthly_salary DECIMAL(12,2);
```

**Explanation**

Renames the `salary` column to `monthly_salary`.

---

## Example 3

```sql
ALTER TABLE employees
CHANGE COLUMN dept department VARCHAR(50);
```

**Explanation**

Changes the column name from `dept` to `department`.

---

# 3.4 RENAME COLUMN

## What is RENAME COLUMN?

`RENAME COLUMN` is used to rename an existing column without changing its data type.

> [!NOTE]
> `RENAME COLUMN` is available in **MySQL 8.0 and later**.

---

## Syntax

```sql
ALTER TABLE table_name
RENAME COLUMN old_column_name TO new_column_name;
```

---

## Example 1

```sql
ALTER TABLE employees
RENAME COLUMN email TO official_email;
```

**Explanation**

Renames the `email` column to `official_email`.

---

## Example 2

```sql
ALTER TABLE employees
RENAME COLUMN phone TO mobile_number;
```

**Explanation**

Changes the column name while keeping the same data type.

---

# 3.5 DROP COLUMN

## What is DROP COLUMN?

The `DROP COLUMN` clause removes an existing column from a table.

---

## Syntax

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

---

## Example 1

```sql
ALTER TABLE employees
DROP COLUMN email;
```

**Explanation**

Removes the `email` column from the `employees` table.

---

## Example 2

```sql
ALTER TABLE employees
DROP COLUMN phone_number;
```

**Explanation**

Deletes the `phone_number` column and all the values stored in it.

> [!WARNING]
> Dropping a column permanently deletes all data stored in that column.

---

## Example Workflow

```text
CREATE TABLE
      │
      ▼
employees
      │
      ▼
ADD COLUMN
      │
      ▼
MODIFY COLUMN
      │
      ▼
CHANGE / RENAME COLUMN
      │
      ▼
DROP COLUMN
      │
      ▼
Updated Table Structure
```

---

# 4. RENAME TABLE

## What is RENAME TABLE?

The **`RENAME TABLE`** statement is a DDL command used to change the name of an existing table without affecting its data or structure.

It is useful when:

- A table name is incorrect.
- Naming conventions change.
- The table's purpose changes.
- A more meaningful name is required.

> [!IMPORTANT]
> `RENAME TABLE` changes **only the table name**. The data and table structure remain unchanged.

---

## Why Do We Need RENAME TABLE?

As projects grow, table names may need to be updated to improve readability and maintain consistency.

For example:

- `emp` → `employees`
- `stud` → `students`
- `cust` → `customers`

Instead of creating a new table and copying the data, we simply rename the existing table.

---

## Characteristics

- Changes the table name.
- Does not modify the data.
- Does not change column definitions.
- Is a DDL command.
- Performs an implicit commit.

---

## Real-World Example

A company initially creates a table named:

```text
emp
```

As the project grows, the team decides to use descriptive names.

The table is renamed to:

```text
employees
```

No data is lost during this process.

---

## Data Engineer Perspective

Data Engineers rename tables when:

- Standardizing naming conventions
- Migrating legacy databases
- Improving readability
- Organizing staging and production tables

---

## 📊 ASCII Diagram

```text
Before

+-----------+
|    emp    |
+-----------+

      │
      │ RENAME TABLE
      ▼

+----------------+
|   employees    |
+----------------+
```

---

## 🔄 Workflow Diagram

```text
Existing Table
       │
       ▼
RENAME TABLE
       │
       ▼
New Table Name
       │
       ▼
Continue Using Table
```

---

## 🏗️ Architecture Diagram

```text
Developer
     │
     ▼
RENAME TABLE
     │
     ▼
MySQL Server
     │
     ▼
Table Name Updated
     │
     ▼
Database
```

---

## 💡 Memory Tip

> 💡 **Memory Tip**
>
> **RENAME TABLE = New Name, Same Data**

---

## Syntax

```sql
RENAME TABLE old_table_name
TO new_table_name;
```

---

## Example 1

```sql
RENAME TABLE emp
TO employees;
```

**Explanation**

Changes the table name from `emp` to `employees`.

---

## Example 2

```sql
RENAME TABLE stud
TO students;
```

**Explanation**

Renames the `stud` table to `students`.

---

## Example 3

```sql
RENAME TABLE customer_details
TO customers;
```

**Explanation**

The table receives a more meaningful and readable name.

---

> [!WARNING]
> Ensure that applications, views, procedures, or queries referencing the old table name are updated after renaming the table.

---

# 5. TRUNCATE TABLE

## What is TRUNCATE TABLE?

The **`TRUNCATE TABLE`** statement is a DDL command used to remove **all rows** from a table while keeping the table structure intact.

After truncation:

- The table still exists.
- All columns remain unchanged.
- All records are permanently deleted.

> [!IMPORTANT]
> `TRUNCATE TABLE` removes **all records** but does **not** delete the table itself.

---

## Why Do We Need TRUNCATE TABLE?

Sometimes we want to:

- Empty a table
- Reload fresh data
- Clear test data
- Reset staging tables

Instead of deleting rows one by one, `TRUNCATE TABLE` removes everything quickly.

---

## Characteristics

- Removes all rows.
- Preserves the table structure.
- Faster than `DELETE`.
- Resets the `AUTO_INCREMENT` counter in MySQL.
- Performs an implicit commit.

---

## Real-World Example

Suppose a staging table is loaded every night.

Before loading today's data, yesterday's data is removed using:

```sql
TRUNCATE TABLE staging_sales;
```

The table remains ready for the next data load.

---

## Data Engineer Perspective

Data Engineers frequently truncate:

- Staging tables
- Temporary tables
- Test tables
- Intermediate ETL tables

before loading fresh data.

---

## 📊 ASCII Diagram

```text
Before

employees

ID   Name
---------
1    Rahul
2    Priya
3    Amit

        │
        │ TRUNCATE TABLE
        ▼

employees

(No Rows)

Structure Still Exists
```

---

## 🔄 Workflow Diagram

```text
Table
   │
   ▼
TRUNCATE TABLE
   │
   ▼
All Records Removed
   │
   ▼
Table Ready for New Data
```

---

## 🏗️ Architecture Diagram

```text
Developer
     │
     ▼
TRUNCATE TABLE
     │
     ▼
MySQL Server
     │
     ▼
Delete All Rows
     │
     ▼
Keep Table Structure
```

---

## 💡 Memory Tip

> 💡 **Memory Tip**
>
> **TRUNCATE = Table Stays, Data Goes**

---

## Syntax

```sql
TRUNCATE TABLE table_name;
```

---

## Example 1

```sql
TRUNCATE TABLE employees;
```

**Explanation**

Deletes all records from the `employees` table while keeping the table structure.

---

## Example 2

```sql
TRUNCATE TABLE students;
```

**Explanation**

Removes every student record but keeps the table ready for new records.

---

## Example 3

```sql
TRUNCATE TABLE products;
```

**Explanation**

Empties the `products` table without deleting the table itself.

---

## TRUNCATE vs DELETE

| Feature | TRUNCATE | DELETE |
|----------|----------|---------|
| Removes All Rows | ✅ Yes | ✅ Yes (Without `WHERE`) |
| Supports `WHERE` | ❌ No | ✅ Yes |
| Faster | ✅ Yes | ❌ Usually Slower |
| DDL/DML | DDL | DML |
| Resets `AUTO_INCREMENT` | ✅ Yes | ❌ No (Generally) |
| Table Structure | Remains | Remains |

> [!WARNING]
> `TRUNCATE TABLE` removes all records permanently. Since it performs an implicit commit, the operation cannot be rolled back in MySQL.

---

# 6. DROP TABLE

## What is DROP TABLE?

The **`DROP TABLE`** statement is a DDL command used to **permanently delete an entire table** from the database.

When a table is dropped:

- The table is removed.
- All rows are deleted.
- All columns are deleted.
- Constraints, indexes, and other associated objects are also removed.

> [!IMPORTANT]
> `DROP TABLE` removes both the **table structure** and **all the data** stored in it.

---

## Why Do We Need DROP TABLE?

Sometimes a table is no longer required.

Examples:

- Temporary project tables
- Test tables
- Duplicate tables
- Obsolete tables

Instead of keeping unused tables, we remove them using `DROP TABLE`.

---

## Characteristics

- Deletes the entire table.
- Deletes all records.
- Deletes the table structure.
- Frees storage space.
- Is a DDL command.
- Performs an implicit commit.

---

## Real-World Example

Suppose a company creates a temporary table for testing.

```text
employee_test
```

After testing is complete, the table is no longer needed.

It can be removed using:

```sql
DROP TABLE employee_test;
```

---

## Data Engineer Perspective

Data Engineers use `DROP TABLE` when:

- Removing temporary tables
- Cleaning up staging environments
- Deleting obsolete tables
- Rebuilding table structures

---

## 📊 ASCII Diagram

```text
Before

Database
   │
   ▼
+----------------+
|   employees    |
+----------------+

        │
        │ DROP TABLE
        ▼

Table Removed
```

---

## 🔄 Workflow Diagram

```text
Existing Table
      │
      ▼
DROP TABLE
      │
      ▼
Table Deleted
      │
      ▼
Storage Released
```

---

## 🏗️ Architecture Diagram

```text
Developer
     │
     ▼
DROP TABLE
     │
     ▼
MySQL Server
     │
     ▼
Delete Table
     │
     ▼
Database
```

---

## 💡 Memory Tip

> 💡 **Memory Tip**
>
> **DROP = Everything Disappears**
>
> Structure ❌
>
> Data ❌

---

## Syntax

```sql
DROP TABLE table_name;
```

---

## Example 1

```sql
DROP TABLE employees;
```

**Explanation**

Deletes the `employees` table permanently.

---

## Example 2

```sql
DROP TABLE students;
```

**Explanation**

Deletes the `students` table along with all its records.

---

## Example 3

```sql
DROP TABLE IF EXISTS employees;
```

**Explanation**

Deletes the table only if it exists.

If the table does not exist, MySQL does not generate an error.

> [!TIP]
> Use `IF EXISTS` to avoid errors when dropping tables.

---

> [!WARNING]
> Once a table is dropped, both the structure and data are permanently removed unless a backup is available.

---

# 7. DESCRIBE / DESC

## What is DESCRIBE?

The **`DESCRIBE`** (or `DESC`) statement displays the structure of a table.

It provides information about:

- Column names
- Data types
- NULL values
- Keys
- Default values
- Extra properties

---

## Why Do We Need DESCRIBE?

It helps developers:

- Verify table creation
- Check column names
- Understand data types
- Inspect constraints
- Debug table structure

---

## Characteristics

- Displays metadata.
- Does not modify data.
- Read-only command.
- Useful for verification.

---

## 📊 ASCII Diagram

```text
employees

        │
        ▼
DESCRIBE employees;

        │
        ▼

+-------------------------------+
| Column | Type | Null | Key... |
+-------------------------------+
```

---

## 🔄 Workflow Diagram

```text
CREATE TABLE
      │
      ▼
DESCRIBE TABLE
      │
      ▼
Verify Structure
```

---

## 🏗️ Architecture Diagram

```text
Developer
     │
     ▼
DESCRIBE TABLE
     │
     ▼
MySQL Server
     │
     ▼
Returns Table Metadata
```

---

## 💡 Memory Tip

> 💡 **Memory Tip**
>
> **DESCRIBE = Describe the Table**

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

## Example 1

```sql
DESCRIBE employees;
```

**Explanation**

Displays the complete structure of the `employees` table.

---

## Example 2

```sql
DESC students;
```

**Explanation**

`DESC` is the short form of `DESCRIBE`.

Both statements produce the same result.

---

# 8. SHOW TABLES

## What is SHOW TABLES?

The **`SHOW TABLES`** statement displays all tables present in the currently selected database.

---

## Why Do We Need SHOW TABLES?

It helps us:

- View available tables
- Verify table creation
- Check database contents
- Navigate databases easily

---

## Characteristics

- Lists table names.
- Works only on the selected database.
- Does not modify data.

---

## 📊 ASCII Diagram

```text
Current Database
        │
        ▼
SHOW TABLES;
        │
        ▼

employees
departments
projects
salary
```

---

## 🔄 Workflow Diagram

```text
USE DATABASE
      │
      ▼
SHOW TABLES
      │
      ▼
List of Tables
```

---

## 🏗️ Architecture Diagram

```text
Developer
     │
     ▼
SHOW TABLES
     │
     ▼
MySQL Server
     │
     ▼
Returns Table List
```

---

## 💡 Memory Tip

> 💡 **Memory Tip**
>
> **SHOW TABLES = Show all tables in the current database**

---

## Syntax

```sql
SHOW TABLES;
```

---

## Example

```sql
SHOW TABLES;
```

**Explanation**

Displays every table available in the currently selected database.

---

# 9. DDL vs DML

| Feature | DDL | DML |
|----------|-----|-----|
| Full Form | Data Definition Language | Data Manipulation Language |
| Purpose | Defines database structure | Manipulates data |
| Works On | Database Objects | Records |
| Commands | CREATE, ALTER, DROP, TRUNCATE, RENAME | INSERT, UPDATE, DELETE |
| Auto Commit | Yes | No (Depends on transaction) |
| Rollback | Generally No | Yes (When transactions are used) |

---

## 💡 Memory Tip

> 💡 **DDL = Define**
>
> **DML = Manipulate**

---

# Summary

In this chapter, you learned:

- Data Definition Language (DDL)
- CREATE TABLE
- ALTER TABLE
- RENAME TABLE
- TRUNCATE TABLE
- DROP TABLE
- DESCRIBE / DESC
- SHOW TABLES
- Difference between DDL and DML

---

# Best Practices

- Use meaningful table names.
- Follow a consistent naming convention.
- Verify table structures using `DESCRIBE`.
- Use `IF EXISTS` before dropping tables.
- Test DDL commands in a development environment before running them in production.
- Always take backups before executing destructive commands.

---

# Common Mistakes

- Forgetting to select a database using `USE`.
- Using `DROP TABLE` instead of `TRUNCATE TABLE`.
- Accidentally deleting production tables.
- Creating tables without appropriate data types.
- Not verifying the table structure after creation.

---

# Interview Questions

### Basic

1. What is DDL?
2. What are DDL commands?
3. What is the purpose of `CREATE TABLE`?
4. What is `ALTER TABLE`?
5. What is `DROP TABLE`?
6. What is `TRUNCATE TABLE`?
7. What is the difference between `DESCRIBE` and `SHOW TABLES`?

---

### Intermediate

8. Difference between `DROP TABLE` and `TRUNCATE TABLE`.
9. Difference between DDL and DML.
10. Why does MySQL automatically commit DDL statements?
11. When would you use `ALTER TABLE`?
12. What is the purpose of `IF EXISTS`?

---

### Practical

13. Create an `employees` table with appropriate columns.
14. Add a new column using `ALTER TABLE`.
15. Rename a column.
16. Remove a column.
17. Rename a table.
18. Display the structure of a table.
19. List all tables in the current database.
20. Delete a table safely.

---

# Key Takeaways

- DDL commands define and modify the structure of database objects.
- `CREATE TABLE` creates new tables.
- `ALTER TABLE` modifies existing tables.
- `RENAME TABLE` changes the table name.
- `TRUNCATE TABLE` removes all rows but keeps the table.
- `DROP TABLE` removes both the table and its data.
- `DESCRIBE` displays table structure.
- `SHOW TABLES` lists all tables in the current database.

---

# What's Next?

In **Day 03**, we will learn **DML (Data Manipulation Language)** and explore commands such as:

- `INSERT`
- `UPDATE`
- `DELETE`

These commands are used to add, modify, and remove data stored in database tables.