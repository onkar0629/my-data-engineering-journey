# Day 05 - DQL (Data Query Language) - SELECT Statement

## Introduction

After creating tables using **DDL** and inserting, updating, and deleting records using **DML**, the next step is to retrieve data from the database.

Imagine a company has thousands of employee records stored in a database. Simply storing the data is not enough—we also need to view, search, filter, and analyze it.

This is where **DQL (Data Query Language)** comes into play.

The primary command in DQL is the **SELECT** statement, which allows us to retrieve data from one or more tables.

The `SELECT` statement is one of the most frequently used SQL commands because almost every application needs to display data to users.

Examples include:

- Display all employees.
- Show employee names only.
- Find employees from the IT department.
- Display unique cities.
- Calculate employee bonuses.
- Generate reports.

In this chapter, you will learn how to retrieve data using the `SELECT` statement and understand the foundation of SQL querying.

---

## Learning Objectives

After completing this chapter, you will be able to:

- Understand what DQL is.
- Explain the purpose of the `SELECT` statement.
- Retrieve all records from a table.
- Retrieve specific columns.
- Use the `DISTINCT` keyword.
- Rename columns using aliases.
- Perform arithmetic calculations in queries.
- Write SQL comments.
- Understand how a SQL query is executed.

---

## Table of Contents

1. What is DQL?
2. SELECT Statement
3. SELECT *
4. Selecting Specific Columns
5. DISTINCT
6. Column Aliases (AS)
7. Arithmetic Expressions in SELECT
8. SQL Comments
9. Query Execution Basics
10. Summary
11. Best Practices
12. Common Mistakes
13. Interview Questions
14. Key Takeaways
15. What's Next?

---

# What is DQL?

## What is it?

**DQL** stands for **Data Query Language**.

It is a category of SQL commands used to **retrieve data from a database**.

Unlike DDL, which manages database structure, or DML, which modifies data, DQL focuses on **reading and displaying data**.

In MySQL, the primary DQL command is:

```sql
SELECT
```

Using the `SELECT` statement, you can retrieve:

- Entire tables
- Specific columns
- Specific records
- Calculated values
- Unique values

---

## Why do we need it?

Databases are created to store information, but users generally need to **view** that information.

For example:

An HR department may want to:

- View all employees.
- Display only employee names.
- Find employees from Pune.
- Check employee salaries.
- Generate monthly reports.

Without DQL, retrieving this information would not be possible.

---

## Characteristics

- Retrieves data from one or more tables.
- Does not modify existing data.
- Uses the `SELECT` statement.
- Can return all rows or selected rows.
- Can return all columns or selected columns.
- Supports filtering, sorting, grouping, and aggregation (covered in later chapters).

---

## Syntax

Basic syntax:

```sql
SELECT column_name
FROM table_name;
```

Retrieve all columns:

```sql
SELECT *
FROM table_name;
```

---

## Examples

### Example 1

Retrieve all employee records.

```sql
SELECT *
FROM employees;
```

### Explanation

The query displays every column and every row from the `employees` table.

---

### Example 2

Retrieve employee names.

```sql
SELECT employee_name
FROM employees;
```

### Explanation

Only the `employee_name` column is displayed.

All other columns are ignored.

---

### Example 3

Retrieve employee names and salaries.

```sql
SELECT employee_name,
       salary
FROM employees;
```

### Explanation

Only the `employee_name` and `salary` columns are returned.

This reduces unnecessary data retrieval.

---

## Memory Tip

> 🧠 **DQL = Display Data**

```
Database
     │
     ▼
SELECT
     │
     ▼
Retrieve Data
```

Think:

- **DQL** → Read Data
- **SELECT** → Display Data

---

# SELECT Statement

## What is it?

The **SELECT** statement is the most commonly used SQL command.

It is used to **retrieve data from one or more tables** in a database.

Whenever you want to view information stored in a database, you use the `SELECT` statement.

For example, you can use `SELECT` to:

- View all employees.
- Display employee names.
- Check salaries.
- View departments.
- Generate reports.
- Analyze business data.

In simple words:

> **SELECT tells MySQL what data you want to retrieve.**

---

## Why do we need it?

