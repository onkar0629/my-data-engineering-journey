# Day 13 - Operators and Expressions

# Introduction

Operators and Expressions are fundamental building blocks of SQL queries.

An **operator** is a symbol or keyword that performs an operation on one or more values.

An **expression** is a combination of values, column names, functions, and operators that produces a single result.

Almost every SQL query uses operators and expressions. They are used to:

- Compare values
- Perform mathematical calculations
- Combine multiple conditions
- Search for data
- Handle `NULL` values
- Create calculated columns
- Filter records
- Build complex business logic

For example:

```sql
salary + 5000
```

This is an expression.

```sql
salary > 60000
```

This is also an expression.

```sql
department = 'IT'
AND salary > 70000
```

This is a logical expression.

Understanding operators and expressions is essential because they are used extensively with:

- `SELECT`
- `WHERE`
- `HAVING`
- `ORDER BY`
- `CASE`
- `JOIN`
- Aggregate Functions
- Window Functions
- Stored Procedures

Without operators, SQL cannot perform calculations or make decisions.

---

# Learning Objectives

By the end of this chapter, you will be able to:

- Understand what Operators are.
- Understand what Expressions are.
- Learn different types of Operators.
- Use Arithmetic Operators.
- Use Comparison Operators.
- Use Logical Operators.
- Use Special Operators.
- Learn Operator Precedence.
- Create Calculated Columns.
- Write complex expressions.
- Understand real-world use cases.

---

# Table of Contents

1. What are Operators?
2. What are Expressions?
3. Why do we need Operators?
4. Types of Operators
5. Arithmetic Operators
6. Comparison Operators
7. Logical Operators
8. Special Operators
9. Operator Precedence
10. Expressions in SQL
11. Calculated Columns
12. Real-World Examples
13. Summary
14. Best Practices
15. Common Mistakes
16. Interview Questions
17. Key Takeaways
18. What's Next?

--------------------------------------------------

# What are Operators?

## What are they?

An **Operator** is a symbol or keyword that tells MySQL to perform a specific operation on one or more values.

Operators are used to:

- Perform calculations
- Compare values
- Combine conditions
- Check ranges
- Search for patterns
- Test for `NULL`
- Make logical decisions

For example,

```sql
salary + 5000
```

Here,

`+` is an Arithmetic Operator.

---

```sql
salary > 60000
```

Here,

`>` is a Comparison Operator.

---

```sql
department = 'IT'
AND salary > 60000
```

Here,

`AND` is a Logical Operator.

---

## Why do we need Operators?

Without operators, SQL could only display data.

Operators allow SQL to:

- Calculate bonuses.
- Compare salaries.
- Filter employees.
- Sort records.
- Build reports.
- Write business rules.
- Analyze data.

Almost every SQL query contains one or more operators.

---

## Characteristics

- Perform operations on one or more values.
- Return a calculated result.
- Can be used in every major SQL clause.
- Work with numbers, text, dates, and Boolean conditions.
- Can be combined to create complex expressions.

---

## Syntax

General syntax:

```sql
value operator value
```

Examples:

```sql
salary + 5000
```

```sql
salary > 60000
```

```sql
salary >= 70000
```

```sql
department = 'IT'
```

---

## Examples

### Example 1

Increase every employee's salary by ₹5,000.

```sql
SELECT employee_name,
       salary,
       salary + 5000 AS new_salary
FROM employees;
```

### Explanation

The `+` operator adds ₹5,000 to every employee's salary.

---

### Example 2

Display employees earning more than ₹60,000.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary > 60000;
```

### Explanation

The `>` operator compares each employee's salary with ₹60,000.

Only matching employees are displayed.

---

### Example 3

Display employees from the IT department.

```sql
SELECT *
FROM employees
WHERE department = 'IT';
```

### Explanation

The `=` operator checks whether the department is `IT`.

Only matching rows are returned.

---

## Memory Tip

> 🧠 **Operators perform an action on data.**

```
Value

↓

Operator

↓

Result
```

Think:

```
Number

+

Number

↓

Calculation

----------------

Column

>

Value

↓

Comparison

----------------

Condition

AND

Condition

↓

Decision
```

--------------------------------------------------

# What are Expressions?

## What are they?

An **Expression** is a combination of one or more of the following:

- Values (Constants)
- Column names
- Operators
- Functions

that produces **a single result**.

In simple words,

> **An Expression is something that MySQL evaluates and returns a value.**

For example,

```sql
salary + 5000
```

This expression returns a new salary.

---

```sql
salary * 12
```

This expression returns the annual salary.

---

```sql
salary > 60000
```

This expression returns either:

- TRUE
- FALSE

---

```sql
CONCAT(employee_name, ' - ', department)
```

This expression returns a single text value.

---

## Why do we need Expressions?

Expressions allow MySQL to:

- Perform calculations.
- Compare values.
- Create new columns.
- Filter records.
- Build reports.
- Format output.
- Apply business rules.
- Generate meaningful insights from data.

Without expressions, SQL would only retrieve stored data without performing any processing.

---

## Characteristics

- Always returns a single value.
- Can contain one or more operators.
- Can include functions.
- Can include constants.
- Can include column names.
- Can be used in almost every SQL clause.
- Can return numbers, text, dates, or Boolean values.

---

## Types of Expressions

Expressions can be of different types.

### 1. Arithmetic Expression

Performs mathematical calculations.

Example:

```sql
salary + 5000
```

Result:

```
80000
```

---

### 2. Comparison Expression

Compares two values.

Example:

```sql
salary > 60000
```

Result:

```
TRUE
```

or

```
FALSE
```

---

### 3. Logical Expression

Combines multiple conditions.

Example:

```sql
salary > 60000
AND department = 'IT'
```

Result:

```
TRUE
```

or

```
FALSE
```

---

### 4. String Expression

Works with text values.

Example:

```sql
CONCAT(employee_name, ' works in ', department)
```

Result:

```
Priya Patel works in IT
```

---

### 5. Date Expression

Performs calculations using dates.

Example:

```sql
CURRENT_DATE - INTERVAL 1 YEAR
```

Result:

```
2025-07-29
```

(Example result.)

---

## Syntax

General syntax:

```sql
expression
```

Examples:

```sql
salary + 5000
```

```sql
salary * 12
```

```sql
salary > 60000
```

```sql
department = 'IT'
```

```sql
CONCAT(employee_name, department)
```

---

## Examples

### Example 1

Display employee names along with their annual salary.

```sql
SELECT employee_name,
       salary,
       salary * 12 AS annual_salary
FROM employees;
```

### Explanation

The expression:

```sql
salary * 12
```

calculates the annual salary for every employee.

---

### Example 2

Display employees whose salary is greater than ₹60,000.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary > 60000;
```

### Explanation

The expression:

