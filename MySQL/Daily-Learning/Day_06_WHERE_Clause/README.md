# Day 06 - WHERE Clause

## Introduction

In the previous chapter, you learned how to retrieve data using the `SELECT` statement.

However, displaying every record from a table is not always useful.

Imagine an organization has thousands of employee records. If the HR department wants to view only employees from the **IT department** or employees earning more than **₹70,000**, retrieving the entire table would be inefficient.

This is where the **WHERE** clause becomes important.

The `WHERE` clause allows you to retrieve only those records that satisfy a specified condition.

Almost every real-world SQL query uses the `WHERE` clause because users usually need specific information rather than all the available data.

Examples include:

- Display employees from the IT department.
- Find employees whose salary is greater than ₹70,000.
- Show employees who joined after 2022.
- Display employees living in Mumbai.
- Find products that are currently in stock.
- Show customers from a particular city.

In this chapter, you will learn how to filter records using the `WHERE` clause and various comparison and logical operators.

---

## Learning Objectives

After completing this chapter, you will be able to:

- Understand the purpose of the `WHERE` clause.
- Filter records based on conditions.
- Use comparison operators.
- Use logical operators (`AND`, `OR`, `NOT`).
- Filter records using `BETWEEN`.
- Use the `IN` operator.
- Search using the `LIKE` operator.
- Work with `NULL` values using `IS NULL` and `IS NOT NULL`.
- Understand operator precedence in SQL.
- Write efficient filtering conditions.

---

## Table of Contents

1. What is the WHERE Clause?
2. Comparison Operators
3. Logical Operators
4. BETWEEN
5. IN
6. LIKE
7. IS NULL
8. IS NOT NULL
9. Operator Precedence
10. Summary
11. Best Practices
12. Common Mistakes
13. Interview Questions
14. Key Takeaways
15. What's Next?

---

# What is the WHERE Clause?

## What is it?

The **WHERE** clause is used to **filter records** from a table.

Instead of retrieving every row, the `WHERE` clause returns only those rows that satisfy a specified condition.

It works together with SQL statements such as:

- `SELECT`
- `UPDATE`
- `DELETE`

In this chapter, we will focus on using the `WHERE` clause with the `SELECT` statement.

---

## Why do we need it?

Suppose the `employees` table contains 10,000 employee records.

If you want to view only employees from the **IT department**, displaying all 10,000 records would be unnecessary.

Instead, you can ask MySQL to return only the matching records.

Similarly, you can filter employees based on:

- Department
- Salary
- City
- Joining date
- Designation

This makes data retrieval faster, more efficient, and easier to analyze.

---

## Characteristics

- Filters records based on conditions.
- Returns only matching rows.
- Can be used with `SELECT`, `UPDATE`, and `DELETE`.
- Supports comparison, logical, and special operators.
- Improves query efficiency by reducing unnecessary data retrieval.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE condition;
```

Retrieve all columns with a condition:

```sql
SELECT *
FROM table_name
WHERE condition;
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

Only employees whose department is **IT** are returned.

Employees from other departments are excluded.

---

### Example 2

Display employee names with salaries greater than ₹70,000.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary > 70000;
```

### Explanation

Only employees earning more than ₹70,000 are displayed.

Employees with salaries of ₹70,000 or less are not included.

---

### Example 3

Display employees who live in Mumbai.

```sql
SELECT employee_name,
       city
FROM employees
WHERE city = 'Mumbai';
```

### Explanation

Only employees whose city is **Mumbai** are returned.

---

## Memory Tip

> 🧠 **WHERE = Filter Data**

```
Employees Table

        │

        ▼

WHERE Condition

        │

        ▼

Matching Records Only
```

Think:

- **SELECT** → Retrieves data
- **WHERE** → Filters data

---

# Comparison Operators

## What are they?

**Comparison Operators** are used to compare one value with another.

The comparison returns either:

- **TRUE**
- **FALSE**

The `WHERE` clause uses these results to decide which rows should be returned.

For example, you can compare:

- Salary
- Department
- City
- Joining Date
- Employee ID

Comparison operators are one of the most frequently used features in SQL because almost every filtering condition involves comparing values.

---

## Why do we need them?

Suppose a company wants answers to questions like:

- Which employees earn more than ₹70,000?
- Which employees belong to the HR department?
- Which employees joined after 2022?
- Which employees do not work in Sales?

Without comparison operators, filtering records would not be possible.

---

## Characteristics

- Compare two values.
- Return either **TRUE** or **FALSE**.
- Used with the `WHERE` clause.
- Work with numbers, text, and dates.
- Form the foundation of SQL filtering.

---

## Comparison Operators in MySQL

| Operator | Meaning | Example |
|----------|---------|----------|
| `=` | Equal to | `salary = 50000` |
| `!=` | Not Equal to | `department != 'HR'` |
| `<>` | Not Equal to | `city <> 'Mumbai'` |
| `>` | Greater Than | `salary > 70000` |
| `<` | Less Than | `salary < 50000` |
| `>=` | Greater Than or Equal To | `salary >= 70000` |
| `<=` | Less Than or Equal To | `salary <= 50000` |

---

# Equal To (`=`)

## What is it?

The **Equal To (`=`)** operator returns rows where the specified column value exactly matches the given value.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name = value;
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

Only employees whose department is **IT** are returned.

---

### Example 2

Display employees from Mumbai.

```sql
SELECT employee_name,
       city
FROM employees
WHERE city = 'Mumbai';
```

### Explanation

Only employees whose city is **Mumbai** are displayed.

---

### Example 3

Display the employee whose ID is 105.

```sql
SELECT *
FROM employees
WHERE employee_id = 105;
```

### Explanation

Only the employee with ID **105** is returned.

---

## Memory Tip

> 🧠 **`=` Means Exactly the Same**

```
Employee City

Mumbai

        =

Mumbai

↓

Match
```

---

# Not Equal To (`!=`)

## What is it?

The **Not Equal To (`!=`)** operator returns rows where the values are **different** from the specified value.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name != value;
```

---

## Examples

### Example 1