Suppose an organization has thousands of employee records.

You may want to answer questions like:

- Who are all the employees?
- What are their salaries?
- Which departments exist?
- Which employees joined recently?

Instead of manually searching through thousands of records, the `SELECT` statement retrieves the required information in seconds.

Almost every application uses `SELECT` to display information.

Examples:

- Banking applications display account details.
- E-commerce websites display products.
- College management systems display student records.
- Hospital systems display patient information.
- Social media applications display user profiles.

---

## Characteristics

- Retrieves data from one or more tables.
- Does not modify data.
- Returns results in the form of a table.
- Can retrieve all columns or selected columns.
- Can be combined with many SQL clauses such as `WHERE`, `ORDER BY`, `GROUP BY`, and `HAVING`.
- Forms the foundation for almost every SQL query.

---

## Syntax

### Retrieve Specific Columns

```sql
SELECT column1, column2
FROM table_name;
```

---

### Retrieve All Columns

```sql
SELECT *
FROM table_name;
```

---

## Examples

### Example 1

Display all employee records.

```sql
SELECT *
FROM employees;
```

### Explanation

The `*` (asterisk) means **all columns**.

Every column and every row from the `employees` table is displayed.

---

### Example 2

Display employee names.

```sql
SELECT employee_name
FROM employees;
```

### Explanation

Only the `employee_name` column is displayed.

Other columns such as salary, city, and department are not included in the result.

---

### Example 3

Display employee name, department, and salary.

```sql
SELECT employee_name,
       department,
       salary
FROM employees;
```

### Explanation

Only the specified columns are displayed.

Selecting only the required columns improves readability and can reduce unnecessary data retrieval.

---

## Memory Tip

> 🧠 **SELECT = Show Me the Data**

```
Database Table
       │
       ▼
SELECT
       │
       ▼
Requested Data
```

Remember:

```
SELECT

means

"Retrieve Information"
```

---

# SELECT *

## What is it?

The `*` (asterisk) is a wildcard character in SQL.

When used with the `SELECT` statement, it tells MySQL to retrieve **every column** from the specified table.

Instead of writing every column name individually, `*` selects all columns automatically.

---

## Why do we need it?

Imagine the `employees` table has many columns.

```text
employee_id
employee_name
department
designation
salary
joining_date
city
```

Writing each column name every time can be time-consuming.

Using `SELECT *` retrieves all columns with a shorter query.

---

## Characteristics

- Retrieves every column.
- Returns all rows by default.
- Easy to write.
- Useful for learning and testing.
- Not always recommended in production environments because it may retrieve unnecessary data.

---

## Syntax

```sql
SELECT *
FROM table_name;
```

---

## Examples

### Example 1

Display all employee information.

```sql
SELECT *
FROM employees;
```

### Explanation

Every column and every row from the `employees` table is displayed.

---

### Example 2

Display all customer information.

```sql
SELECT *
FROM customers;
```

### Explanation

All columns from the `customers` table are returned.

---

### Example 3

Display all product information.

```sql
SELECT *
FROM products;
```

### Explanation

Every column stored in the `products` table is displayed.

---

## Memory Tip

> 🧠 **`*` Means Everything**

```
SELECT *

↓

All Columns

↓

Complete Table
```

Whenever you see:

```sql
SELECT *
```

Think:

> **"Display every column from the table."**

---

# Selecting Specific Columns

## What is it?

Selecting specific columns means retrieving **only the columns that you need** instead of displaying every column in the table.

Rather than using:

```sql
SELECT *
```

you specify the required column names in the `SELECT` statement.

This makes your query more efficient and easier to understand.

---

## Why do we need it?

Suppose the `employees` table contains the following columns:

```text
employee_id
employee_name
department
designation
salary
joining_date
city
```

If you only need employee names and salaries, there is no need to retrieve all the remaining columns.

Instead of retrieving unnecessary information, you can retrieve only the required columns.

Benefits include:

- Faster query execution.
- Less data transferred.
- Better readability.
- Improved application performance.

---

## Characteristics

- Retrieves only the specified columns.
- Reduces unnecessary data retrieval.
- Improves query readability.
- Can retrieve one or multiple columns.
- Columns are displayed in the same order as written in the query.