```sql
salary > 60000
```

returns either TRUE or FALSE.

Only employees where the expression evaluates to TRUE are displayed.

---

### Example 3

Display employee name and department in one column.

```sql
SELECT CONCAT(employee_name, ' - ', department) AS employee_details
FROM employees;
```

### Explanation

The `CONCAT()` function combines multiple values into a single text value.

---

### Example 4

Display employee salary after adding a ₹10,000 bonus.

```sql
SELECT employee_name,
       salary,
       salary + 10000 AS updated_salary
FROM employees;
```

### Explanation

The expression:

```sql
salary + 10000
```

calculates a new salary by adding a ₹10,000 bonus.

---

### Example 5

Display employees whose salary is greater than ₹60,000 and who belong to the IT department.

```sql
SELECT *
FROM employees
WHERE salary > 60000
AND department = 'IT';
```

### Explanation

This query contains a logical expression.

Both conditions must evaluate to TRUE for a row to be returned.

---

## Real-World Example

Suppose the company stores the following salaries:

| Employee | Salary (₹) |
|----------|-----------:|
| Amit | 45000 |
| Priya | 75000 |
| Sneha | 68000 |

Query:

```sql
SELECT employee_name,
       salary,
       salary + 5000 AS revised_salary
FROM employees;
```

Result

| Employee | Salary (₹) | Revised Salary (₹) |
|----------|-----------:|-------------------:|
| Amit | 45000 | 50000 |
| Priya | 75000 | 80000 |
| Sneha | 68000 | 73000 |

The expression:

```sql
salary + 5000
```

calculates a new salary for every employee.

---

## Workflow

```
Column Value

↓

Expression

↓

Evaluation

↓

Single Result
```

---

## Memory Tip

> 🧠 **Expression = Values + Operators + Functions → One Result**

```
Column

+

Operator

+

Value

↓

Expression

↓

One Result
```

Think:

```
Data

↓

Apply Expression

↓

Calculated Value
```

--------------------------------------------------

# Why do we need Operators?

## What is it?

Operators are used to perform operations on data stored in a database.

Without operators, SQL could only retrieve data exactly as it is stored.

Operators allow MySQL to:

- Perform calculations.
- Compare values.
- Filter records.
- Combine conditions.
- Search for data.
- Generate reports.
- Create calculated columns.
- Apply business rules.

Almost every SQL query uses one or more operators.

---

## Why are Operators important?

Imagine a company has thousands of employee records.

The HR department may ask questions like:

- Which employees earn more than ₹70,000?
- What will each employee's salary be after a ₹5,000 increment?
- Which employees belong to the IT department?
- Which employees joined after 2022?
- Which employees work in Mumbai and earn more than ₹60,000?

Without operators, answering these questions would not be possible.

Operators make SQL powerful by allowing MySQL to evaluate conditions and perform calculations.

---

## Real-World Uses

Operators are used in almost every business application.

Examples include:

- Calculating salaries and bonuses.
- Calculating taxes.
- Filtering customers based on age.
- Finding products above a certain price.
- Checking inventory levels.
- Comparing sales figures.
- Creating dashboards and reports.

---

## Characteristics

- Perform calculations.
- Compare values.
- Combine multiple conditions.
- Work with numbers, text, and dates.
- Return a calculated value or a Boolean result.
- Can be used in almost every SQL clause.

---

## Examples

### Example 1

Increase every employee's salary by ₹10,000.

```sql
SELECT employee_name,
       salary,
       salary + 10000 AS updated_salary
FROM employees;
```

### Explanation

The `+` operator performs arithmetic addition and creates a new calculated salary.

---

### Example 2

Display employees earning more than ₹60,000.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary > 60000;
```

### Explanation

The `>` operator compares each salary with ₹60,000.

Only employees satisfying the condition are displayed.

---

### Example 3

Display employees who belong to the IT department.

```sql
SELECT employee_name,
       department
FROM employees
WHERE department = 'IT';
```

### Explanation

The `=` operator checks whether the department is `IT`.

Only matching records are returned.

---

### Example 4

Display employees who earn more than ₹60,000 and work in Pune.

```sql
SELECT employee_name,
       city,
       salary
FROM employees
WHERE salary > 60000
AND city = 'Pune';
```

### Explanation

The `AND` operator combines two conditions.

Both conditions must be TRUE for a row to be included.

---

### Example 5

Display employees who joined before 1 January 2022.

```sql
SELECT employee_name,
       joining_date
FROM employees
WHERE joining_date < '2022-01-01';
```

### Explanation

The `<` operator compares dates.

Only employees who joined before 1 January 2022 are returned.

---

## Workflow

```
Data

↓

Operator

↓

Evaluation

↓

Result
```

---

## Memory Tip

> 🧠 **Operators tell MySQL what action to perform on data.**

```
Data

↓

Operator

↓

Calculation / Comparison

↓

Result
```

Think:

```
Without Operators

↓

Only Display Data

With Operators

↓

Calculate

↓

Compare

↓

Filter

↓