Display employees who are not in the HR department.

```sql
SELECT *
FROM employees
WHERE department != 'HR';
```

### Explanation

Employees belonging to every department except **HR** are returned.

---

### Example 2

Display employees who do not live in Pune.

```sql
SELECT employee_name,
       city
FROM employees
WHERE city != 'Pune';
```

### Explanation

Only employees whose city is **not Pune** are displayed.

---

### Example 3

Display employees whose designation is not Sales Executive.

```sql
SELECT employee_name,
       designation
FROM employees
WHERE designation != 'Sales Executive';
```

### Explanation

Employees with every designation except **Sales Executive** are returned.

---

## Memory Tip

> 🧠 **`!=` Means Different**

```
HR

      !=

IT

↓

Not Equal
```

---

# Not Equal To (`<>`)

## What is it?

The **`<>`** operator also means **Not Equal To**.

It performs exactly the same function as `!=`.

Both operators are valid in MySQL.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name <> value;
```

---

## Examples

### Example 1

Display employees who are not in Sales.

```sql
SELECT *
FROM employees
WHERE department <> 'Sales';
```

### Explanation

All employees except those in the Sales department are displayed.

---

### Example 2

Display employees who are not from Chennai.

```sql
SELECT employee_name,
       city
FROM employees
WHERE city <> 'Chennai';
```

### Explanation

Employees from every city except **Chennai** are returned.

---

### Example 3

Display employees whose salary is not ₹45,000.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary <> 45000;
```

### Explanation

Employees whose salary is anything other than ₹45,000 are displayed.

---

## Memory Tip

> 🧠 **`!=` and `<>` Mean the Same Thing**

```
!=

=

<>

↓

Not Equal
```

Choose one style and use it consistently in your SQL queries.

---

# Greater Than (`>`)

## What is it?

The **Greater Than (`>`)** operator returns rows where the column value is **greater than** the specified value.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name > value;
```

---

## Examples

### Example 1

Display employees earning more than ₹70,000.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary > 70000;
```

### Explanation

Only employees whose salary is greater than ₹70,000 are returned.

---

### Example 2

Display employees whose ID is greater than 105.

```sql
SELECT *
FROM employees
WHERE employee_id > 105;
```

### Explanation

Only employees with IDs greater than **105** are displayed.

---

### Example 3

Display employees who joined after 2022-01-01.

```sql
SELECT employee_name,
       joining_date
FROM employees
WHERE joining_date > '2022-01-01';
```

### Explanation

Only employees who joined after **1 January 2022** are returned.

---

## Memory Tip

> 🧠 **`>` Means Bigger Than**

```
75000

>

70000

↓

TRUE
```

Whenever the left value is larger than the right value, the condition evaluates to **TRUE**.

---

# Less Than (`<`)

## What is it?

The **Less Than (`<`)** operator returns rows where the column value is **less than** the specified value.

It is commonly used to find records with values below a certain limit.

---

## Why do we need it?

Suppose a company wants to answer questions like:

- Which employees earn less than ₹50,000?
- Which employees joined before 2021?
- Which employees have an employee ID less than 105?

The **Less Than (`<`)** operator makes these types of queries possible.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name < value;
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

Only employees whose salary is less than ₹50,000 are returned.

---

### Example 2

Display employees whose ID is less than 105.

```sql
SELECT *
FROM employees
WHERE employee_id < 105;
```

### Explanation

Only employees whose employee ID is less than **105** are displayed.

---

### Example 3

Display employees who joined before 2021-01-01.

```sql
SELECT employee_name,
       joining_date
FROM employees
WHERE joining_date < '2021-01-01';
```

### Explanation

Only employees who joined before **1 January 2021** are returned.

---

## Memory Tip

> 🧠 **`<` Means Smaller Than**

```
45000

<

50000

↓

TRUE
```

Whenever the left value is smaller than the right value, the condition evaluates to **TRUE**.

---

# Greater Than or Equal To (`>=`)

## What is it?

The **Greater Than or Equal To (`>=`)** operator returns rows where the column value is **greater than or equal to** the specified value.

It combines the behavior of:

- Greater Than (`>`)
- Equal To (`=`)

---

## Why do we need it?

Sometimes we want to include the specified value in the result.

For example:

- Salary greater than or equal to ₹70,000.
- Employees who joined on or after a specific date.
- Employee IDs greater than or equal to 101.

Using `>=` allows the boundary value to be included.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name >= value;
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

Employees with a salary of exactly ₹70,000 or more are returned.

---

### Example 2

Display employees who joined on or after 2022-01-01.

```sql
SELECT employee_name,
       joining_date
FROM employees
WHERE joining_date >= '2022-01-01';
```

### Explanation

Employees who joined on **1 January 2022** or later are displayed.

---

### Example 3

Display employees whose employee ID is greater than or equal to 108.

```sql
SELECT *
FROM employees
WHERE employee_id >= 108;
```

### Explanation

Employees with IDs **108 and above** are returned.

---

## Memory Tip

> 🧠 **`>=` Means Bigger Than or Equal To**

```
70000

>=

70000

↓

TRUE
```

Think:

```
>

+

=

↓

>=
```

---

# Less Than or Equal To (`<=`)

## What is it?

The **Less Than or Equal To (`<=`)** operator returns rows where the column value is **less than or equal to** the specified value.

It combines:

- Less Than (`<`)
- Equal To (`=`)

---

## Why do we need it?

Many business requirements include the boundary value.

Examples:

- Employees earning ₹50,000 or less.
- Employees who joined on or before a certain date.
- Products costing ₹1,000 or less.

The `<=` operator includes the specified value in the result.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name <= value;
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

Employees with salaries equal to or less than ₹50,000 are displayed.

---

### Example 2

Display employees whose employee ID is less than or equal to 104.

```sql
SELECT *
FROM employees
WHERE employee_id <= 104;
```

### Explanation

Employees with IDs up to and including **104** are returned.

---

### Example 3

Display employees who joined on or before 2021-12-31.

```sql
SELECT employee_name,
       joining_date
FROM employees
WHERE joining_date <= '2021-12-31';
```