---

## Syntax

### Retrieve One Column

```sql
SELECT column_name
FROM table_name;
```

---

### Retrieve Multiple Columns

```sql
SELECT column1,
       column2,
       column3
FROM table_name;
```

---

## Examples

### Example 1

Display only employee names.

```sql
SELECT employee_name
FROM employees;
```

### Explanation

Only the `employee_name` column is displayed.

All other columns are ignored.

---

### Example 2

Display employee names and departments.

```sql
SELECT employee_name,
       department
FROM employees;
```

### Explanation

Only the `employee_name` and `department` columns are returned.

The remaining columns are not included in the result.

---

### Example 3

Display employee name, designation, salary, and city.

```sql
SELECT employee_name,
       designation,
       salary,
       city
FROM employees;
```

### Explanation

The query returns only the selected columns.

This is useful when preparing reports or displaying limited information to users.

---

### Example 4

Display employee ID, employee name, and joining date.

```sql
SELECT employee_id,
       employee_name,
       joining_date
FROM employees;
```

### Explanation

Only these three columns are displayed.

The database does not retrieve unnecessary columns.

---

## Memory Tip

> 🧠 **Only Ask for What You Need**

```
Employees Table

employee_id
employee_name
department
designation
salary
joining_date
city

        │

        ▼

SELECT employee_name,
       salary

        │

        ▼

employee_name
salary
```

Think of it like ordering food in a restaurant.

You order only the dishes you want—not the entire menu.

Similarly,

- `SELECT *` → Everything
- `SELECT column1, column2` → Only what you need

---

# DISTINCT

## What is it?

The `DISTINCT` keyword is used to **remove duplicate values** from the result set.

If multiple rows contain the same value in a selected column, `DISTINCT` returns that value only once.

This helps retrieve **unique values** from a table.

---

## Why do we need it?

Consider the following employee data:

| Employee | Department |
|-----------|------------|
| Amit | HR |
| Priya | IT |
| Rahul | Finance |
| Sneha | IT |
| Rohit | IT |
| Pooja | Sales |

If you execute:

```sql
SELECT department
FROM employees;
```

The result will contain repeated department names.

If you only want to know **which departments exist**, use `DISTINCT`.

The result becomes:

```text
HR
IT
Finance
Sales
Marketing
```

Each department appears only once.

---

## Characteristics

- Removes duplicate values.
- Returns unique records.
- Works with one or more columns.
- Does not modify the original table.
- Frequently used in reporting and data analysis.

---

## Syntax

### DISTINCT on One Column

```sql
SELECT DISTINCT column_name
FROM table_name;
```

---

### DISTINCT on Multiple Columns

```sql
SELECT DISTINCT column1,
                column2
FROM table_name;
```

---

## Examples

### Example 1

Display all unique departments.

```sql
SELECT DISTINCT department
FROM employees;
```

### Explanation

Even if multiple employees belong to the same department, each department is displayed only once.

---

### Example 2

Display all unique cities.

```sql
SELECT DISTINCT city
FROM employees;
```

### Explanation

Each city appears only once in the result, regardless of how many employees live there.

---

### Example 3

Display unique combinations of department and city.

```sql
SELECT DISTINCT department,
                city
FROM employees;
```

### Explanation

The combination of both columns must be unique.

If two rows have the same department but different cities, both rows are displayed.

---

## Memory Tip

> 🧠 **DISTINCT = Remove Duplicates**

```
HR
IT
IT
IT
Finance
Sales
HR

      │

DISTINCT

      ▼

HR
IT
Finance
Sales
```

Whenever you see:

```sql
SELECT DISTINCT
```

Think:

> **"Show each value only once."**

---

# Column Aliases (AS)

## What is it?

A **Column Alias** is a temporary name given to a column in the query result.

Instead of displaying the original column name, MySQL displays the alias.

Aliases make query results:

- Easier to read
- More meaningful
- More professional
- Better suited for reports

The original column name in the table **does not change**.

---

## Why do we need it?

Suppose a table contains a column named:

```text
employee_name
```

While creating a report, you may want the heading to appear as:

```text
Employee Name
```

