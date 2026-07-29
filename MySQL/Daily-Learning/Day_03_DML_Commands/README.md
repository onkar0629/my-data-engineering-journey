# Day 03 - DML (Data Manipulation Language)

## Introduction

After learning how to create and modify database objects using **DDL (Data Definition Language)**, the next step is to work with the **data stored inside those tables**. This is where **DML (Data Manipulation Language)** comes into play.

DML is a category of SQL commands used to **insert**, **update**, and **delete** records in database tables. These commands allow users and applications to interact with the data on a daily basis.

Almost every application you use performs DML operations.

Examples:

- Creating a new Amazon account inserts a new customer record.
- Updating your delivery address modifies an existing record.
- Cancelling an order updates the order status.
- Deleting an old account removes the corresponding record.

Unlike DDL, DML does **not** change the structure of the database. It only changes the **data** stored inside the tables.

> [!IMPORTANT]
> **DDL manages database objects, whereas DML manages the data stored inside those objects.**

---

# Learning Objectives

After completing this chapter, you will be able to:

- Understand DML and its purpose.
- Insert records into a table.
- Insert multiple rows using a single query.
- Update existing records.
- Delete records from a table.
- Understand transactions.
- Use COMMIT, ROLLBACK, and SAVEPOINT.
- Differentiate between DDL and DML.
- Write efficient DML queries.

---

# Table of Contents

1. What is DML?
2. Why do we need DML?
3. Characteristics of DML
4. INSERT Statement
5. INSERT Multiple Rows
6. UPDATE Statement
7. DELETE Statement
8. COMMIT
9. ROLLBACK
10. SAVEPOINT
11. DML vs DDL
12. Summary
13. Best Practices
14. Common Mistakes
15. Interview Questions
16. Key Takeaways
17. What's Next?

---

# What is DML?

**DML (Data Manipulation Language)** is a category of SQL commands used to **manipulate the data stored inside database tables**.

The word **Manipulation** means **adding, modifying, or removing data**.

DML commands allow us to:

- Insert new records
- Update existing records
- Delete records

These operations are performed without changing the table structure.

---

## Why do we need DML?

Imagine a company has already created an **Employees** table.

Initially, the table contains no data.

```
Employees

+-------------+---------------+
| Employee ID | Employee Name |
+-------------+---------------+
|             |               |
+-------------+---------------+
```

Whenever a new employee joins the company, their information must be stored.

Whenever an employee gets promoted, their information must be updated.

Whenever an employee leaves the company, their record may be removed.

These operations are possible only because of DML.

Without DML, databases would simply contain empty tables.

---

## Characteristics of DML

- Works on the data stored inside tables.
- Does not modify the table structure.
- Supports inserting new records.
- Supports updating existing records.
- Supports deleting records.
- Can modify one row or multiple rows.
- Supports transactions.

---

## DML Commands

| Command | Purpose |
|----------|----------|
| INSERT | Adds new records |
| UPDATE | Modifies existing records |
| DELETE | Removes records |

---

## DML Workflow

```
             User/Application
                    │
                    ▼
             Executes DML Query
                    │
        ┌───────────┼───────────┐
        │           │           │
        ▼           ▼           ▼
     INSERT      UPDATE      DELETE
        │           │           │
        └───────────┼───────────┘
                    ▼
             Data is Modified
```

---

## Dataset Used Throughout This Chapter

Throughout this chapter, we will use the following table for all examples.

```sql
CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    city VARCHAR(50)
);
```

```sql
INSERT INTO employees VALUES
(101, 'Amit Sharma', 'HR', 'HR Executive', 45000, '2022-01-15', 'Mumbai'),
(102, 'Priya Patel', 'IT', 'Software Engineer', 75000, '2021-03-20', 'Pune'),
(103, 'Rahul Verma', 'Finance', 'Accountant', 62000, '2020-07-12', 'Delhi'),
(104, 'Sneha Joshi', 'IT', 'Data Analyst', 68000, '2023-02-01', 'Bengaluru'),
(105, 'Karan Mehta', 'Sales', 'Sales Executive', 52000, '2022-05-18', 'Ahmedabad'),
(106, 'Neha Singh', 'Marketing', 'Marketing Manager', 71000, '2019-11-25', 'Mumbai'),
(107, 'Rohit Gupta', 'IT', 'Database Admin', 85000, '2021-08-30', 'Hyderabad'),
(108, 'Anjali Desai', 'HR', 'Recruiter', 48000, '2023-04-10', 'Pune'),
(109, 'Vikas Kumar', 'Finance', 'Financial Analyst', 67000, '2020-09-14', 'Chennai'),
(110, 'Pooja Nair', 'Sales', 'Sales Manager', 78000, '2018-12-05', 'Kochi');
```