### Explanation

Employees who joined on or before **31 December 2021** are displayed.

---

## Memory Tip

> 🧠 **`<=` Means Smaller Than or Equal To**

```
50000

<=

50000

↓

TRUE
```

Think:

```
<

+

=

↓

<=
```

---

# Comparison Operators Summary

| Operator | Meaning | Example |
|----------|---------|----------|
| `=` | Equal To | `salary = 50000` |
| `!=` | Not Equal To | `department != 'HR'` |
| `<>` | Not Equal To | `city <> 'Mumbai'` |
| `>` | Greater Than | `salary > 70000` |
| `<` | Less Than | `salary < 50000` |
| `>=` | Greater Than or Equal To | `salary >= 70000` |
| `<=` | Less Than or Equal To | `salary <= 50000` |

---

## Memory Tip

> 🧠 **Comparison Operators Compare Values**

```
=

↓

Exactly Equal

-----------------

!=  or  <>

↓

Not Equal

-----------------

>

↓

Greater Than

-----------------

<

↓

Less Than

-----------------

>=

↓

Greater Than
or Equal To

-----------------

<=

↓

Less Than
or Equal To
```

Remember:

- `=` → Exactly equal
- `!=` or `<>` → Different
- `>` → Bigger
- `<` → Smaller
- `>=` → Bigger or equal
- `<=` → Smaller or equal

---

# Logical Operators

## What are they?

**Logical Operators** are used to **combine two or more conditions** in a `WHERE` clause.

Sometimes a single condition is not enough.

For example:

- Employees from the IT department **and** earning more than ₹70,000.
- Employees from Mumbai **or** Pune.
- Employees who are **not** from the HR department.

Logical operators help us create these types of conditions.

MySQL supports three logical operators:

- `AND`
- `OR`
- `NOT`

---

## Why do we need them?

Suppose an HR manager wants to answer the following questions:

- Which employees belong to the IT department **and** earn more than ₹70,000?
- Which employees work in Mumbai **or** Pune?
- Which employees are **not** in the Sales department?

A single comparison operator cannot answer these questions.

Logical operators allow multiple conditions to work together.

---

## Characteristics

- Combine multiple conditions.
- Return either **TRUE** or **FALSE**.
- Used with the `WHERE` clause.
- Improve filtering flexibility.
- Can be combined with comparison operators.

---

# AND Operator

## What is it?

The **AND** operator returns a row **only if all conditions are TRUE**.

If even one condition is **FALSE**, the row is not returned.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE condition1
AND condition2;
```

---

## Examples

### Example 1

Display employees from the IT department earning more than ₹70,000.

```sql
SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 70000;
```

### Explanation

The employee must satisfy **both** conditions:

- Department must be **IT**
- Salary must be greater than ₹70,000

If either condition is not satisfied, the employee is not included.

---

### Example 2

Display employees from Mumbai who joined after 2021-01-01.

```sql
SELECT employee_name,
       city,
       joining_date
FROM employees
WHERE city = 'Mumbai'
AND joining_date > '2021-01-01';
```

### Explanation

Only employees who satisfy both conditions are returned.

---

### Example 3

Display employees from the Sales department whose salary is greater than ₹50,000.

```sql
SELECT employee_name,
       department,
       salary
FROM employees
WHERE department = 'Sales'
AND salary > 50000;
```

### Explanation

Employees must belong to the Sales department **and** earn more than ₹50,000.

---

## Truth Table

| Condition 1 | Condition 2 | Result |
|-------------|-------------|--------|
| TRUE | TRUE | TRUE |
| TRUE | FALSE | FALSE |
| FALSE | TRUE | FALSE |
| FALSE | FALSE | FALSE |

---

## Memory Tip

> 🧠 **AND = All Conditions Must Be TRUE**

```
Condition 1

      AND

Condition 2

       │

       ▼

Both TRUE

↓

Record Returned
```

Think:

```
AND

↓

All Conditions
```

---

# OR Operator

## What is it?

The **OR** operator returns a row if **at least one condition is TRUE**.

If either condition is satisfied, the row is included.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE condition1
OR condition2;
```

---

## Examples

### Example 1

Display employees from Mumbai or Pune.

```sql
SELECT *
FROM employees
WHERE city = 'Mumbai'
OR city = 'Pune';
```

### Explanation

Employees from either Mumbai or Pune are returned.

---

### Example 2

Display employees from the HR or Finance department.

```sql
SELECT employee_name,
       department
FROM employees
WHERE department = 'HR'
OR department = 'Finance';
```

### Explanation

Employees belonging to either department are displayed.

---

### Example 3

Display employees earning less than ₹50,000 or greater than ₹80,000.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary < 50000
OR salary > 80000;
```

### Explanation

If either salary condition is satisfied, the employee is included in the result.

---

## Truth Table

| Condition 1 | Condition 2 | Result |
|-------------|-------------|--------|
| TRUE | TRUE | TRUE |
| TRUE | FALSE | TRUE |
| FALSE | TRUE | TRUE |
| FALSE | FALSE | FALSE |

---

## Memory Tip

> 🧠 **OR = At Least One Condition Must Be TRUE**

```
Condition 1

       OR

Condition 2

       │

       ▼

Any One TRUE

↓

Record Returned
```

Think:

```
OR

↓

One is Enough
```

---

# NOT Operator

## What is it?

The **NOT** operator is used to **reverse** a condition.

It returns rows where the specified condition is **FALSE**.

In simple words:

- TRUE becomes FALSE.
- FALSE becomes TRUE.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE NOT condition;
```

---

## Examples

### Example 1

Display employees who are not in the HR department.

```sql
SELECT *
FROM employees
WHERE NOT department = 'HR';
```

### Explanation

Employees from every department except HR are displayed.

---

### Example 2

Display employees who do not live in Mumbai.

```sql
SELECT employee_name,
       city
FROM employees
WHERE NOT city = 'Mumbai';
```

### Explanation

Employees whose city is not Mumbai are returned.

---

### Example 3