Instead of:

```text
employee_name
```

Similarly,

```text
joining_date
```

can be displayed as

```text
Joining Date
```

Aliases improve the presentation of query results without modifying the database.

---

## Characteristics

- Creates a temporary column name.
- Does not change the table structure.
- Exists only during query execution.
- Improves readability.
- Commonly used in reports and dashboards.
- Can be used with calculated columns.

---

## Syntax

### Using AS

```sql
SELECT column_name AS alias_name
FROM table_name;
```

---

### Without AS

```sql
SELECT column_name alias_name
FROM table_name;
```

Both queries produce the same result.

Using `AS` is recommended because it makes the query easier to understand.

---

## Examples

### Example 1

Display employee names with a better heading.

```sql
SELECT employee_name AS "Employee Name"
FROM employees;
```

### Explanation

Instead of displaying:

```text
employee_name
```

the result displays:

```text
Employee Name
```

---

### Example 2

Display salary with a custom heading.

```sql
SELECT salary AS "Monthly Salary"
FROM employees;
```

### Explanation

The column heading becomes:

```text
Monthly Salary
```

The data remains unchanged.

---

### Example 3

Display multiple aliases.

```sql
SELECT employee_name AS "Employee",
       department AS "Department",
       salary AS "Salary"
FROM employees;
```

### Explanation

All selected columns are displayed with meaningful headings.

---

### Example 4

Alias without using `AS`.

```sql
SELECT employee_name Employee
FROM employees;
```

### Explanation

MySQL automatically treats `Employee` as the alias.

However, using `AS` makes the query more readable and is considered a good practice.

---

## Memory Tip

> 🧠 **Alias = Nickname**

```
employee_name

      │

      ▼

Employee Name
```

Think of an alias as giving a person a nickname.

Similarly,

```
Original Column

↓

Temporary Name

↓

Alias
```

Remember:

- Alias changes the **display name**
- Alias does **not** change the actual column name

---

# Arithmetic Expressions in SELECT

## What is it?

Arithmetic expressions allow you to perform mathematical calculations directly within a `SELECT` statement.

MySQL evaluates the expression for every row and returns the calculated result.

This is useful when generating reports, calculating bonuses, taxes, discounts, or totals.

---

## Why do we need it?

Suppose an employee earns:

```text
₹50,000
```

If the company wants to calculate a **10% bonus**, there is no need to update the table.

Instead, you can calculate the bonus while retrieving the data.

Similarly, you can calculate:

- Annual salary
- Incentives
- Discounts
- Total price
- Profit
- Tax

without modifying the original data.

---

## Characteristics

- Performs calculations during query execution.
- Does not modify stored data.
- Returns calculated values.
- Supports multiple arithmetic operators.
- Can be combined with aliases.

---

## Arithmetic Operators

| Operator | Purpose | Example |
|----------|---------|----------|
| `+` | Addition | `salary + 5000` |
| `-` | Subtraction | `salary - 2000` |
| `*` | Multiplication | `salary * 12` |
| `/` | Division | `salary / 2` |
| `%` | Modulus (Remainder) | `salary % 1000` |

---

## Syntax

```sql
SELECT column_name,
       arithmetic_expression
FROM table_name;
```

---

## Examples

### Example 1

Calculate annual salary.

```sql
SELECT employee_name,
       salary,
       salary * 12 AS annual_salary
FROM employees;
```

### Explanation

The query multiplies each employee's monthly salary by `12` to calculate the annual salary.

The original `salary` column remains unchanged.

---

### Example 2

Calculate salary after adding a fixed bonus.

```sql
SELECT employee_name,
       salary,
       salary + 5000 AS revised_salary
FROM employees;
```

### Explanation

Every employee receives an additional ₹5,000 in the calculated result.

The stored salary in the table is not updated.

---

### Example 3

Calculate salary after deduction.

```sql
SELECT employee_name,
       salary,
       salary - 2000 AS salary_after_deduction
FROM employees;
```

### Explanation

The query subtracts ₹2,000 from each employee's salary and displays the calculated value.

---

### Example 4

Calculate half of each employee's salary.

```sql
SELECT employee_name,
       salary,
       salary / 2 AS half_salary
FROM employees;
```