> [!NOTE]
> We will continue using this dataset throughout the upcoming SQL chapters so you can practice with a consistent and realistic database.

---

# INSERT Statement

The **INSERT** statement is used to **add one or more new records into a table**.

Whenever new information needs to be stored in a database, the `INSERT` statement is used.

For example:

- A new employee joins a company.
- A customer registers on an e-commerce website.
- A student takes admission to a college.
- A patient visits a hospital for the first time.

All these operations require inserting new records into the database.

---

## Why do we need INSERT?

Consider an employee management system.

Whenever a new employee joins the organization, their details must be stored in the database.

Without the `INSERT` statement, the database would never contain any employee records.

### Workflow

```
New Employee
      │
      ▼
Application
      │
      ▼
INSERT Query
      │
      ▼
employees Table
```

Similarly,

- New customer registration
- New product added
- New order placed
- New student admission
- New patient registration

All of these operations require the **INSERT** statement.

---

## Syntax

### Method 1 (Recommended)

Specify the column names explicitly.

```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```

### Explanation

- `INSERT INTO` specifies the table.
- Column names define where the values should be stored.
- `VALUES` contains the data to insert.

> [!TIP]
> Always specify column names. It makes your queries easier to read and protects them from breaking if the table structure changes.

---

### Method 2

Insert values into every column.

```sql
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
```

This method works only when values are provided in the exact order of the table columns.

---

## Example 1: Insert a Single Record

```sql
INSERT INTO employees
(employee_id,
employee_name,
department,
designation,
salary,
joining_date,
city)
VALUES
(111,
'Riya Sharma',
'IT',
'Software Engineer',
72000,
'2024-01-15',
'Pune');
```

### Explanation

A new employee record is added to the `employees` table.

| employee_id | employee_name | department | designation | salary | joining_date | city |
|-------------|---------------|------------|-------------|--------|--------------|------|
| 111 | Riya Sharma | IT | Software Engineer | 72000 | 2024-01-15 | Pune |

---

## Example 2: Insert Using All Columns Without Mentioning Column Names

```sql
INSERT INTO employees
VALUES
(112,
'Arjun Mehta',
'Finance',
'Accountant',
58000,
'2023-11-20',
'Mumbai');
```

### Explanation

Since values are supplied for every column in the correct order, MySQL inserts the record successfully.

> [!WARNING]
> If the order of values does not match the table definition, incorrect data will be inserted.

---

## Example 3: Insert Into Selected Columns

Suppose the `city` column is optional.

```sql
INSERT INTO employees
(employee_id,
employee_name,
department,
designation,
salary,
joining_date)
VALUES
(113,
'Neha Patil',
'HR',
'Recruiter',
48000,
'2024-02-01');
```

### Explanation

Only the specified columns receive values.

The remaining column (`city`) stores **NULL** because no value was provided.

---

## Before and After INSERT

### Before

```
employee_id | employee_name
------------+---------------
101         | Amit Sharma
102         | Priya Patel
```

### Query

```sql
INSERT INTO employees
(employee_id,
employee_name,
department,
designation,
salary,
joining_date,
city)
VALUES
(114,
'Kunal Shah',
'Sales',
'Sales Executive',
55000,
'2024-03-10',
'Ahmedabad');
```

### After

```
employee_id | employee_name
------------+----------------
101         | Amit Sharma
102         | Priya Patel
114         | Kunal Shah
```

---

## Inserting Multiple Rows

Instead of executing multiple `INSERT` statements, MySQL allows us to insert multiple records using a single query.

This approach is:

- Faster
- More efficient
- Easier to maintain
- Commonly used in real-world projects