Display employees whose salary is not ₹75,000.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE NOT salary = 75000;
```

### Explanation

Employees earning any salary other than ₹75,000 are displayed.

---

## Truth Table

| Condition | Result |
|-----------|--------|
| TRUE | FALSE |
| FALSE | TRUE |

---

## Memory Tip

> 🧠 **NOT = Opposite**

```
TRUE

↓

NOT

↓

FALSE
```

Think:

```
NOT

↓

Reverse the Condition
```

---

# Logical Operators Summary

| Operator | Meaning | Example |
|----------|---------|----------|
| `AND` | All conditions must be TRUE | `salary > 70000 AND department = 'IT'` |
| `OR` | At least one condition must be TRUE | `city = 'Mumbai' OR city = 'Pune'` |
| `NOT` | Reverses a condition | `NOT department = 'HR'` |

---

## Memory Tip

> 🧠 **Easy Way to Remember**

```
AND

↓

All Conditions

----------------

OR

↓

Any One Condition

----------------

NOT

↓

Reverse the Condition
```

Remember:

- **AND** → Every condition must be true.
- **OR** → At least one condition must be true.
- **NOT** → Returns the opposite of the condition.

---

# BETWEEN

## What is it?

The **BETWEEN** operator is used to retrieve records where a value falls **within a specified range**.

The range includes **both the starting and ending values**.

It can be used with:

- Numbers
- Dates
- Text (alphabetically)

Instead of writing two comparison conditions using `>=` and `<=`, the `BETWEEN` operator provides a shorter and more readable syntax.

---

## Why do we need it?

Suppose a company wants to answer questions like:

- Which employees earn between ₹50,000 and ₹70,000?
- Which employees joined between 2021 and 2023?
- Which employee IDs are between 101 and 105?

Without `BETWEEN`, you would need to write multiple comparison operators.

Using `BETWEEN` makes the query cleaner and easier to understand.

---

## Characteristics

- Checks whether a value falls within a range.
- Includes both the lower and upper limits.
- Works with numbers, dates, and text.
- Makes SQL queries shorter and more readable.
- Can be combined with the `NOT` operator.

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

Display employees whose salary is between ₹50,000 and ₹70,000.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary BETWEEN 50000 AND 70000;
```

### Explanation

Only employees whose salary is **₹50,000 or more** and **₹70,000 or less** are displayed.

Both ₹50,000 and ₹70,000 are included.

---

### Example 2

Display employees whose employee ID is between 103 and 107.

```sql
SELECT *
FROM employees
WHERE employee_id BETWEEN 103 AND 107;
```

### Explanation

Employees with IDs:

- 103
- 104
- 105
- 106
- 107

are returned.

---

### Example 3

Display employees who joined between 2021-01-01 and 2022-12-31.

```sql
SELECT employee_name,
       joining_date
FROM employees
WHERE joining_date BETWEEN '2021-01-01' AND '2022-12-31';
```

### Explanation

Employees who joined during this date range are returned.

Both the starting and ending dates are included.

---

### Example 4

Display employees whose names fall alphabetically between 'A' and 'M'.

```sql
SELECT employee_name
FROM employees
WHERE employee_name BETWEEN 'A' AND 'M';
```

### Explanation

MySQL compares text alphabetically.

Employee names beginning within the specified alphabetical range are returned.

---

## Memory Tip

> 🧠 **BETWEEN = Inclusive Range**

```
50000

│

50000 --------------- 70000

        BETWEEN

│

70000
```

Think:

```
BETWEEN

↓

From

↓

To

↓

Including Both Ends
```

Remember:

```
BETWEEN 10 AND 20

=

>= 10

AND

<= 20
```

---

# NOT BETWEEN

## What is it?

The **NOT BETWEEN** operator returns rows where the value **does not fall within** the specified range.

It is the opposite of `BETWEEN`.

---

## Why do we need it?

Suppose a company wants to answer questions like:

- Which employees earn less than ₹50,000 or more than ₹70,000?
- Which employees joined outside the year 2022?
- Which employee IDs are not between 101 and 105?

Instead of combining multiple comparison operators, `NOT BETWEEN` provides a simpler solution.

---

## Characteristics

- Excludes values within the specified range.
- Includes values below the lower limit and above the upper limit.
- Works with numbers, dates, and text.
- Improves query readability.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name NOT BETWEEN value1 AND value2;
```

---

## Examples

### Example 1

Display employees whose salary is not between ₹50,000 and ₹70,000.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary NOT BETWEEN 50000 AND 70000;
```

### Explanation

Employees earning less than ₹50,000 or more than ₹70,000 are returned.

Employees with salaries within the specified range are excluded.

---

### Example 2

Display employees whose employee ID is not between 103 and 107.

```sql
SELECT *
FROM employees
WHERE employee_id NOT BETWEEN 103 AND 107;
```

### Explanation

Employees whose IDs are outside the range 103 to 107 are displayed.

---

### Example 3

Display employees who joined outside the period from 2021-01-01 to 2022-12-31.

```sql
SELECT employee_name,
       joining_date
FROM employees
WHERE joining_date NOT BETWEEN '2021-01-01' AND '2022-12-31';
```

### Explanation

Employees whose joining dates are outside the specified range are returned.

---

## Memory Tip

> 🧠 **NOT BETWEEN = Outside the Range**

```
0 ----- 50000 ----- 70000 ----- ∞

       BETWEEN

NOT BETWEEN

↓

Outside
```

Think:

```
BETWEEN

↓

Inside the Range

--------------------

NOT BETWEEN

↓

Outside the Range
```

---

# IN

## What is it?

The **IN** operator is used to check whether a value matches **any one of the values in a given list**.

Instead of writing multiple conditions using the `OR` operator, the `IN` operator provides a shorter and more readable way to write the same query.

---

## Why do we need it?

Suppose a company wants to answer questions like:

- Which employees work in Mumbai, Pune, or Delhi?
- Which employees belong to the IT, HR, or Finance department?
- Which employee IDs are 101, 104, or 109?

Without the `IN` operator, you would need to write multiple `OR` conditions.

Using `IN` makes the query cleaner and easier to understand.