### Explanation

The query divides the salary by `2` and returns the result for each employee.

---

### Example 5

Calculate the remainder when salary is divided by 1000.

```sql
SELECT employee_name,
       salary,
       salary % 1000 AS remainder
FROM employees;
```

### Explanation

The modulus operator returns the remainder after division.

This is mainly useful in mathematical and logical calculations.

---

## Memory Tip

> 🧠 **Arithmetic Expressions = Calculate While Retrieving**

```
Stored Salary

₹75,000

        │

        ▼

salary * 12

        │

        ▼

₹9,00,000
```

Think:

```
SELECT

+

Mathematics

=

Calculated Result
```

The database calculates the value **only for the query result**.

The original data stored in the table remains unchanged.

---

# SQL Comments

## What is it?

**SQL Comments** are lines of text written inside SQL queries that are **ignored by the MySQL server**.

Comments are used to explain:

- What a query does.
- Why a query is written.
- Important notes.
- Temporary reminders.
- Sections of a SQL script.

Comments improve the readability and maintainability of SQL code.

They are especially useful when working on large projects or when multiple developers collaborate on the same database.

---

## Why do we need it?

Imagine you have written hundreds of SQL queries.

After a few months, it may be difficult to remember the purpose of each query.

Comments help you:

- Explain complex queries.
- Organize SQL scripts.
- Make code easier to understand.
- Help teammates understand your work.
- Temporarily disable queries while testing.

Good comments make SQL scripts more professional and easier to maintain.

---

## Characteristics

- Ignored during query execution.
- Used only for documentation.
- Do not affect database performance.
- Improve code readability.
- Can be written as single-line or multi-line comments.

---

## Types of SQL Comments

MySQL supports three types of comments:

1. Single-line comment using `--`
2. Single-line comment using `#`
3. Multi-line comment using `/* ... */`

---

# Single-Line Comment (`--`)

## What is it?

A single-line comment using `--` is used to write a comment on a single line.

Everything after `--` on that line is ignored by MySQL.

> **Note:** In MySQL, there should be a space after `--`.

---

## Syntax

```sql
-- This is a comment
```

---

## Examples

### Example 1

```sql
-- Display all employees

SELECT *
FROM employees;
```

### Explanation

The comment explains the purpose of the query.

It is ignored during execution.

---

### Example 2

```sql
SELECT employee_name
FROM employees;

-- Display only employee names
```

### Explanation

Comments can also be placed after a query to provide additional information.

---

## Memory Tip

> 🧠 **`--` = One Line**

```
--

↓

Single-Line Comment
```

---

# Single-Line Comment (`#`)

## What is it?

MySQL also supports the `#` symbol for writing single-line comments.

Everything after `#` on the same line is ignored.

Although valid in MySQL, it is less commonly used than `--`.

---

## Syntax

```sql
# This is a comment
```

---

## Examples

### Example 1

```sql
# Display employee salaries

SELECT salary
FROM employees;
```

### Explanation

The comment describes the purpose of the query.

---

### Example 2

```sql
SELECT department
FROM employees;

# Display department names
```

### Explanation

The `#` comment is ignored during execution.

---

## Memory Tip

> 🧠 **`#` = Another Single-Line Comment**

```
#

↓

Single-Line Comment
```

Remember that `--` is generally preferred because it is more widely used across SQL databases.

---

# Multi-Line Comment (`/* ... */`)

## What is it?

A multi-line comment is used when the explanation spans multiple lines.

Everything written between:

```sql
/*
```

and

```sql
*/
```

is ignored by MySQL.

---

## Why do we need it?

Sometimes a query requires a detailed explanation.

Instead of writing many single-line comments, a multi-line comment keeps related information together.

---

## Syntax

```sql
/*
This is
a multi-line
comment
*/
```

---

## Examples

### Example 1

```sql
/*
Display all employee details
for the HR department
*/

SELECT *
FROM employees;
```

### Explanation

The entire block is treated as a comment.

Only the `SELECT` query is executed.

---

### Example 2

```sql
SELECT employee_name,
       salary
FROM employees;

/*
This query retrieves
employee names
and their salaries.
*/
```