Analyze
```

--------------------------------------------------

# Types of Operators

## What are they?

MySQL provides different types of operators to perform different kinds of operations.

Each type of operator has a specific purpose.

Some operators perform calculations, while others compare values, combine conditions, search for patterns, or work with `NULL` values.

The major types of operators in MySQL are:

1. Arithmetic Operators
2. Comparison Operators
3. Logical Operators
4. Special Operators

Learning these categories helps you choose the correct operator for different SQL queries.

---

## Why do we need different types of Operators?

Different business problems require different operations.

For example:

- Calculate employee bonuses.
- Compare employee salaries.
- Filter employees based on multiple conditions.
- Search for employees whose names start with "A".
- Find employees whose salary is between ₹50,000 and ₹80,000.
- Check whether a value is `NULL`.

One operator cannot perform all these tasks.

Therefore, MySQL provides different categories of operators.

---

## 1. Arithmetic Operators

Arithmetic Operators perform mathematical calculations.

They are used with numeric values.

| Operator | Meaning | Example |
|----------|---------|---------|
| `+` | Addition | `salary + 5000` |
| `-` | Subtraction | `salary - 2000` |
| `*` | Multiplication | `salary * 12` |
| `/` | Division | `salary / 2` |
| `%` | Modulus (Remainder) | `salary % 1000` |

**Used for:**

- Salary calculation
- Bonus calculation
- Tax calculation
- Profit calculation

---

## 2. Comparison Operators

Comparison Operators compare two values.

They return either:

- TRUE
- FALSE

| Operator | Meaning |
|----------|---------|
| `=` | Equal to |
| `!=` or `<>` | Not equal to |
| `>` | Greater than |
| `<` | Less than |
| `>=` | Greater than or equal to |
| `<=` | Less than or equal to |

**Used for:**

- Salary comparison
- Date comparison
- Product price comparison
- Employee filtering

---

## 3. Logical Operators

Logical Operators combine multiple conditions.

| Operator | Meaning |
|----------|---------|
| `AND` | Both conditions must be TRUE |
| `OR` | At least one condition must be TRUE |
| `NOT` | Reverses a condition |

**Used for:**

- Multiple filtering conditions
- Business rules
- Decision making

---

## 4. Special Operators

Special Operators perform specific SQL operations.

| Operator | Purpose |
|----------|---------|
| `IN` | Checks multiple values |
| `BETWEEN` | Checks a range |
| `LIKE` | Pattern matching |
| `IS NULL` | Checks for NULL values |
| `EXISTS` | Checks whether a subquery returns rows |
| `ANY` | Compares with any value returned by a subquery |
| `ALL` | Compares with all values returned by a subquery |

**Used for:**

- Searching data
- Pattern matching
- Range checking
- Working with `NULL`
- Subqueries

---

## Summary Table

| Operator Type | Purpose | Examples |
|--------------|---------|----------|
| Arithmetic | Perform calculations | `+`, `-`, `*`, `/`, `%` |
| Comparison | Compare values | `=`, `>`, `<`, `>=`, `<=`, `!=` |
| Logical | Combine conditions | `AND`, `OR`, `NOT` |
| Special | Perform SQL-specific operations | `IN`, `BETWEEN`, `LIKE`, `IS NULL`, `EXISTS` |

---

## Real-World Example

Suppose an HR manager wants to answer the following questions:

| Requirement | Operator Type |
|-------------|---------------|
| Increase salary by ₹5,000 | Arithmetic |
| Salary greater than ₹70,000 | Comparison |
| Salary greater than ₹70,000 **and** department is IT | Logical |
| Salary between ₹50,000 and ₹80,000 | Special (`BETWEEN`) |

Different business requirements require different types of operators.

---

## Workflow

```
Business Requirement

↓

Choose Operator Type

↓

Arithmetic

Comparison

Logical

Special

↓

Execute Query

↓

Required Result
```

---

## Memory Tip

> 🧠 **Remember the four major categories of MySQL Operators:**

```
Arithmetic

↓

Comparison

↓

Logical

↓

Special
```

Think:

```
Calculate

↓

Compare

↓

Combine

↓

Search
```

--------------------------------------------------

# Arithmetic Operators

## What are they?

Arithmetic Operators are used to **perform mathematical calculations** on numeric values.

These operators work with numbers stored in database columns or with numeric constants.

They are commonly used to:

- Calculate salaries
- Calculate bonuses
- Calculate taxes
- Calculate discounts
- Calculate profits
- Calculate annual income

Arithmetic Operators return a **calculated numeric value**.

---

## Why do we need Arithmetic Operators?

Suppose a company wants to answer questions like:

- What will be an employee's salary after a ₹5,000 increment?
- What is the annual salary of every employee?
- What is the monthly salary if the annual salary is known?
- What is the remaining amount after deducting ₹2,000?
- What is the remainder when a number is divided?

Without Arithmetic Operators, MySQL could only display the stored values and could not perform calculations.

---

## Types of Arithmetic Operators

| Operator | Name | Purpose | Example |
|----------|------|---------|---------|
| `+` | Addition | Adds values | `salary + 5000` |
| `-` | Subtraction | Subtracts values | `salary - 2000` |
| `*` | Multiplication | Multiplies values | `salary * 12` |
| `/` | Division | Divides values | `salary / 12` |
| `%` | Modulus | Returns remainder | `salary % 1000` |

---

# Addition (+)

## What is it?

The `+` operator adds two numeric values.

It is commonly used to:

- Add bonuses
- Increase salaries
- Add incentives
- Calculate totals

---

## Syntax

```sql
value1 + value2
```

Example:

```sql
salary + 5000
```

---

## Examples

### Example 1

Increase every employee's salary by ₹5,000.

```sql
SELECT employee_name,
       salary,
       salary + 5000 AS updated_salary
FROM employees;
```

### Explanation

The `+` operator adds ₹5,000 to every employee's salary and displays the calculated value as `updated_salary`.

---

### Example 2

Add a ₹10,000 bonus to every employee.

```sql
SELECT employee_name,
       salary,
       salary + 10000 AS salary_with_bonus
FROM employees;
```

### Explanation

Each employee receives an additional ₹10,000 bonus in the calculated result.

---

# Subtraction (-)

## What is it?

The `-` operator subtracts one numeric value from another.

It is commonly used for:

- Salary deductions
- Discounts
- Tax calculations
- Expense calculations

---

## Syntax

```sql
value1 - value2
```

Example:

```sql
salary - 2000
```

---

## Examples

### Example 1

Deduct ₹2,000 from every employee's salary.

```sql
SELECT employee_name,
       salary,
       salary - 2000 AS salary_after_deduction
FROM employees;
```

### Explanation

The `-` operator subtracts ₹2,000 from every employee's salary.

---

### Example 2

Deduct ₹5,000 as professional expenses.

```sql
SELECT employee_name,
       salary,
       salary - 5000 AS final_salary
FROM employees;
```

### Explanation

The calculated column shows the salary after deducting ₹5,000.

---

# Multiplication (*)

## What is it?

The `*` operator multiplies two numeric values.

It is commonly used to calculate:

- Annual salary
- Total cost
- Revenue
- Profit

---

## Syntax

```sql
value1 * value2
```

Example:

```sql
salary * 12
```

---

## Examples

### Example 1

Calculate the annual salary of every employee.

```sql
SELECT employee_name,
       salary,
       salary * 12 AS annual_salary
FROM employees;
```

### Explanation

The monthly salary is multiplied by 12 to calculate the annual salary.

---

### Example 2

Calculate yearly bonus assuming two months' salary as bonus.

```sql
SELECT employee_name,
       salary,
       salary * 2 AS yearly_bonus
FROM employees;
```

### Explanation

The monthly salary is multiplied by 2 to calculate the yearly bonus.

---

# Division (/)

## What is it?

The `/` operator divides one numeric value by another.

It is commonly used for:

- Monthly salary calculations
- Average calculations
- Unit price calculations

---

## Syntax

```sql
value1 / value2
```

Example:

```sql
salary / 2
```

---

## Examples

### Example 1

Calculate half of every employee's salary.

```sql
SELECT employee_name,
       salary,
       salary / 2 AS half_salary
FROM employees;
```

### Explanation

The salary is divided by 2.

---

### Example 2

Calculate the daily salary assuming 30 working days.

```sql
SELECT employee_name,
       salary,
       salary / 30 AS daily_salary