---

## Characteristics

- Checks multiple values in a single condition.
- Replaces multiple `OR` conditions.
- Improves query readability.
- Works with numbers, text, and dates.
- Can be combined with the `NOT` operator.

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

The query returns employees whose city is:

- Mumbai
- Pune
- Delhi

Employees from other cities are excluded.

---

### Example 2

Display employees from the IT, HR, or Finance department.

```sql
SELECT employee_name,
       department
FROM employees
WHERE department IN ('IT', 'HR', 'Finance');
```

### Explanation

Only employees belonging to the listed departments are displayed.

---

### Example 3

Display employees whose employee IDs are 101, 105, and 109.

```sql
SELECT *
FROM employees
WHERE employee_id IN (101, 105, 109);
```

### Explanation

Only employees with the specified employee IDs are returned.

---

### Example 4

Display employees who joined on any of the following dates.

```sql
SELECT employee_name,
       joining_date
FROM employees
WHERE joining_date IN (
    '2021-03-20',
    '2022-01-15',
    '2023-04-10'
);
```

### Explanation

Employees whose joining date matches any of the specified dates are displayed.

---

## Memory Tip

> 🧠 **IN = Match Any Value in the List**

```
City

↓

Mumbai
Pune
Delhi

↓

IN

↓

Any Match

↓

Record Returned
```

Think:

```
IN

=

OR

OR

OR
```

Example:

```sql
WHERE city IN ('Mumbai', 'Pune', 'Delhi')
```

is equivalent to:

```sql
WHERE city = 'Mumbai'
OR city = 'Pune'
OR city = 'Delhi'
```

---

# NOT IN

## What is it?

The **NOT IN** operator returns rows where the value **does not match any value** in the specified list.

It is the opposite of the `IN` operator.

---

## Why do we need it?

Suppose a company wants to answer questions like:

- Which employees are not from Mumbai, Pune, or Delhi?
- Which employees are not in the IT department?
- Which employee IDs are not 101, 102, or 103?

Instead of writing multiple `AND` conditions, `NOT IN` provides a simpler and more readable solution.

---

## Characteristics

- Excludes values present in the list.
- Replaces multiple `AND` conditions using `!=`.
- Improves query readability.
- Works with numbers, text, and dates.
- Commonly used to exclude specific records.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name NOT IN (value1, value2, value3);
```

---

## Examples

### Example 1

Display employees who are not from Mumbai, Pune, or Delhi.

```sql
SELECT employee_name,
       city
FROM employees
WHERE city NOT IN ('Mumbai', 'Pune', 'Delhi');
```

### Explanation

Employees from every city except Mumbai, Pune, and Delhi are displayed.

---

### Example 2

Display employees who are not in the HR or Sales department.

```sql
SELECT employee_name,
       department
FROM employees
WHERE department NOT IN ('HR', 'Sales');
```

### Explanation

Employees belonging to every department except HR and Sales are returned.

---

### Example 3

Display employees whose employee IDs are not 101, 102, or 103.

```sql
SELECT *
FROM employees
WHERE employee_id NOT IN (101, 102, 103);
```

### Explanation

Employees with IDs other than 101, 102, and 103 are displayed.

---

### Example 4

Display employees who did not join on the following dates.

```sql
SELECT employee_name,
       joining_date
FROM employees
WHERE joining_date NOT IN (
    '2021-03-20',
    '2022-01-15',
    '2023-04-10'
);
```

### Explanation

Employees whose joining date is not one of the specified dates are returned.

---

## Memory Tip

> 🧠 **NOT IN = Exclude the List**

```
Mumbai
Pune
Delhi

↓

NOT IN

↓

Every Other City
```

Think:

```
IN

↓

Inside the List

-------------------

NOT IN

↓

Outside the List
```

Remember:

```sql
WHERE city IN ('Mumbai', 'Pune')
```

means:

```
Match these cities.
```

Whereas:

```sql
WHERE city NOT IN ('Mumbai', 'Pune')
```

means:

```
Exclude these cities.
```

---

# LIKE

## What is it?

The **LIKE** operator is used to **search for patterns in text data**.

Unlike the `=` operator, which looks for an exact match, the `LIKE` operator allows you to search for:

- Words that start with specific letters.
- Words that end with specific letters.
- Words that contain certain characters.
- Words with a specific pattern.

The `LIKE` operator is commonly used with `VARCHAR`, `CHAR`, and `TEXT` columns.

---

## Why do we need it?

Suppose a company wants answers to questions like:

- Which employees' names start with **A**?
- Which employees live in cities ending with **i**?
- Which employees have **sh** in their names?
- Which designations start with **Data**?

These searches cannot always be performed using the `=` operator because the exact value may not be known.

The `LIKE` operator solves this problem by allowing pattern matching.

---

## Characteristics

- Searches for patterns in text.
- Works with character and text data types.
- Uses wildcard characters.
- More flexible than the `=` operator.
- Commonly used in search features.

---

## Wildcard Characters

The `LIKE` operator mainly uses two wildcard characters.

| Wildcard | Meaning | Example |
|----------|---------|----------|
| `%` | Zero or more characters | `'A%'` |
| `_` | Exactly one character | `'A_'` |

---

# Percentage Wildcard (`%`)

## What is it?

The **`%`** wildcard represents **zero or more characters**.

It can match:

- No characters
- One character
- Multiple characters

Depending on where `%` is placed, different patterns can be searched.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name LIKE 'pattern';
```

---

## Pattern 1: Starts With

### Example 1

Display employees whose names start with **A**.

```sql
SELECT employee_name
FROM employees
WHERE employee_name LIKE 'A%';
```

### Explanation

The query returns names such as:

```text
Amit Sharma
Anjali Desai
```

The `%` matches every character after **A**.

---

## Pattern 2: Ends With

### Example 2

Display employees whose city ends with **i**.

```sql
SELECT employee_name,
       city
FROM employees
WHERE city LIKE '%i';
```

### Explanation

Cities ending with the letter **i** are returned.

Examples:

```text
Kochi
```

---

## Pattern 3: Contains