### Explanation

The comment documents what the query does.

---

## Memory Tip

> 🧠 **`/* ... */` = Paragraph Comment**

```
/*

Many
Lines

*/

↓

Multi-Line Comment
```

---

# When Should You Use Comments?

Use comments when:

- Explaining complex queries.
- Dividing large SQL scripts into sections.
- Adding reminders.
- Documenting business logic.
- Collaborating with other developers.
- Temporarily disabling code during testing.

Example:

```sql
-- Employee Report

SELECT employee_name,
       department,
       salary
FROM employees;
```

---

# Best Practices for Comments

- Write clear and meaningful comments.
- Keep comments short and relevant.
- Update comments when the SQL code changes.
- Avoid writing comments that simply repeat the query.
- Use comments to explain **why**, not just **what**.

Good Example:

```sql
-- Retrieve employees who joined during the current financial year
```

Less Helpful Example:

```sql
-- Select employee_name
```

The second comment adds little value because the query already makes that clear.

---

## Memory Tip

> 🧠 **Comments Explain the Code**

```
SQL Query

      │

      ▼

Comments

      │

      ▼

Easy to Understand
```

Think:

- Comments are for **humans**.
- SQL commands are for **MySQL**.

---

# Query Execution Basics

## What is it?

When you execute a SQL query, MySQL follows a sequence of steps to process the request and return the result.

Understanding this execution flow helps you write better queries and makes it easier to understand advanced SQL topics later.

Although a query is written from top to bottom, MySQL logically processes different parts of the query in a specific order.

---

## Why do we need it?

Suppose you write:

```sql
SELECT employee_name,
       salary
FROM employees;
```

MySQL does not immediately display the result.

Instead, it performs several internal steps, such as:

- Finding the table.
- Reading the required rows.
- Selecting the requested columns.
- Returning the final result.

Knowing this process helps you understand how SQL works behind the scenes.

---

## Characteristics

- Queries follow a logical execution order.
- Data is read before being displayed.
- Only the requested columns are returned.
- The original data is not modified by a `SELECT` query.
- Forms the basis for understanding filtering, sorting, grouping, and joins.

---

## Basic Execution Order

For a simple query:

```sql
SELECT employee_name,
       salary
FROM employees;
```

MySQL processes it logically as:

```
Step 1

FROM

↓

Locate the table

↓

Step 2

SELECT

↓

Retrieve the requested columns

↓

Step 3

Display the result
```

---

## Example 1

```sql
SELECT *
FROM employees;
```

### Explanation

MySQL:

1. Finds the `employees` table.
2. Reads all rows.
3. Retrieves every column.
4. Displays the complete result.

---

## Example 2

```sql
SELECT employee_name,
       department
FROM employees;
```

### Explanation

MySQL:

1. Opens the `employees` table.
2. Reads the data.
3. Retrieves only the `employee_name` and `department` columns.
4. Displays the result.

---

## Example 3

```sql
SELECT employee_name,
       salary * 12 AS annual_salary
FROM employees;
```

### Explanation

MySQL:

1. Reads the employee data.
2. Retrieves the `employee_name` column.
3. Calculates the annual salary for each row.
4. Displays the calculated result with the alias `annual_salary`.

---

## Memory Tip

> 🧠 **Simple Query Flow**

```
FROM
   │
   ▼
Read Table
   │
   ▼
SELECT
   │
   ▼
Choose Columns
   │
   ▼
Display Result
```

Remember:

> **MySQL first finds the data, then returns the requested columns.**

---

---

# Summary

In this chapter, you learned the fundamentals of retrieving data from a MySQL database using **DQL (Data Query Language)**.

You learned:

- What DQL is.
- The purpose of the `SELECT` statement.
- How to retrieve all columns using `SELECT *`.
- How to retrieve specific columns.
- How to remove duplicate values using `DISTINCT`.
- How to rename columns using aliases (`AS`).
- How to perform arithmetic calculations in the `SELECT` statement.
- Different types of SQL comments.
- The basic execution flow of a `SELECT` query.

The `SELECT` statement is the foundation of SQL. Almost every SQL query, from simple reports to advanced analytics, begins with `SELECT`.