FROM employees;
```

### Explanation

The monthly salary is divided by 30 to estimate the daily salary.

---

# Modulus (%)

## What is it?

The `%` operator returns the **remainder** after division.

It is commonly used to:

- Check even and odd numbers.
- Divide records into batches.
- Perform cyclic operations.
- Validate divisibility.

---

## Syntax

```sql
value1 % value2
```

Example:

```sql
salary % 1000
```

---

## Examples

### Example 1

Find the remainder after dividing salary by ₹1,000.

```sql
SELECT employee_name,
       salary,
       salary % 1000 AS remainder
FROM employees;
```

### Explanation

The `%` operator returns the remaining amount after dividing the salary by ₹1,000.

---

### Example 2

Find the remainder after dividing the employee ID by 2.

```sql
SELECT employee_id,
       employee_name,
       employee_id % 2 AS remainder
FROM employees;
```

### Explanation

If the remainder is:

- `0` → Even employee ID
- `1` → Odd employee ID

---

## Real-World Example

Suppose the company stores the following salaries:

| Employee | Salary (₹) |
|----------|-----------:|
| Amit | 45000 |
| Priya | 75000 |
| Rahul | 62000 |

Query:

```sql
SELECT employee_name,
       salary,
       salary + 5000 AS revised_salary,
       salary * 12 AS annual_salary
FROM employees;
```

Result

| Employee | Salary (₹) | Revised Salary (₹) | Annual Salary (₹) |
|----------|-----------:|-------------------:|------------------:|
| Amit | 45000 | 50000 | 540000 |
| Priya | 75000 | 80000 | 900000 |
| Rahul | 62000 | 67000 | 744000 |

Arithmetic Operators calculate new values without modifying the original data stored in the table.

---

## Workflow

```
Numeric Value

↓

Arithmetic Operator

↓

Calculation

↓

Calculated Result
```

---

## Memory Tip

> 🧠 **Arithmetic Operators = Mathematical Calculations**

```
+

Addition

↓

-

Subtraction

↓

*

Multiplication

↓

/

Division

↓

%

Remainder
```

Think:

```
Numbers

↓

Mathematical Operator

↓

Calculated Value
```

--------------------------------------------------

# Comparison Operators

## What are they?

Comparison Operators are used to **compare two values**.

They compare:

- Numbers
- Text
- Dates
- Expressions

A Comparison Operator always returns one of two results:

- **TRUE**
- **FALSE**

These operators are mainly used in:

- `WHERE`
- `HAVING`
- `CASE`
- `JOIN`
- `IF()`
- Subqueries

They help MySQL decide whether a row satisfies a condition.

---

## Why do we need Comparison Operators?

Suppose a company wants to answer questions like:

- Which employees earn more than ₹70,000?
- Which employees belong to the IT department?
- Which employees joined before 2022?
- Which employees are not from Mumbai?
- Which employees earn exactly ₹50,000?

Without Comparison Operators, MySQL cannot compare data or filter records.

---

## Types of Comparison Operators

| Operator | Meaning | Example |
|----------|---------|---------|
| `=` | Equal to | `salary = 50000` |
| `!=` | Not equal to | `city != 'Mumbai'` |
| `<>` | Not equal to | `department <> 'HR'` |
| `>` | Greater than | `salary > 60000` |
| `<` | Less than | `salary < 50000` |
| `>=` | Greater than or equal to | `salary >= 70000` |
| `<=` | Less than or equal to | `salary <= 45000` |

---

# Equal To (=)

## What is it?

The `=` operator checks whether two values are exactly equal.

If they are equal, MySQL returns **TRUE**.

Otherwise, it returns **FALSE**.

---

## Syntax

```sql
column_name = value
```

Example:

```sql
department = 'IT'
```

---

## Examples

### Example 1

Display employees from the IT department.

```sql
SELECT *
FROM employees
WHERE department = 'IT';
```

### Explanation

Only employees whose department is **IT** are displayed.

---

### Example 2

Display employees whose salary is ₹75,000.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary = 75000;
```

### Explanation

Only employees earning exactly ₹75,000 are returned.

---

# Not Equal To (!=)

## What is it?

The `!=` operator checks whether two values are **different**.

If they are different, the condition returns **TRUE**.

---

## Syntax

```sql
column_name != value
```

Example:

```sql
city != 'Mumbai'
```

---

## Examples

### Example 1

Display employees who are not from Mumbai.

```sql
SELECT employee_name,
       city
FROM employees
WHERE city != 'Mumbai';
```

### Explanation

Employees whose city is anything except Mumbai are displayed.

---

### Example 2

Display employees who are not in the HR department.

```sql
SELECT employee_name,
       department
FROM employees
WHERE department != 'HR';
```

### Explanation

Only employees who do not belong to the HR department are returned.

---

# Not Equal To (<>)

## What is it?

`<>` is another operator that means **Not Equal To**.

It works exactly like `!=`.

Both operators produce the same result in MySQL.

---

## Syntax

```sql
column_name <> value
```

Example:

```sql
department <> 'Finance'
```

---

## Examples

### Example 1

Display employees who are not in the Finance department.

```sql
SELECT employee_name,
       department
FROM employees
WHERE department <> 'Finance';
```

### Explanation

Employees belonging to every department except Finance are displayed.

---

### Example 2

Display employees whose city is not Pune.

```sql
SELECT employee_name,
       city
FROM employees
WHERE city <> 'Pune';
```

### Explanation

Only employees whose city is not Pune are returned.

---

# Greater Than (>)

## What is it?

The `>` operator checks whether the value on the left is greater than the value on the right.

---

## Syntax

```sql
column_name > value
```

Example:

```sql
salary > 60000
```

---

## Examples

### Example 1

Display employees earning more than ₹60,000.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary > 60000;
```

### Explanation

Only employees whose salary is greater than ₹60,000 are displayed.

---

### Example 2

Display employees who joined after '2022-01-01'.

```sql
SELECT employee_name,
       joining_date
FROM employees
WHERE joining_date > '2022-01-01';
```

### Explanation

Only employees who joined after 1 January 2022 are returned.

---

# Less Than (<)

## What is it?

The `<` operator checks whether the value on the left is smaller than the value on the right.

---

## Syntax

```sql
column_name < value
```

Example:

```sql
salary < 50000
```

---

## Examples

### Example 1

Display employees earning less than ₹50,000.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary < 50000;
```

### Explanation

Only employees earning below ₹50,000 are displayed.

---

### Example 2

Display employees who joined before '2021-01-01'.

```sql
SELECT employee_name,
       joining_date
FROM employees
WHERE joining_date < '2021-01-01';
```

### Explanation

Only employees who joined before 1 January 2021 are returned.

---

# Greater Than or Equal To (>=)

## What is it?

The `>=` operator checks whether a value is greater than or equal to another value.

---

## Syntax

```sql
column_name >= value
```

Example:

```sql
salary >= 70000
```