### Syntax

```sql
INSERT INTO table_name (column1, column2, ...)
VALUES
(value1, value2, ...),
(value1, value2, ...),
(value1, value2, ...);
```

---

## Example

```sql
INSERT INTO employees
(employee_id,
employee_name,
department,
designation,
salary,
joining_date,
city)
VALUES
(115, 'Aakash Rao', 'IT', 'Developer', 69000, '2024-04-12', 'Hyderabad'),
(116, 'Meera Joshi', 'HR', 'Recruiter', 47000, '2024-04-15', 'Pune'),
(117, 'Vivek Singh', 'Finance', 'Analyst', 65000, '2024-04-20', 'Delhi');
```

### Explanation

This single query inserts **three employee records** into the table.

Instead of executing three separate queries, MySQL processes them together, reducing execution time and improving performance.

---

## Memory Tip

> 🧠 **INSERT = Add New Rows**

Think of the keyword **INSERT** whenever you need to store **new information** in a database.

```
No Record
    │
    ▼
 INSERT
    │
    ▼
New Record Added
```

---

---

# UPDATE Statement

## What is UPDATE?

The **UPDATE** statement is used to **modify existing records** in a table.

Instead of adding a new row, the UPDATE statement changes the values already stored in one or more rows.

For example:

- An employee receives a salary increment.
- A customer changes their mobile number.
- A student updates their address.
- A product price changes.

In all these situations, the existing records are updated rather than creating new ones.

---

## Why do we need UPDATE?

Data stored in a database is not permanent. It changes over time.

Consider an employee who receives a promotion.

Before Promotion

| Employee ID | Employee Name | Designation | Salary |
|-------------|---------------|-------------|--------|
| 102 | Priya Patel | Software Engineer | 75000 |

After Promotion

| Employee ID | Employee Name | Designation | Salary |
|-------------|---------------|-------------|--------|
| 102 | Priya Patel | Senior Software Engineer | 90000 |

Instead of deleting and inserting the record again, we simply update the existing record.

---

## Characteristics

- Modifies existing records.
- Can update one or multiple columns.
- Can update one row or multiple rows.
- Usually used with the **WHERE** clause.
- Without a **WHERE** clause, all rows are updated.

> [!WARNING]
> Forgetting the **WHERE** clause may update every record in the table.

---

## Syntax

### Update a Single Column

```sql
UPDATE table_name
SET column_name = value
WHERE condition;
```

---

### Update Multiple Columns

```sql
UPDATE table_name
SET
    column1 = value1,
    column2 = value2,
    column3 = value3
WHERE condition;
```

---

## Example 1: Update Salary

Increase Amit Sharma's salary.

```sql
UPDATE employees
SET salary = 50000
WHERE employee_id = 101;
```

### Explanation

Only the employee whose `employee_id` is **101** will have their salary updated.

Before

| Employee ID | Employee Name | Salary |
|-------------|---------------|--------|
| 101 | Amit Sharma | 45000 |

After

| Employee ID | Employee Name | Salary |
|-------------|---------------|--------|
| 101 | Amit Sharma | 50000 |

---

## Example 2: Update Department

Move Rahul Verma to the IT department.

```sql
UPDATE employees
SET department = 'IT'
WHERE employee_id = 103;
```

### Explanation

Only Rahul Verma's department changes.

---

## Example 3: Update Multiple Columns

Promote Priya Patel.

```sql
UPDATE employees
SET
    designation = 'Senior Software Engineer',
    salary = 90000
WHERE employee_id = 102;
```

### Explanation

Both the **designation** and **salary** columns are updated in a single query.

---

## Example 4: Update All Employees in a Department

Increase the salary of every employee in the HR department by ₹5,000.

```sql
UPDATE employees
SET salary = salary + 5000
WHERE department = 'HR';
```

### Explanation

This query updates every employee whose department is **HR**.

Using an arithmetic expression allows us to increase the existing salary without manually specifying new values.

---

## Example 5: Update Every Record

```sql
UPDATE employees
SET city = 'Mumbai';
```

### Explanation

Since there is **no WHERE clause**, every employee's city becomes **Mumbai**.

> [!WARNING]
> Always double-check an UPDATE statement before executing it without a **WHERE** clause.