Understanding these concepts will make it much easier to learn filtering, sorting, grouping, joins, subqueries, and window functions in the upcoming chapters.

---

# Best Practices

- Retrieve only the columns you need instead of using `SELECT *`.
- Use meaningful aliases to improve readability.
- Use `DISTINCT` only when duplicate values need to be removed.
- Write clear and relevant SQL comments.
- Format SQL keywords in uppercase for better readability.
- Write one column per line when selecting multiple columns.
- Use arithmetic expressions for calculations instead of modifying stored data.
- Keep SQL queries simple and easy to understand.
- Follow consistent indentation and formatting.
- Test queries on small datasets before running them on large tables.

---

# Common Mistakes

- Using `SELECT *` in production when only a few columns are required.
- Forgetting commas between selected columns.
- Misspelling column or table names.
- Assuming `DISTINCT` removes duplicate rows from the table instead of only the query result.
- Believing aliases permanently rename columns.
- Modifying stored values instead of using arithmetic expressions in the query.
- Writing unnecessary or outdated comments.
- Forgetting that SQL comments are ignored during execution.
- Confusing retrieving data (`SELECT`) with modifying data (`INSERT`, `UPDATE`, `DELETE`).

---

# Interview Questions

## Basic

1. What is DQL?
2. What is the purpose of the `SELECT` statement?
3. What does `SELECT *` do?
4. How do you retrieve only specific columns?
5. What is the purpose of the `DISTINCT` keyword?
6. What is a column alias?
7. Is the `AS` keyword mandatory when creating an alias?
8. What is the difference between `SELECT *` and selecting specific columns?
9. What are SQL comments?
10. Name the types of comments supported by MySQL.

---

## Intermediate

11. Why should `SELECT *` be avoided in large production databases?
12. How does `DISTINCT` work with multiple columns?
13. Can arithmetic expressions be used in the `SELECT` statement?
14. Does using an alias change the actual column name?
15. What happens if duplicate values exist without using `DISTINCT`?
16. Why are SQL comments important in collaborative projects?
17. What arithmetic operators are supported in a `SELECT` statement?
18. Can aliases be applied to calculated columns?
19. What is the logical execution order of a simple `SELECT` query?
20. Why is retrieving only required columns considered a best practice?

---

## Advanced

21. Explain the logical execution order of a SQL query.
22. How can selecting fewer columns improve query performance?
23. What is the difference between displaying calculated values and updating stored values?
24. When should you use `DISTINCT` instead of `GROUP BY`?
25. Why are aliases commonly used in reporting tools?
26. What are the advantages of well-documented SQL scripts?
27. How do arithmetic expressions affect the original data?
28. Can multiple aliases be used in the same query?
29. How does MySQL process a simple `SELECT` query internally?
30. Explain a real-world example where `SELECT`, `DISTINCT`, aliases, and arithmetic expressions are used together.

---

# Key Takeaways

- **DQL** is used to retrieve data from a database.
- The **`SELECT`** statement is the primary command in DQL.
- **`SELECT *`** retrieves every column from a table.
- Selecting specific columns improves readability and efficiency.
- **`DISTINCT`** returns only unique values.
- **Aliases (`AS`)** provide temporary, meaningful column names.
- Arithmetic expressions allow calculations without changing stored data.
- SQL comments improve code readability and maintainability.
- MySQL follows a logical execution process when executing a query.
- Mastering the `SELECT` statement is essential before learning filtering, sorting, grouping, joins, and advanced SQL concepts.

---

# What's Next?

In **Day 06**, you will learn about the **WHERE Clause**, including:

- What is the `WHERE` clause?
- Why do we use the `WHERE` clause?
- Comparison Operators (`=`, `!=`, `<>`, `>`, `<`, `>=`, `<=`)
- Logical Operators (`AND`, `OR`, `NOT`)
- `BETWEEN`
- `IN`
- `LIKE`
- `IS NULL`
- `IS NOT NULL`
- Operator Precedence
- Writing efficient filtering conditions

The `WHERE` clause is one of the most important SQL concepts because it allows you to retrieve only the records that match specific conditions. It is widely used with almost every SQL query in real-world applications.