---

## Examples

### Example 1

Display employees earning ₹70,000 or more.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary >= 70000;
```

### Explanation

Employees earning exactly ₹70,000 or more are displayed.

---

### Example 2

Display employees who joined on or after '2022-01-01'.

```sql
SELECT employee_name,
       joining_date
FROM employees
WHERE joining_date >= '2022-01-01';
```

### Explanation

Employees joining on or after 1 January 2022 are returned.

---

# Less Than or Equal To (<=)

## What is it?

The `<=` operator checks whether a value is less than or equal to another value.

---

## Syntax

```sql
column_name <= value
```

Example:

```sql
salary <= 50000
```

---

## Examples

### Example 1

Display employees earning ₹50,000 or less.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary <= 50000;
```

### Explanation

Employees earning exactly ₹50,000 or below are displayed.

---

### Example 2

Display employees who joined on or before '2021-01-01'.

```sql
SELECT employee_name,
       joining_date
FROM employees
WHERE joining_date <= '2021-01-01';
```

### Explanation

Employees who joined on or before 1 January 2021 are returned.

---

## Real-World Example

Suppose the company has the following data:

| Employee | Department | Salary (₹) |
|----------|------------|-----------:|
| Amit | HR | 45000 |
| Priya | IT | 75000 |
| Sneha | IT | 68000 |
| Rahul | Finance | 62000 |

Query:

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary >= 60000;
```

Result

| Employee | Salary (₹) |
|----------|-----------:|
| Priya | 75000 |
| Sneha | 68000 |
| Rahul | 62000 |

Only employees earning ₹60,000 or more are displayed.

---

## Workflow

```
Column Value

↓

Comparison Operator

↓

TRUE / FALSE

↓

Matching Rows
```

---

## Memory Tip

> 🧠 **Comparison Operators compare two values and return TRUE or FALSE.**

```
=

Equal

↓

!= or <>

Not Equal

↓

>

Greater Than

↓

<

Less Than

↓

>=

Greater Than or Equal

↓

<=

Less Than or Equal
```

Think:

```
Compare

↓

TRUE / FALSE

↓

Filter Records
```

--------------------------------------------------

# Logical Operators

## What are they?

Logical Operators are used to **combine multiple conditions** in a SQL query.

They determine whether one or more conditions are TRUE or FALSE and return the final result based on logical evaluation.

Logical Operators are mainly used in:

- `WHERE`
- `HAVING`
- `CASE`
- `JOIN`
- Subqueries

They help you retrieve data based on multiple conditions instead of a single condition.

---

## Why do we need Logical Operators?

Suppose a company wants to answer questions like:

- Which employees work in the IT department **and** earn more than ₹70,000?
- Which employees are from Mumbai **or** Pune?
- Which employees are **not** in the HR department?

These questions involve more than one condition.

Logical Operators make such queries possible.

---

## Types of Logical Operators

| Operator | Meaning |
|----------|---------|
| `AND` | All conditions must be TRUE |
| `OR` | At least one condition must be TRUE |
| `NOT` | Reverses the result of a condition |

---

# AND Operator

## What is it?

The `AND` operator returns rows only when **all specified conditions are TRUE**.

If even one condition is FALSE, the row is not returned.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE condition1
AND condition2;
```

Example:

```sql
SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 70000;
```

---

## Examples

### Example 1

Display employees who belong to the IT department and earn more than ₹70,000.

```sql
SELECT employee_name,
       department,
       salary
FROM employees
WHERE department = 'IT'
AND salary > 70000;
```

### Explanation

Both conditions must be TRUE.

The employee must:

- Belong to the IT department.
- Earn more than ₹70,000.

---

### Example 2

Display employees from Mumbai who joined after '2022-01-01'.

```sql
SELECT employee_name,
       city,
       joining_date
FROM employees
WHERE city = 'Mumbai'
AND joining_date > '2022-01-01';
```

### Explanation

Only employees satisfying both conditions are displayed.

---

# OR Operator

## What is it?

The `OR` operator returns rows when **at least one condition is TRUE**.

If any one of the conditions evaluates to TRUE, the row is included.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE condition1
OR condition2;
```

Example:

```sql
SELECT *
FROM employees
WHERE city = 'Mumbai'
OR city = 'Pune';
```

---

## Examples

### Example 1

Display employees from Mumbai or Pune.

```sql
SELECT employee_name,
       city
FROM employees
WHERE city = 'Mumbai'
OR city = 'Pune';
```

### Explanation

Employees from either Mumbai or Pune are returned.

They do not need to satisfy both conditions.

---

### Example 2

Display employees earning less than ₹50,000 or more than ₹80,000.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary < 50000
OR salary > 80000;
```

### Explanation

Employees satisfying either condition are displayed.

---

# NOT Operator

## What is it?

The `NOT` operator reverses the result of a condition.

If the condition is TRUE, `NOT` makes it FALSE.

If the condition is FALSE, `NOT` makes it TRUE.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE NOT condition;
```

Example:

```sql
SELECT *
FROM employees
WHERE NOT department = 'HR';
```

---

## Examples

### Example 1

Display employees who are not in the HR department.

```sql
SELECT employee_name,
       department
FROM employees
WHERE NOT department = 'HR';
```

### Explanation

Employees belonging to departments other than HR are displayed.

---

### Example 2

Display employees who are not from Mumbai.

```sql
SELECT employee_name,
       city
FROM employees
WHERE NOT city = 'Mumbai';
```

### Explanation

Employees from every city except Mumbai are returned.

---

## Combining AND and OR

Logical Operators can be combined in a single query.

### Example

Display employees from the IT department who earn more than ₹70,000 or employees from the Finance department.

```sql
SELECT employee_name,
       department,
       salary
FROM employees
WHERE (department = 'IT'
AND salary > 70000)
OR department = 'Finance';
```

### Explanation

The parentheses ensure that MySQL first evaluates the `AND` condition.

Then it evaluates the `OR` condition.

Without parentheses, the result may be different because of operator precedence.

---

## Truth Table

### AND

| Condition 1 | Condition 2 | Result |
|-------------|-------------|--------|
| TRUE | TRUE | TRUE |
| TRUE | FALSE | FALSE |
| FALSE | TRUE | FALSE |
| FALSE | FALSE | FALSE |

---

### OR

| Condition 1 | Condition 2 | Result |
|-------------|-------------|--------|
| TRUE | TRUE | TRUE |
| TRUE | FALSE | TRUE |
| FALSE | TRUE | TRUE |
| FALSE | FALSE | FALSE |

---

### NOT

| Condition | Result |
|-----------|--------|
| TRUE | FALSE |
| FALSE | TRUE |

---

## Real-World Example

Suppose the company has the following data:

| Employee | Department | City | Salary (₹) |
|----------|------------|------|-----------:|
| Amit | HR | Mumbai | 45000 |
| Priya | IT | Pune | 75000 |
| Sneha | IT | Bengaluru | 68000 |
| Rahul | Finance | Delhi | 62000 |

Query:

```sql
SELECT employee_name,
       department,
       salary