---

## Memory Tip

> 🧠 **UPDATE = Modify Existing Data**

```
Existing Record
       │
       ▼
     UPDATE
       │
       ▼
Modified Record
```

---

# DELETE Statement

## What is DELETE?

The **DELETE** statement is used to **remove existing records (rows)** from a table.

Unlike the **DROP** statement, the DELETE statement removes only the data while keeping the table structure intact.

It can delete:

- A single row
- Multiple rows
- All rows in a table

---

## Why do we need DELETE?

Sometimes data is no longer required.

For example:

- An employee resigns.
- A customer permanently deletes their account.
- A cancelled order needs to be removed.
- Duplicate records need to be cleaned.

Instead of deleting the entire table, we delete only the unnecessary records.

---

## Characteristics

- Removes records from a table.
- Does not remove the table structure.
- Can delete one or multiple rows.
- Commonly used with the **WHERE** clause.
- Without a **WHERE** clause, all rows are deleted.

> [!WARNING]
> Forgetting the **WHERE** clause deletes **every record** in the table.

---

## Syntax

### Delete Specific Records

```sql
DELETE FROM table_name
WHERE condition;
```

---

### Delete All Records

```sql
DELETE FROM table_name;
```

---

## Example 1: Delete a Single Employee

Delete the employee whose ID is 108.

```sql
DELETE FROM employees
WHERE employee_id = 108;
```

### Explanation

Only the employee with **employee_id = 108** is removed.

---

## Example 2: Delete Employees from HR Department

```sql
DELETE FROM employees
WHERE department = 'HR';
```

### Explanation

Every employee belonging to the **HR** department is deleted.

All other records remain unchanged.

---

## Example 3: Delete Employees from Mumbai

```sql
DELETE FROM employees
WHERE city = 'Mumbai';
```

### Explanation

Only employees whose city is **Mumbai** are removed.

---

## Example 4: Delete Employees with Salary Less Than ₹50,000

```sql
DELETE FROM employees
WHERE salary < 50000;
```

### Explanation

Employees earning less than **₹50,000** are removed from the table.

---

## Example 5: Delete All Records

```sql
DELETE FROM employees;
```

### Explanation

Every row is deleted.

The **employees** table still exists and can accept new records.

---

## DELETE Workflow

```
employees Table
        │
        ▼
DELETE Statement
        │
        ▼
Matching Rows Removed
        │
        ▼
Table Structure Remains
```

---

## Memory Tip

> 🧠 **DELETE = Remove Rows, Keep the Table**

```
Table
 │
 ├── Row 1
 ├── Row 2
 ├── Row 3
 │
DELETE
 │
 ▼
Table
 │
 ├── Row 1
 └── Row 3
```

Only the selected rows are removed. The table itself remains available for future use.

---

# COMMIT Statement

## What is COMMIT?

The **COMMIT** statement is used to **permanently save all changes made during the current transaction**.

Once a transaction is committed, the changes become permanent and cannot be rolled back.

---

## Why do we need COMMIT?

When working with important data, we often perform multiple operations together.

For example:

- Insert a new employee.
- Update the employee's department.
- Update the employee's salary.

After verifying that all operations are correct, we permanently save them using **COMMIT**.

Without COMMIT, the changes may not be permanently stored (when transactions are being used).

---

## Characteristics

- Permanently saves the current transaction.
- Ends the current transaction.
- Makes changes visible to other users.
- Cannot be undone using ROLLBACK after execution.

---

## Syntax

```sql
COMMIT;
```

---

## Example 1

```sql
START TRANSACTION;

INSERT INTO employees
VALUES
(111,
'Riya Sharma',
'IT',
'Software Engineer',
72000,
'2024-01-15',
'Pune');

COMMIT;
```

### Explanation

The new employee record is permanently stored in the database.

---

## Example 2

```sql
START TRANSACTION;

UPDATE employees
SET salary = 90000
WHERE employee_id = 102;

COMMIT;
```

### Explanation

The salary update becomes permanent.

---

## Memory Tip

> 🧠 **COMMIT = Save Permanently**

```
Transaction
      │
      ▼
   COMMIT
      │
      ▼
Changes Saved Forever
```