### Example 3

Display employees whose names contain **sh**.

```sql
SELECT employee_name
FROM employees
WHERE employee_name LIKE '%sh%';
```

### Explanation

The `%` before and after `sh` means:

- Any characters before `sh`
- Any characters after `sh`

Examples include:

```text
Amit Sharma
```

---

## Pattern 4: Ends With "Manager"

### Example 4

Display employees whose designation ends with **Manager**.

```sql
SELECT employee_name,
       designation
FROM employees
WHERE designation LIKE '%Manager';
```

### Explanation

Only employees whose designation ends with **Manager** are displayed.

---

## Memory Tip

> 🧠 **`%` = Any Number of Characters**

```
A%

↓

Starts With A

----------------

%A

↓

Ends With A

----------------

%A%

↓

Contains A
```

Think:

```
%

↓

Anything
```

---

# Underscore Wildcard (`_`)

## What is it?

The **`_`** wildcard represents **exactly one character**.

Unlike `%`, which matches zero or more characters, `_` always matches one and only one character.

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

Display employee names where the second character is **m**.

```sql
SELECT employee_name
FROM employees
WHERE employee_name LIKE '_m%';
```

### Explanation

The first `_` represents exactly one character.

The second character must be **m**.

Example:

```text
Amit Sharma
```

---

### Example 2

Display employee names with exactly five characters.

```sql
SELECT employee_name
FROM employees
WHERE employee_name LIKE '_____';
```

### Explanation

Each underscore represents one character.

Only names with exactly five characters are returned.

---

### Example 3

Display cities whose first character is **P** and contain exactly four characters.

```sql
SELECT city
FROM employees
WHERE city LIKE 'P___';
```

### Explanation

The pattern means:

- First character must be **P**
- Followed by exactly three more characters

Total length = 4 characters.

---

## Memory Tip

> 🧠 **`_` = One Character**

```
_

↓

One Character

--------------

___

↓

Three Characters

--------------

_____

↓

Five Characters
```

Remember:

- `%` → Any number of characters.
- `_` → Exactly one character.

---

# LIKE Pattern Summary

| Pattern | Meaning |
|---------|---------|
| `'A%'` | Starts with A |
| `'%A'` | Ends with A |
| `'%A%'` | Contains A |
| `'_A%'` | Second character is A |
| `'A_'` | Starts with A and has exactly two characters |
| `'_____'` | Exactly five characters |

---

## Memory Tip

> 🧠 **LIKE = Pattern Matching**

```
LIKE

↓

Search Pattern

↓

%

↓

Many Characters

↓

_

↓

One Character
```

Think:

- `=` → Exact Match
- `LIKE` → Pattern Match

---

# IS NULL

## What is it?

In MySQL, **NULL** represents a **missing, unknown, or unavailable value**.

It does **not** mean:

- Zero (`0`)
- An empty string (`''`)
- FALSE

A `NULL` value simply indicates that **no value has been stored** in that column.

The **IS NULL** operator is used to retrieve rows where a column contains a `NULL` value.

---

## Why do we need it?

In real-world databases, some information may not be available.

For example:

| Employee | Email | Manager |
|----------|-------|----------|
| Amit | amit@email.com | Raj |
| Priya | NULL | NULL |
| Rahul | rahul@email.com | Karan |

Here:

- Priya's email is not available.
- Priya's manager has not yet been assigned.

To find such records, we use the **IS NULL** operator.

---

## Characteristics

- Checks whether a column contains `NULL`.
- Used only with `NULL` values.
- Cannot be replaced with the `=` operator.
- Frequently used in data cleaning and reporting.
- Works with all data types.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name IS NULL;
```

---

## Why Can't We Use `=`?

Many beginners write:

```sql
WHERE manager = NULL;
```

This is **incorrect**.

`NULL` represents an unknown value, so it cannot be compared using `=`.

Instead, use:

```sql
WHERE manager IS NULL;
```

---

## Examples

### Example 1

Display employees whose manager is not assigned.

```sql
SELECT employee_name,
       manager
FROM employees
WHERE manager IS NULL;
```

### Explanation

Only employees whose `manager` column contains `NULL` are displayed.

---

### Example 2

Display employees whose email address is missing.

```sql
SELECT employee_name,
       email
FROM employees
WHERE email IS NULL;
```

### Explanation

Employees whose email has not been stored are returned.

---

### Example 3

Display employees whose mobile number is unavailable.

```sql
SELECT employee_name,
       mobile_number
FROM employees
WHERE mobile_number IS NULL;
```

### Explanation

Only employees with missing mobile numbers are displayed.

---

## Memory Tip

> 🧠 **IS NULL = Missing Value**

```
Employee

↓

Email

↓

NULL

↓

IS NULL

↓

Record Returned
```

Remember:

```
NULL

≠

0

≠

''

≠

FALSE
```

`NULL` simply means:

> **No value is available.**

---

# IS NOT NULL

## What is it?

The **IS NOT NULL** operator is used to retrieve rows where a column **contains a value**.

It excludes rows where the column contains `NULL`.

---

## Why do we need it?

Suppose a company wants to answer questions like:

- Which employees have an email address?
- Which employees have a manager assigned?
- Which employees have provided their mobile number?

Instead of finding missing values, we want to find records where the information is available.

This is where **IS NOT NULL** is useful.

---

## Characteristics

- Returns rows containing values.
- Excludes rows containing `NULL`.
- Works with every data type.
- Commonly used for reports and data validation.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name IS NOT NULL;
```

---

## Examples

### Example 1

Display employees who have an email address.

```sql
SELECT employee_name,
       email
FROM employees
WHERE email IS NOT NULL;
```

### Explanation

Only employees whose email column contains a value are displayed.

---

### Example 2

Display employees whose manager has been assigned.

```sql
SELECT employee_name,
       manager
FROM employees
WHERE manager IS NOT NULL;
```

### Explanation

Employees with assigned managers are returned.

---

### Example 3

Display employees whose mobile number is available.

```sql
SELECT employee_name,
       mobile_number
FROM employees
WHERE mobile_number IS NOT NULL;
```