FROM employees
WHERE department = 'IT'
AND salary > 70000;
```

Result

| Employee | Department | Salary (₹) |
|----------|------------|-----------:|
| Priya | IT | 75000 |

Only **Priya** satisfies both conditions.

---

## Workflow

```
Condition 1

↓

Logical Operator

↓

Condition 2

↓

TRUE / FALSE

↓

Matching Rows
```

---

## Memory Tip

> 🧠 **Logical Operators combine conditions.**

```
AND

↓

All TRUE

----------------

OR

↓

Any One TRUE

----------------

NOT

↓

Reverse Result
```

Think:

```
Multiple Conditions

↓

Logical Operator

↓

Final Decision

↓

Result
```

--------------------------------------------------

# Special Operators

## What are they?

Special Operators are SQL operators that perform **specific types of comparisons or searches** which cannot be easily achieved using Arithmetic, Comparison, or Logical Operators.

They help MySQL perform operations such as:

- Searching for multiple values
- Checking a range of values
- Pattern matching
- Working with `NULL` values
- Checking whether a subquery returns data

Special Operators are widely used in:

- `WHERE`
- `HAVING`
- `CASE`
- Subqueries
- Data analysis
- Reporting

---

## Why do we need Special Operators?

Suppose a company wants to answer questions like:

- Which employees work in Mumbai, Pune, or Delhi?
- Which employees earn between ₹50,000 and ₹80,000?
- Which employee names start with "A"?
- Which employees have not been assigned a manager?
- Which departments have employees?

These requirements cannot be solved efficiently using only comparison operators.

Special Operators make SQL queries simpler, shorter, and easier to understand.

---

## Types of Special Operators

| Operator | Purpose |
|----------|---------|
| `IN` | Checks multiple values |
| `BETWEEN` | Checks a range of values |
| `LIKE` | Searches for patterns |
| `IS NULL` | Checks for NULL values |
| `EXISTS` | Checks whether a subquery returns rows |
| `ANY` | Compares with any value returned by a subquery |
| `ALL` | Compares with all values returned by a subquery |

---

# IN Operator

## What is it?

The `IN` operator checks whether a value exists in a specified list.

Instead of writing multiple `OR` conditions, `IN` provides a cleaner and more readable solution.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name IN (value1, value2, value3);
```

---

## Examples

### Example 1

Display employees from Mumbai, Pune, or Delhi.

```sql
SELECT employee_name,
       city
FROM employees
WHERE city IN ('Mumbai', 'Pune', 'Delhi');
```

### Explanation

Only employees whose city is Mumbai, Pune, or Delhi are returned.

---

### Example 2

Display employees belonging to the IT or HR department.

```sql
SELECT employee_name,
       department
FROM employees
WHERE department IN ('IT', 'HR');
```

### Explanation

The `IN` operator checks whether the department matches either IT or HR.

---

# BETWEEN Operator

## What is it?

The `BETWEEN` operator checks whether a value lies within a specified range.

The starting and ending values are included in the range.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```

---

## Examples

### Example 1

Display employees earning between ₹50,000 and ₹70,000.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary BETWEEN 50000 AND 70000;
```

### Explanation

Employees earning ₹50,000, ₹70,000, and every salary between them are displayed.

---

### Example 2

Display employees who joined between '2021-01-01' and '2022-12-31'.

```sql
SELECT employee_name,
       joining_date
FROM employees
WHERE joining_date BETWEEN '2021-01-01' AND '2022-12-31';
```

### Explanation

Employees who joined within the specified date range are returned.

---

# LIKE Operator

## What is it?

The `LIKE` operator searches for text patterns.

It is commonly used with wildcard characters.

| Wildcard | Meaning |
|----------|---------|
| `%` | Zero or more characters |
| `_` | Exactly one character |

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name LIKE 'pattern';
```

---

## Examples

### Example 1

Display employees whose names start with "A".

```sql
SELECT employee_name
FROM employees
WHERE employee_name LIKE 'A%';
```

### Explanation

`A%` means the name starts with the letter A followed by zero or more characters.

---

### Example 2

Display employees whose names end with "a".

```sql
SELECT employee_name
FROM employees
WHERE employee_name LIKE '%a';
```

### Explanation

`%a` matches names ending with the letter "a".

---

### Example 3

Display employees whose names contain "sh".

```sql
SELECT employee_name
FROM employees
WHERE employee_name LIKE '%sh%';
```

### Explanation

`%sh%` matches names containing "sh" anywhere in the text.

---

# IS NULL Operator

## What is it?

The `IS NULL` operator checks whether a column contains a `NULL` value.

A `NULL` value represents missing or unknown data.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name IS NULL;
```

---

## Examples

### Example 1

Display employees whose manager ID is `NULL`.

```sql
SELECT employee_name,
       manager_id
FROM employees
WHERE manager_id IS NULL;
```

### Explanation

Only employees with no assigned manager are displayed.

---

### Example 2

Display employees whose city is `NULL`.

```sql
SELECT employee_name,
       city
FROM employees
WHERE city IS NULL;
```

### Explanation

Employees with missing city information are returned.

---

# EXISTS Operator

## What is it?

The `EXISTS` operator checks whether a subquery returns at least one row.

If the subquery returns one or more rows, `EXISTS` returns **TRUE**.

Otherwise, it returns **FALSE**.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE EXISTS
(
    subquery
);
```

---

## Example

Display departments that have employees.

```sql
SELECT department
FROM departments d
WHERE EXISTS
(
    SELECT *
    FROM employees e
    WHERE e.department = d.department_name
);
```

### Explanation

The subquery checks whether at least one employee exists for each department.

---

# ANY Operator

## What is it?

The `ANY` operator compares a value with **any one** value returned by a subquery.

The condition becomes TRUE if it matches at least one value.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE value > ANY
(
    subquery
);
```

---

## Example

Display employees earning more than any salary in the HR department.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary > ANY
(
    SELECT salary
    FROM employees
    WHERE department = 'HR'
);
```

### Explanation

The employee's salary is compared with every salary returned by the subquery.

If it is greater than at least one salary, the employee is included.

---

# ALL Operator

## What is it?

The `ALL` operator compares a value with **every value** returned by a subquery.

The condition becomes TRUE only if it satisfies the comparison for all values.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE value > ALL
(
    subquery
);
```

---

## Example