---

# ROLLBACK Statement

## What is ROLLBACK?

The **ROLLBACK** statement is used to **undo all changes made during the current transaction**.

It returns the database to its previous committed state.

---

## Why do we need ROLLBACK?

Mistakes can happen while modifying data.

For example:

- Wrong salary updated.
- Incorrect employee deleted.
- Invalid data inserted.

Instead of manually fixing every mistake, we can cancel the entire transaction using **ROLLBACK**.

---

## Characteristics

- Undoes uncommitted changes.
- Restores the previous state of the database.
- Ends the current transaction.
- Works only before COMMIT.

---

## Syntax

```sql
ROLLBACK;
```

---

## Example 1

```sql
START TRANSACTION;

UPDATE employees
SET salary = 100000
WHERE employee_id = 101;

ROLLBACK;
```

### Explanation

The salary update is cancelled.

The employee's salary remains unchanged.

---

## Example 2

```sql
START TRANSACTION;

DELETE FROM employees
WHERE employee_id = 105;

ROLLBACK;
```

### Explanation

The employee record is restored because the transaction was rolled back.

---

## Memory Tip

> 🧠 **ROLLBACK = Undo Changes**

```
Transaction
      │
      ▼
Mistake Found
      │
      ▼
 ROLLBACK
      │
      ▼
Previous State Restored
```

---

# SAVEPOINT Statement

## What is SAVEPOINT?

A **SAVEPOINT** creates a checkpoint within a transaction.

Instead of rolling back the entire transaction, you can roll back only to a specific savepoint.

---

## Why do we need SAVEPOINT?

Suppose a transaction contains multiple operations.

```
Operation 1
↓

Operation 2
↓

Operation 3
↓

Operation 4
```

If an error occurs during **Operation 4**, it may not be necessary to undo the first three operations.

A SAVEPOINT allows us to return to a specific point instead of cancelling the entire transaction.

---

## Characteristics

- Creates a checkpoint inside a transaction.
- Allows partial rollback.
- Multiple savepoints can exist within the same transaction.
- Used only inside transactions.

---

## Syntax

### Create a Savepoint

```sql
SAVEPOINT savepoint_name;
```

---

### Roll Back to a Savepoint

```sql
ROLLBACK TO savepoint_name;
```

---

## Example

```sql
START TRANSACTION;

INSERT INTO employees
VALUES
(112,
'Arjun Mehta',
'Finance',
'Accountant',
58000,
'2024-02-15',
'Mumbai');

SAVEPOINT employee_added;

UPDATE employees
SET salary = 65000
WHERE employee_id = 112;

ROLLBACK TO employee_added;

COMMIT;
```

### Explanation

- The employee record is inserted.
- A savepoint is created.
- The salary update is performed.
- The update is rolled back.
- The inserted employee record remains because the rollback was only to the savepoint.

---

## Transaction Workflow

```
START TRANSACTION
        │
        ▼
Operation 1
        │
        ▼
SAVEPOINT A
        │
        ▼
Operation 2
        │
        ▼
Operation 3
        │
        ▼
ROLLBACK TO A
        │
        ▼
Operation 2 & 3 Undone
        │
        ▼
COMMIT
```

---

## Memory Tip

> 🧠 **SAVEPOINT = Bookmark Inside a Transaction**

```
START TRANSACTION
        │
        ▼
SAVEPOINT
        │
        ▼
More Changes
        │
        ▼
ROLLBACK TO SAVEPOINT
        │
        ▼
Continue Working
```

---

# DML vs DDL

Although both **DDL** and **DML** are categories of SQL commands, they serve different purposes.

- **DDL** is used to create and manage database objects such as databases and tables.
- **DML** is used to insert, update, and delete the data stored inside those objects.

Understanding the difference between them is one of the most frequently asked SQL interview topics.

| Feature | DDL | DML |
|---------|-----|-----|
| Full Form | Data Definition Language | Data Manipulation Language |
| Purpose | Defines or modifies database structure | Manipulates data inside tables |
| Works On | Database objects | Table records |
| Affects | Structure | Data |
| Common Commands | CREATE, ALTER, DROP, TRUNCATE, RENAME | INSERT, UPDATE, DELETE |
| Uses WHERE Clause | No | Yes (UPDATE, DELETE) |
| Transaction Support | Most DDL commands perform an implicit commit | Supports transactions using COMMIT and ROLLBACK |