### Explanation

Only employees whose mobile number has been stored are displayed.

---

## Memory Tip

> 🧠 **IS NOT NULL = Value Exists**

```
Employee

↓

Email

↓

abc@email.com

↓

IS NOT NULL

↓

Record Returned
```

Think:

```
IS NULL

↓

Missing Value

--------------------

IS NOT NULL

↓

Available Value
```

---

# NULL Comparison Summary

| Expression | Meaning |
|------------|---------|
| `IS NULL` | Returns rows where the value is missing |
| `IS NOT NULL` | Returns rows where the value exists |

---

## Common Mistakes

❌ Incorrect

```sql
SELECT *
FROM employees
WHERE email = NULL;
```

Reason:

`NULL` cannot be compared using `=`.

---

❌ Incorrect

```sql
SELECT *
FROM employees
WHERE email != NULL;
```

Reason:

`NULL` cannot be compared using `!=`.

---

✅ Correct

```sql
SELECT *
FROM employees
WHERE email IS NULL;
```

---

✅ Correct

```sql
SELECT *
FROM employees
WHERE email IS NOT NULL;
```

---

## Memory Tip

> 🧠 **Never Compare NULL Using `=` or `!=`**

```
Wrong

NULL = NULL

❌

----------------

Correct

IS NULL

✅

----------------

Correct

IS NOT NULL

✅
```

Always remember:

- `=` → Compare actual values.
- `IS NULL` → Check for missing values.
- `IS NOT NULL` → Check for existing values.

---

# Operator Precedence

## What is it?

**Operator Precedence** determines the order in which MySQL evaluates conditions in a query.

When a `WHERE` clause contains multiple logical operators such as:

- `AND`
- `OR`
- `NOT`

MySQL follows a predefined order to evaluate them.

Understanding operator precedence is important because the same query can return different results depending on how conditions are grouped.

---

## Why do we need it?

Suppose a company wants to retrieve:

- Employees from the IT department with a salary greater than ₹70,000
- Or employees from the HR department

If the conditions are written incorrectly, MySQL may return unexpected results.

Understanding operator precedence helps us write accurate and predictable queries.

---

## Default Precedence Order

MySQL evaluates logical operators in the following order:

| Priority | Operator |
|----------|----------|
| 1 | `NOT` |
| 2 | `AND` |
| 3 | `OR` |

This means:

```
NOT

↓

AND

↓

OR
```

---

## Example 1

```sql
SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 70000
OR city = 'Mumbai';
```

### How MySQL Evaluates It

```
Step 1

department = 'IT'

AND

salary > 70000

↓

Step 2

(Result)

OR

city = 'Mumbai'
```

### Explanation

MySQL evaluates the `AND` condition first because it has a higher precedence than `OR`.

The query is interpreted as:

```sql
(
    department = 'IT'
    AND salary > 70000
)
OR city = 'Mumbai';
```

Employees who satisfy **either** of these conditions are returned:

- Employees in the IT department earning more than ₹70,000.
- Employees living in Mumbai.

---

## Example 2

Suppose we want a different result.

```sql
SELECT *
FROM employees
WHERE department = 'IT'
AND (
    salary > 70000
    OR city = 'Mumbai'
);
```

### Explanation

The parentheses change the order of evaluation.

Now MySQL first evaluates:

```sql
salary > 70000
OR city = 'Mumbai'
```

After that, it checks whether the employee belongs to the IT department.

This produces a different result from Example 1.

---

## Example 3

Using the `NOT` operator.

```sql
SELECT *
FROM employees
WHERE NOT department = 'HR'
AND salary > 60000;
```

### How MySQL Evaluates It

```
Step 1

NOT department = 'HR'

↓

Step 2

Result

AND

salary > 60000
```

### Explanation

Since `NOT` has the highest precedence, it is evaluated before `AND`.

---

# Using Parentheses

## What is it?

Parentheses `()` allow you to control the order in which conditions are evaluated.

Whenever parentheses are present, MySQL evaluates the conditions inside them first.

This is similar to mathematical expressions.

Example:

```
2 + 3 × 5

=

17
```

But

```
(2 + 3) × 5

=

25
```

Similarly, parentheses change the evaluation order in SQL.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE (
    condition1
    OR condition2
)
AND condition3;
```

---

## Example 1

```sql
SELECT *
FROM employees
WHERE (
    department = 'IT'
    OR department = 'HR'
)
AND salary > 60000;
```

### Explanation

First, MySQL checks whether the employee belongs to either:

- IT
- HR

Then it checks whether the salary is greater than ₹60,000.

Only employees satisfying both parts are returned.

---

## Example 2

```sql
SELECT *
FROM employees
WHERE (
    city = 'Mumbai'
    OR city = 'Pune'
)
AND joining_date > '2021-01-01';
```

### Explanation

Employees must:

- Live in Mumbai or Pune.
- Have joined after 1 January 2021.

---

## Example 3

```sql
SELECT *
FROM employees
WHERE NOT (
    department = 'Sales'
    OR department = 'Marketing'
);
```

### Explanation

The condition inside the parentheses is evaluated first.

Then `NOT` reverses the result.

Employees belonging to Sales and Marketing are excluded.

---

## Why Should You Use Parentheses?

Even when MySQL's default precedence gives the correct result, using parentheses makes queries:

- Easier to read.
- Easier to maintain.
- Less likely to cause logical mistakes.
- Easier for other developers to understand.

Using parentheses is considered a good SQL coding practice.

---

## Memory Tip

> 🧠 **Parentheses Come First**

```
(

Conditions

)

↓

Evaluate First

↓

Remaining Conditions
```

Think:

```
Math

↓

BODMAS

----------------

SQL

↓

Parentheses First
```

---

# Operator Precedence Summary

| Priority | Operator | Description |
|----------|----------|-------------|
| 1 | `()` | Parentheses |
| 2 | `NOT` | Reverse a condition |
| 3 | `AND` | All conditions must be TRUE |
| 4 | `OR` | At least one condition must be TRUE |

---

## Memory Tip

> 🧠 **Remember the Evaluation Order**

```
()