Display employees earning more than every employee in the HR department.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary > ALL
(
    SELECT salary
    FROM employees
    WHERE department = 'HR'
);
```

### Explanation

The employee's salary must be greater than every salary returned by the subquery.

---

## Real-World Example

Suppose the company has the following data:

| Employee | City | Salary (₹) |
|----------|------|-----------:|
| Amit | Mumbai | 45000 |
| Priya | Pune | 75000 |
| Rahul | Delhi | 62000 |
| Sneha | Bengaluru | 68000 |

Query:

```sql
SELECT employee_name,
       city
FROM employees
WHERE city IN ('Mumbai', 'Delhi');
```

Result

| Employee | City |
|----------|------|
| Amit | Mumbai |
| Rahul | Delhi |

The `IN` operator returns employees whose city matches any value in the list.

---

## Workflow

```
Column Value

↓

Special Operator

↓

Evaluate Condition

↓

TRUE / FALSE

↓

Matching Rows
```

---

## Memory Tip

> 🧠 **Special Operators simplify complex searches and comparisons.**

```
IN

↓

BETWEEN

↓

LIKE

↓

IS NULL

↓

EXISTS

↓

ANY

↓

ALL
```

Think:

```
Search

↓

Range

↓

Pattern

↓

NULL

↓

Subquery

↓

Result
```

--------------------------------------------------

## Operator Precedence

## What is it?

Operator Precedence is the **order in which MySQL evaluates operators** when multiple operators are present in the same expression or condition.

If a query contains more than one operator, MySQL does **not** evaluate them from left to right randomly.

Instead, it follows a predefined order called **Operator Precedence**.

Understanding precedence helps you write correct SQL queries and avoid unexpected results.

---

## Why do we need Operator Precedence?

Suppose you write a query with both `AND` and `OR`.

Example requirement:

> Display employees who:
>
> - belong to the IT department and earn more than ₹70,000
> - or belong to the HR department.

If you do not understand precedence, your query may return incorrect rows.

Knowing the evaluation order ensures MySQL processes conditions exactly as intended.

---

## Default Precedence Order

The following table shows the commonly used operator precedence from highest to lowest.

| Priority | Operator Type | Examples |
|----------|---------------|----------|
| Highest | Arithmetic Operators | `*`, `/`, `%` |
| | Arithmetic Operators | `+`, `-` |
| | Comparison Operators | `=`, `!=`, `<>`, `>`, `<`, `>=`, `<=` |
| | `NOT` | `NOT` |
| | `AND` | `AND` |
| Lowest | `OR` | `OR` |

> **Note**
>
> Parentheses `()` always have the highest priority because they explicitly define the order of evaluation.

---

## Evaluation Order

MySQL evaluates expressions in the following sequence:

```
Parentheses ()

↓

Arithmetic Operators

↓

Comparison Operators

↓

NOT

↓

AND

↓

OR
```

---

## Example 1

Without parentheses.

```sql
SELECT employee_name,
       department,
       salary
FROM employees
WHERE department = 'IT'
AND salary > 70000
OR city = 'Mumbai';
```

### Explanation

MySQL evaluates the query as:

```text
(department = 'IT'
AND salary > 70000)

OR

city = 'Mumbai'
```

The `AND` condition is evaluated first because it has higher precedence than `OR`.

Therefore, the query returns:

- Employees from the IT department earning more than ₹70,000.
- All employees from Mumbai.

---

## Example 2

Using parentheses.

```sql
SELECT employee_name,
       department,
       salary,
       city
FROM employees
WHERE department = 'IT'
AND
(
    salary > 70000
    OR city = 'Mumbai'
);
```

### Explanation

The parentheses are evaluated first.

The employee must:

- Belong to the IT department.

And additionally satisfy either:

- Salary greater than ₹70,000.
- City is Mumbai.

This produces a different result from Example 1.

---

## Example 3

Arithmetic precedence.

```sql
SELECT
20 + 10 * 2 AS result;
```

### Explanation

MySQL performs multiplication before addition.

```
20 + 10 * 2

↓

20 + 20

↓

40
```

Result:

```
40
```

---

## Example 4

Using parentheses in arithmetic.

```sql
SELECT
(20 + 10) * 2 AS result;
```

### Explanation

Parentheses are evaluated first.

```
(20 + 10) * 2

↓

30 * 2

↓

60
```

Result:

```
60
```

---

## Common Mistake

Many beginners write:

```sql
SELECT *
FROM employees
WHERE department = 'IT'
OR department = 'HR'
AND salary > 70000;
```

They expect:

```
(IT OR HR)

AND

Salary > ₹70,000
```

But MySQL actually evaluates:

```
IT

OR

(HR AND Salary > ₹70,000)
```

because `AND` has higher precedence than `OR`.

The correct query is:

```sql
SELECT *
FROM employees
WHERE
(
    department = 'IT'
    OR department = 'HR'
)
AND salary > 70000;
```

---

## Real-World Example

Requirement:

> Display employees who:
>
> - are from Mumbai or Pune
> - and earn at least ₹60,000.

Correct query:

```sql
SELECT employee_name,
       city,
       salary
FROM employees
WHERE
(
    city = 'Mumbai'
    OR city = 'Pune'
)
AND salary >= 60000;
```

### Explanation

The parentheses ensure that MySQL first checks the city.

Then it filters employees whose salary is ₹60,000 or more.

Without parentheses, the query could return unintended rows.

---

## Workflow

```
Expression

↓

Parentheses

↓

Arithmetic

↓

Comparison

↓

NOT

↓

AND

↓

OR

↓

Final Result
```

---

## Memory Tip

> 🧠 **Remember the precedence order with this sequence:**

```
()

↓

Arithmetic

↓

Comparison

↓

NOT

↓

AND

↓

OR
```

Think:

```
Control the evaluation order with ()

↓

Write predictable SQL queries

↓

Avoid incorrect results
```

--------------------------------------------------

# Operator Precedence Examples

## Example 1

Calculate the value of an arithmetic expression.

```sql
SELECT
10 + 5 * 4 AS result;
```

### Explanation

According to operator precedence:

1. Multiplication is performed first.
2. Addition is performed next.

Calculation:

```
10 + 5 * 4

↓

10 + 20

↓

30
```

Result:

| result |
|--------:|
| 30 |

---

## Example 2

Use parentheses to change the calculation.

```sql
SELECT
(10 + 5) * 4 AS result;
```

### Explanation

Parentheses have the highest precedence.

Calculation:

```
(10 + 5) * 4

↓

15 * 4

↓

60
```

Result:

| result |
|--------:|
| 60 |

---

## Example 3

Display employees from the IT department earning more than ₹70,000.

```sql
SELECT employee_name,
       department,
       salary
FROM employees
WHERE department = 'IT'
AND salary > 70000;
```

### Explanation

The query contains only the `AND` operator.

An employee must satisfy **both** conditions.

---

## Example 4

Display employees from Mumbai or Pune.

```sql
SELECT employee_name,
       city