---

## Example

### DDL Example

```sql
CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100)
);
```

### Explanation

A new table named **employees** is created.

The structure of the database changes.

---

### DML Example

```sql
INSERT INTO employees
VALUES
(101, 'Amit Sharma');
```

### Explanation

The table structure remains the same.

Only a new record is added.

---

# Summary

In this chapter, you learned:

- What DML is.
- Why DML is important.
- INSERT statement.
- UPDATE statement.
- DELETE statement.
- COMMIT statement.
- ROLLBACK statement.
- SAVEPOINT statement.
- Difference between DDL and DML.
- How transactions help maintain data consistency.

DML is one of the most frequently used SQL categories because almost every application constantly inserts, updates, and deletes data.

---

# Best Practices

- Always specify column names while using `INSERT`.
- Always use the `WHERE` clause with `UPDATE` unless you intentionally want to update every record.
- Always use the `WHERE` clause with `DELETE` unless you intentionally want to remove every record.
- Verify records using a `SELECT` statement before running `UPDATE` or `DELETE`.
- Use transactions when performing multiple related operations.
- Execute `COMMIT` only after verifying the changes.
- Use `ROLLBACK` whenever incorrect changes are detected before committing.
- Use meaningful savepoint names.
- Test DML queries on a development database before executing them in production.

---

# Common Mistakes

- Forgetting the `WHERE` clause in an `UPDATE` statement.
- Forgetting the `WHERE` clause in a `DELETE` statement.
- Inserting values in the wrong column order.
- Providing fewer or more values than required.
- Forgetting to commit a transaction.
- Trying to roll back after executing `COMMIT`.
- Assuming `DELETE`, `TRUNCATE`, and `DROP` perform the same operation.
- Not checking existing data before updating records.

---

# Interview Questions

### Basic

1. What is DML?
2. Name the DML commands.
3. What is the purpose of the `INSERT` statement?
4. What is the purpose of the `UPDATE` statement?
5. What is the purpose of the `DELETE` statement?
6. What is a transaction?
7. What is `COMMIT`?
8. What is `ROLLBACK`?
9. What is a `SAVEPOINT`?
10. What is the difference between DDL and DML?

### Intermediate

11. What happens if the `WHERE` clause is omitted in an `UPDATE` statement?
12. What happens if the `WHERE` clause is omitted in a `DELETE` statement?
13. Can multiple rows be inserted using a single `INSERT` statement?
14. Why is specifying column names recommended while inserting data?
15. What is the difference between `DELETE` and `TRUNCATE`?
16. What is the difference between `DELETE` and `DROP`?
17. Can a `ROLLBACK` undo changes after `COMMIT`?
18. Why are transactions important?
19. What is the purpose of a `SAVEPOINT`?
20. When should `ROLLBACK TO SAVEPOINT` be used?

### Advanced

21. What are ACID properties?
22. What is Auto Commit?
23. Can DML statements be rolled back?
24. What is an implicit commit?
25. Why are transactions important in banking applications?
26. How can accidental updates be prevented?
27. What precautions should be taken before executing a `DELETE` statement?
28. How do transactions improve data consistency?
29. Can multiple savepoints exist in one transaction?
30. Explain a real-world scenario where `ROLLBACK` is useful.

---

# Key Takeaways

- DML manipulates data stored in tables.
- `INSERT` adds new records.
- `UPDATE` modifies existing records.
- `DELETE` removes records.
- `COMMIT` permanently saves a transaction.
- `ROLLBACK` undoes uncommitted changes.
- `SAVEPOINT` creates checkpoints within a transaction.
- The `WHERE` clause is essential for safe `UPDATE` and `DELETE` operations.
- Transactions help maintain data integrity and consistency.

---

# What's Next?

In **Day 04**, you will learn about **MySQL Data Types**, including:

- Numeric Data Types
- String Data Types
- Date and Time Data Types
- Boolean Data Type
- Choosing the Right Data Type
- Best Practices for Data Types