↓

NOT

↓

AND

↓

OR
```

Whenever a query contains multiple logical operators:

1. Parentheses
2. NOT
3. AND
4. OR

If you're unsure about the evaluation order, use **parentheses** to make your intention explicit and your queries easier to understand.

---

# WHERE Clause Examples

Now that you have learned all the operators used with the `WHERE` clause, let's combine them in practical examples.

These examples demonstrate how multiple operators can be used together to solve real-world filtering requirements.

---

## Example 1

Display IT employees whose salary is greater than ₹70,000.

```sql
SELECT employee_name,
       department,
       salary
FROM employees
WHERE department = 'IT'
AND salary > 70000;
```

### Explanation

This query returns only those employees who satisfy both conditions:

- Department must be **IT**
- Salary must be greater than ₹70,000

---

## Example 2

Display employees from Mumbai or Pune whose salary is between ₹50,000 and ₹80,000.

```sql
SELECT employee_name,
       city,
       salary
FROM employees
WHERE city IN ('Mumbai', 'Pune')
AND salary BETWEEN 50000 AND 80000;
```

### Explanation

The employee must:

- Belong to Mumbai or Pune.
- Earn between ₹50,000 and ₹80,000.

---

## Example 3

Display employees whose names start with the letter **A**.

```sql
SELECT employee_name
FROM employees
WHERE employee_name LIKE 'A%';
```

### Explanation

The `%` wildcard matches any number of characters after **A**.

---

## Example 4

Display employees who are not in the HR department.

```sql
SELECT employee_name,
       department
FROM employees
WHERE department <> 'HR';
```

### Explanation

Employees belonging to every department except HR are displayed.

---

## Example 5

Display employees whose employee ID is either 101, 104, or 109.

```sql
SELECT employee_name,
       employee_id
FROM employees
WHERE employee_id IN (101, 104, 109);
```

### Explanation

The `IN` operator checks whether the employee ID matches any value in the list.

---

## Example 6

Display employees who joined after 1 January 2021 and do not belong to the Sales department.

```sql
SELECT employee_name,
       department,
       joining_date
FROM employees
WHERE joining_date > '2021-01-01'
AND department <> 'Sales';
```

### Explanation

Both conditions must be true:

- Joining date must be after 1 January 2021.
- Department must not be Sales.

---

## Example 7

Display employees whose salary is not between ₹50,000 and ₹70,000.

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary NOT BETWEEN 50000 AND 70000;
```

### Explanation

Employees earning less than ₹50,000 or more than ₹70,000 are returned.

---

## Example 8

Display employees whose city is not Mumbai, Pune, or Delhi.

```sql
SELECT employee_name,
       city
FROM employees
WHERE city NOT IN ('Mumbai', 'Pune', 'Delhi');
```

### Explanation

The `NOT IN` operator excludes the specified cities.

---

## Example 9

Display employees whose designation ends with **Manager**.

```sql
SELECT employee_name,
       designation
FROM employees
WHERE designation LIKE '%Manager';
```

### Explanation

The `%` wildcard matches any characters before the word **Manager**.

---

## Example 10

Display employees from the IT or Finance department whose salary is greater than ₹65,000.

```sql
SELECT employee_name,
       department,
       salary
FROM employees
WHERE (
    department = 'IT'
    OR department = 'Finance'
)
AND salary > 65000;
```

### Explanation

The parentheses ensure that MySQL first checks whether the employee belongs to IT or Finance.

It then filters those employees whose salary is greater than ₹65,000.

---

# WHERE Clause Workflow

```
SELECT

↓

FROM

↓

WHERE

↓

Check Each Row

↓

Condition TRUE ?

      │
   ┌──┴──┐
   │     │
 YES     NO
 │       │
Return  Ignore
Row      Row
```

---

# Summary

- The `WHERE` clause filters rows based on one or more conditions.
- Comparison operators compare values.
- Logical operators combine multiple conditions.
- `BETWEEN` checks inclusive ranges.
- `IN` checks multiple values in a list.
- `LIKE` performs pattern matching.
- `IS NULL` and `IS NOT NULL` work with missing values.
- Parentheses help control the order of evaluation and improve readability.

---

# Best Practices

- Use meaningful and readable conditions.
- Prefer `IN` instead of multiple `OR` conditions.
- Use `BETWEEN` for range-based filtering.
- Use `LIKE` only for text pattern matching.
- Use `IS NULL` and `IS NOT NULL` when checking for missing values.
- Add parentheses when combining `AND` and `OR` to avoid logical errors.
- Format SQL queries with proper indentation for readability.

---

# Common Mistakes

- Using `=` instead of `IS NULL`.
- Forgetting that `BETWEEN` includes both boundary values.
- Confusing `%` and `_` in `LIKE` patterns.
- Writing many `OR` conditions instead of using `IN`.
- Ignoring operator precedence when mixing `AND` and `OR`.
- Assuming `NULL`, `0`, and an empty string are the same.

---

# Interview Questions

1. What is the purpose of the `WHERE` clause?
2. What is the difference between `WHERE` and `HAVING`?
3. Explain the difference between `=` and `LIKE`.
4. What is the difference between `IN` and `BETWEEN`?
5. Why can't `NULL` be compared using `=`?
6. What is the difference between `IS NULL` and `IS NOT NULL`?
7. Explain the `%` and `_` wildcards with examples.
8. What is operator precedence in MySQL?
9. Why should parentheses be used in complex conditions?
10. What is the difference between `AND` and `OR`?

---

# Key Takeaways

- `WHERE` filters rows before the result set is returned.
- Comparison operators evaluate values.
- Logical operators combine conditions.
- `BETWEEN` is inclusive.
- `IN` simplifies multiple equality checks.
- `LIKE` is used for pattern matching.
- `NULL` must be checked using `IS NULL` or `IS NOT NULL`.
- Parentheses improve both correctness and readability.

---

# What's Next?

In the next lesson, you'll learn the **ORDER BY Clause**, which is used to sort query results in ascending or descending order based on one or more columns.

---