FROM employees
WHERE city = 'Mumbai'
OR city = 'Pune';
```

### Explanation

The `OR` operator returns rows if either condition is TRUE.

Employees from Mumbai, Pune, or both are displayed.

---

## Example 5

Understanding `AND` and `OR`.

```sql
SELECT employee_name,
       department,
       city,
       salary
FROM employees
WHERE department = 'IT'
AND salary > 70000
OR city = 'Mumbai';
```

### Explanation

MySQL evaluates this as:

```
(department = 'IT'
AND salary > 70000)

OR

city = 'Mumbai'
```

Rows returned:

- Employees from the IT department earning more than ₹70,000.
- Every employee from Mumbai.

This may not match the intended business requirement.

---

## Example 6

Using parentheses with `AND` and `OR`.

```sql
SELECT employee_name,
       department,
       city,
       salary
FROM employees
WHERE department = 'IT'
AND
(
    salary > 70000
    OR city = 'Mumbai'
);
```

### Explanation

Parentheses are evaluated first.

The employee must:

- Belong to the IT department.

And must also satisfy either:

- Salary greater than ₹70,000.
- City is Mumbai.

This produces a different result from Example 5.

---

## Example 7

Using `NOT`.

```sql
SELECT employee_name,
       department
FROM employees
WHERE NOT department = 'HR';
```

### Explanation

MySQL first evaluates:

```
department = 'HR'
```

Then `NOT` reverses the result.

Employees who do not belong to the HR department are displayed.

---

## Example 8

Combining Arithmetic and Comparison Operators.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary + 5000 > 70000;
```

### Explanation

Evaluation order:

```
salary + 5000

↓

Comparison (>)

↓

TRUE / FALSE
```

MySQL first performs the arithmetic calculation.

Then it compares the calculated salary with ₹70,000.

---

## Example 9

Combining Multiple Logical Operators.

```sql
SELECT employee_name,
       department,
       city,
       salary
FROM employees
WHERE
(
    department = 'IT'
    OR department = 'Finance'
)
AND salary >= 60000;
```

### Explanation

Parentheses are evaluated first.

Then MySQL checks whether the salary is at least ₹60,000.

Only employees satisfying both requirements are returned.

---

## Example 10

Complex Condition

```sql
SELECT employee_name,
       department,
       city,
       salary
FROM employees
WHERE
(
    city = 'Mumbai'
    OR city = 'Pune'
)
AND
(
    department = 'IT'
    OR department = 'HR'
)
AND salary >= 50000;
```

### Explanation

Evaluation order:

```
Parentheses

↓

City Condition

↓

Department Condition

↓

Salary Condition

↓

AND

↓

Final Result
```

Only employees satisfying all three business rules are displayed.

---

## Best Practices

- Use parentheses whenever a query contains both `AND` and `OR`.
- Write one condition per line for better readability.
- Do not rely solely on remembering operator precedence in complex queries.
- Test complex conditions using sample data before running them on production databases.
- Use meaningful indentation to make the evaluation order clear.

---

## Common Mistakes

❌ Assuming MySQL evaluates conditions strictly from left to right.

❌ Forgetting that `AND` has higher precedence than `OR`.

❌ Writing complex conditions without parentheses.

❌ Mixing arithmetic and comparison operators without understanding the evaluation order.

❌ Creating queries that are difficult to read because of poor formatting.

---

## Interview Questions

### Q1. What is Operator Precedence in MySQL?

**Answer:**

Operator Precedence is the predefined order in which MySQL evaluates operators in an expression when multiple operators are present.

---

### Q2. Which operator has higher precedence: `AND` or `OR`?

**Answer:**

`AND` has higher precedence than `OR`.

---

### Q3. Which has the highest precedence in SQL expressions?

**Answer:**

Parentheses `()` have the highest precedence because they explicitly control the order of evaluation.

---

### Q4. Why should parentheses be used in complex SQL queries?

**Answer:**

Parentheses improve readability and ensure that conditions are evaluated in the intended order.

---

### Q5. Does multiplication occur before addition in SQL?

**Answer:**

Yes. Just like standard mathematics, multiplication (`*`) is evaluated before addition (`+`).

--------------------------------------------------

# Summary

In this chapter, you learned about SQL Operators and their role in performing calculations, comparisons, and conditional filtering.

You covered:

- Operators and Expressions
- Why Operators are needed
- Types of Operators
- Arithmetic Operators
- Comparison Operators
- Logical Operators
- Special Operators
- Operator Precedence
- Practical examples for each operator type

Operators are one of the most frequently used features in SQL and form the foundation of writing effective queries.

---

# Best Practices

- Use the appropriate operator for the task.
- Prefer `IN` instead of multiple `OR` conditions when checking several values.
- Use `BETWEEN` for range-based filtering.
- Always use parentheses when combining `AND` and `OR`.
- Write SQL queries with proper indentation and formatting.
- Use aliases for calculated columns to improve readability.

---

# Common Mistakes

- Confusing `=` with `LIKE`.
- Using `=` to compare `NULL` instead of `IS NULL`.
- Forgetting that `AND` has higher precedence than `OR`.
- Omitting parentheses in complex conditions.
- Using arithmetic operators on non-numeric columns.

---

# Interview Questions

1. What are SQL Operators?
2. What is the difference between an Operator and an Expression?
3. What are the different types of SQL Operators?
4. What is the difference between `=` and `LIKE`?
5. What is the difference between `!=` and `<>`?
6. What is the difference between `AND` and `OR`?
7. What is the purpose of the `NOT` operator?
8. When should you use the `IN` operator?
9. What is the difference between `BETWEEN` and comparison operators?
10. What is Operator Precedence?
11. Why are parentheses important in SQL?
12. What is the difference between `ANY` and `ALL`?
13. Why should `IS NULL` be used instead of `= NULL`?

---

# Key Takeaways

- Operators allow MySQL to calculate, compare, and filter data.
- Expressions are combinations of values, columns, and operators.
- Arithmetic Operators perform mathematical calculations.
- Comparison Operators return `TRUE` or `FALSE`.
- Logical Operators combine multiple conditions.
- Special Operators simplify searching, filtering, and working with subqueries.
- Parentheses help control the order of evaluation in complex expressions.
- Understanding Operator Precedence helps prevent logical errors in SQL queries.

---

# What's Next?

In **Day 14**, you will learn **Built-in Functions**, including:

- What are Built-in Functions?
- Why Functions are important
- String Functions
- Numeric Functions
- Date and Time Functions
- NULL Functions
- Conversion Functions
- Aggregate Functions (overview)
- Nested Functions
- Real-world examples and interview questions

These functions will help you manipulate, format, and analyze data more efficiently in MySQL.

