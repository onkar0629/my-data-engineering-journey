# Day 07 - ORDER BY Clause

## Introduction

When you retrieve data from a table using the `SELECT` statement, MySQL returns the rows in an **unspecified order** unless you explicitly ask it to sort them.

The **ORDER BY** clause is used to arrange the result set in a specific order based on one or more columns.

Sorting data makes reports easier to read and helps users quickly find the information they need.

For example, you can:

- Display employees with the highest salary first.
- List employees alphabetically by name.
- Show the newest employees before the oldest ones.
- Sort employees department-wise.

The `ORDER BY` clause is one of the most frequently used clauses in SQL.

---

## Learning Objectives

By the end of this lesson, you will be able to:

- Understand the purpose of the `ORDER BY` clause.
- Sort records in ascending order.
- Sort records in descending order.
- Sort data using multiple columns.
- Understand the default sorting order.
- Use column names and column positions in `ORDER BY`.
- Handle `NULL` values while sorting.
- Apply `ORDER BY` with other SQL clauses.

---

## Table of Contents

1. What is the ORDER BY Clause?
2. Ascending Order (`ASC`)
3. Descending Order (`DESC`)
4. Default Sorting Order
5. Sorting by Multiple Columns
6. Sorting Using Column Position
7. ORDER BY with Expressions
8. ORDER BY with `LIMIT`
9. Sorting and `NULL` Values
10. ORDER BY Summary

---

# What is the ORDER BY Clause?

## What is it?

The **ORDER BY** clause is used to **sort the rows returned by a query**.

Instead of displaying data in an unspecified order, you can arrange the results based on one or more columns.

The sorting can be:

- Alphabetical
- Numerical
- Chronological (Dates)
- Ascending
- Descending

---

## Why do we need it?

Imagine an HR manager wants answers to questions like:

- Who is the highest-paid employee?
- Which employees joined most recently?
- Can you display all employees alphabetically?
- Show employees department-wise.

Without the `ORDER BY` clause, the results may appear in any order.

The `ORDER BY` clause makes the output organized and meaningful.

---

## Characteristics

- Sorts the result set.
- Can sort one or multiple columns.
- Supports ascending and descending order.
- Works with numbers, text, and dates.
- Usually written as the last clause in a `SELECT` query (before `LIMIT` in logical writing, though `LIMIT` appears after `ORDER BY` in syntax).

---

## Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name;
```

---

## Examples

### Example 1

Display all employees sorted by employee name.

```sql
SELECT *
FROM employees
ORDER BY employee_name;
```

### Explanation

The employee names are arranged in alphabetical order from **A to Z**.

---

### Example 2

Display all employees sorted by salary.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary;
```

### Explanation

Employees are arranged from the lowest salary to the highest salary because MySQL sorts in ascending order by default.

---

### Example 3

Display employees sorted by joining date.

```sql
SELECT employee_name,
       joining_date
FROM employees
ORDER BY joining_date;
```

### Explanation

Employees are displayed from the earliest joining date to the latest joining date.

---

## Memory Tip

> 🧠 **ORDER BY = Arrange the Result**

```
Unsorted Data

↓

ORDER BY

↓

Sorted Data
```

Think:

```
ORDER BY

↓

Sort the Output

↓

Easy to Read
```

---

# Ascending Order (`ASC`)

## What is it?

The **ASC** keyword is used to sort data in **ascending order**.

Ascending order means:

- Numbers → Smallest to Largest
- Text → A to Z
- Dates → Oldest to Newest

`ASC` stands for **Ascending**.

---

## Why do we need it?

Suppose an HR manager wants to:

- Display employees alphabetically.
- Find employees with the lowest salary first.
- View employees in the order they joined the company.

The `ASC` keyword helps organize data in a natural increasing order.

---

## Characteristics

- Sorts data from lowest to highest.
- Alphabetically sorts text from A to Z.
- Chronologically sorts dates from oldest to newest.
- Can be used with one or multiple columns.
- Is the default sorting order in MySQL.

---

## Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name ASC;
```

---

## Examples

### Example 1

Display employees in alphabetical order.

```sql
SELECT employee_name
FROM employees
ORDER BY employee_name ASC;
```

### Explanation

Employee names are sorted alphabetically from **A** to **Z**.

---

### Example 2

Display employees from the lowest salary to the highest salary.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary ASC;
```

### Explanation

Employees earning the smallest salary appear first, while the highest-paid employees appear last.

---

### Example 3

Display employees based on their joining date.

```sql
SELECT employee_name,
       joining_date
FROM employees
ORDER BY joining_date ASC;
```

### Explanation

Employees are displayed from the earliest joining date to the most recent joining date.

---

## Memory Tip

> 🧠 **ASC = Small to Big**

```
Numbers

10

20

30

40

↓

Ascending
```

```
A

↓

B

↓

C

↓

D
```

Remember:

- Numbers → Smallest to Largest
- Text → A to Z
- Dates → Oldest to Newest

---

# Descending Order (`DESC`)

## What is it?

The **DESC** keyword is used to sort data in **descending order**.

Descending order means:

- Numbers → Largest to Smallest
- Text → Z to A
- Dates → Newest to Oldest

`DESC` stands for **Descending**.

---

## Why do we need it?

Suppose an HR manager wants to:

- Find the highest-paid employees first.
- Display the newest employees.
- View employee names in reverse alphabetical order.

The `DESC` keyword makes these types of reports easy to generate.

---

## Characteristics

- Sorts data from highest to lowest.
- Sorts text from Z to A.
- Sorts dates from newest to oldest.
- Can be used with one or multiple columns.
- Must be written explicitly because MySQL defaults to ascending order.

---

## Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name DESC;
```

---

## Examples

### Example 1

Display employees from the highest salary to the lowest salary.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary DESC;
```

### Explanation

Employees with the highest salaries appear first.

---

### Example 2

Display employees in reverse alphabetical order.

```sql
SELECT employee_name
FROM employees
ORDER BY employee_name DESC;
```

### Explanation

Employee names are sorted from **Z** to **A**.

---

### Example 3

Display employees from the newest joining date to the oldest.

```sql
SELECT employee_name,
       joining_date
FROM employees
ORDER BY joining_date DESC;
```

### Explanation

Recently joined employees appear first, followed by employees who joined earlier.

---

## Memory Tip

> 🧠 **DESC = Big to Small**

```
Numbers

40

30

20

10

↓

Descending
```

```
Z

↓

Y

↓

X

↓

W
```

Remember:

- Numbers → Largest to Smallest
- Text → Z to A
- Dates → Newest to Oldest

---

# ASC vs DESC

| Feature | ASC | DESC |
|---------|-----|------|
| Full Form | Ascending | Descending |
| Numbers | Smallest → Largest | Largest → Smallest |
| Text | A → Z | Z → A |
| Dates | Oldest → Newest | Newest → Oldest |
| Default in MySQL | ✅ Yes | ❌ No |

---

## Memory Tip

> 🧠 **Easy Way to Remember**

```
ASC

↓

A to Z

↓

Small to Big

----------------------

DESC

↓

Z to A

↓

Big to Small
```

Think:

- **ASC** → Increasing order.
- **DESC** → Decreasing order.

---

# Default Sorting Order

## What is it?

In MySQL, if you use the `ORDER BY` clause **without specifying** `ASC` or `DESC`, MySQL automatically sorts the data in **ascending order**.

This means:

- Numbers → Smallest to Largest
- Text → A to Z
- Dates → Oldest to Newest

Therefore, writing:

```sql
ORDER BY salary;
```

is exactly the same as writing:

```sql
ORDER BY salary ASC;
```

---

## Why do we need to know this?

Many SQL queries omit the `ASC` keyword because ascending order is the default behavior.

Understanding the default sorting order helps you:

- Read existing SQL queries.
- Write shorter queries.
- Understand why data is sorted in a particular way.

---

## Characteristics

- `ASC` is the default sorting order.
- No need to explicitly write `ASC`.
- Works with numbers, text, and dates.
- `DESC` must always be written explicitly.

---

## Syntax

### Default Sorting

```sql
SELECT column_name
FROM table_name
ORDER BY column_name;
```

### Explicit Ascending Sorting

```sql
SELECT column_name
FROM table_name
ORDER BY column_name ASC;
```

Both queries produce the **same result**.

---

## Examples

### Example 1

Display employees sorted by salary.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary;
```

### Explanation

Since no sorting order is specified, MySQL automatically sorts salaries from the lowest to the highest.

---

### Example 2

Display employees alphabetically.

```sql
SELECT employee_name
FROM employees
ORDER BY employee_name;
```

### Explanation

Employee names are sorted alphabetically from **A** to **Z** because ascending order is the default.

---

### Example 3

Display employees by joining date.

```sql
SELECT employee_name,
       joining_date
FROM employees
ORDER BY joining_date;
```

### Explanation

Employees are displayed from the oldest joining date to the newest joining date.

---

## Is There Any Difference?

Consider these two queries.

### Query 1

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary;
```

### Query 2

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary ASC;
```

### Result

Both queries return **exactly the same output**.

The only difference is that Query 2 explicitly mentions the sorting order.

---

## When Should You Write `ASC`?

Although `ASC` is optional, many developers still write it because:

- It improves readability.
- It makes the query self-explanatory.
- It keeps the coding style consistent.
- It clearly distinguishes between ascending and descending sorting.

For beginners, writing `ASC` explicitly is a good habit.

---

## Memory Tip

> 🧠 **No Keyword = ASC**

```
ORDER BY salary

=

ORDER BY salary ASC
```

Think:

```
ORDER BY

↓

No ASC?

↓

MySQL Uses ASC Automatically
```

Remember:

- `ASC` → Optional
- `DESC` → Mandatory if descending order is required

---

# Default Sorting Summary

| Query | Result |
|--------|--------|
| `ORDER BY salary` | Ascending order |
| `ORDER BY salary ASC` | Ascending order |
| `ORDER BY salary DESC` | Descending order |

---

## Memory Tip

> 🧠 **Remember This Rule**

```
Nothing Written

↓

ASC

----------------

DESC Written

↓

DESC
```

Always remember:

- No keyword → Ascending order.
- `ASC` → Ascending order.
- `DESC` → Descending order.

---

# Sorting by Multiple Columns

## What is it?

The **ORDER BY** clause can sort data using **more than one column**.

When multiple columns are specified, MySQL sorts the data **one column at a time**.

- It first sorts using the first column.
- If two or more rows have the same value in the first column, MySQL uses the second column.
- If they are still the same, it uses the third column, and so on.

This is known as **multi-column sorting**.

---

## Why do we need it?

Suppose an HR manager wants to:

- Group employees department-wise and then sort them by salary.
- Display employees city-wise and then alphabetically by name.
- Sort employees by department and then by joining date.

Sorting by only one column may not produce the desired result.

Using multiple columns gives a more organized and meaningful output.

---

## Characteristics

- Sorts data using two or more columns.
- Columns are evaluated from left to right.
- Each column can have its own sorting order.
- Improves readability of reports.
- Frequently used in real-world SQL queries.

---

## Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column1, column2;
```

---

## Syntax with Different Sorting Orders

```sql
SELECT column_name
FROM table_name
ORDER BY column1 ASC,
         column2 DESC;
```

Each column can have its own sorting direction.

---

## How Does MySQL Sort?

Suppose we write:

```sql
ORDER BY department,
         salary;
```

MySQL performs the following steps:

```
Step 1

Sort by Department

↓

Step 2

Within Each Department

↓

Sort by Salary
```

---

## Examples

### Example 1

Display employees sorted by department and then by employee name.

```sql
SELECT employee_name,
       department
FROM employees
ORDER BY department,
         employee_name;
```

### Explanation

MySQL first groups employees by department.

Within each department, employees are arranged alphabetically by their names.

---

### Example 2

Display employees sorted by department and salary.

```sql
SELECT employee_name,
       department,
       salary
FROM employees
ORDER BY department,
         salary DESC;
```

### Explanation

Employees are first grouped by department.

Within each department, employees are displayed from the highest salary to the lowest salary.

---

### Example 3

Display employees sorted by city and joining date.

```sql
SELECT employee_name,
       city,
       joining_date
FROM employees
ORDER BY city ASC,
         joining_date ASC;
```

### Explanation

Employees are first grouped by city.

Within each city, employees are arranged from the earliest joining date to the latest.

---

### Example 4

Display employees sorted by designation and employee name.

```sql
SELECT employee_name,
       designation
FROM employees
ORDER BY designation,
         employee_name;
```

### Explanation

Employees having the same designation are grouped together.

Within each designation, employee names are sorted alphabetically.

---

### Example 5

Display employees sorted by salary in descending order and employee name in ascending order.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary DESC,
         employee_name ASC;
```

### Explanation

Employees are first sorted from the highest salary to the lowest salary.

If two employees have the same salary, they are sorted alphabetically by their names.

---

## Different Sorting Orders

Each column can use a different sorting direction.

Example:

```sql
SELECT employee_name,
       department,
       salary
FROM employees
ORDER BY department ASC,
         salary DESC;
```

This means:

- Department → A to Z
- Salary → Highest to Lowest (within each department)

---

## Memory Tip

> 🧠 **Multiple Columns Are Processed Left to Right**

```
ORDER BY

Department,

Salary

↓

Department First

↓

Salary Second
```

Remember:

```
ORDER BY

Column 1,

Column 2,

Column 3
```

MySQL sorts:

```
Column 1

↓

Column 2

↓

Column 3
```

---

# Multiple Column Sorting Summary

| Query | Sorting Order |
|--------|---------------|
| `ORDER BY department, employee_name` | Department → Employee Name |
| `ORDER BY department, salary DESC` | Department → Salary (High to Low) |
| `ORDER BY city, joining_date` | City → Joining Date |
| `ORDER BY salary DESC, employee_name` | Salary → Employee Name |

---

## Memory Tip

> 🧠 **Read ORDER BY from Left to Right**

```
ORDER BY

Column 1

↓

Column 2

↓

Column 3
```

Always remember:

- The **first column** has the highest priority.
- The **second column** is used only when values in the first column are the same.
- The **third column** is used only when the first two columns have identical values.

---

# Sorting Using Column Position

## What is it?

In MySQL, you can sort the result set using the **position (index)** of a column in the `SELECT` statement instead of its name.

The column position starts from **1**.

For example:

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY 2;
```

Here:

- Column 1 → `employee_name`
- Column 2 → `salary`

So, `ORDER BY 2` means:

```sql
ORDER BY salary;
```

---

## Why do we need it?

Sometimes queries contain:

- Long column names.
- Calculated columns.
- Multiple selected columns.

Using the column position can make the query shorter.

However, in professional projects, using **column names** is generally preferred because it improves readability.

---

## Characteristics

- Uses the column number from the `SELECT` list.
- Column numbering starts at **1**.
- Can be used with `ASC` or `DESC`.
- Works with multiple column positions.
- Generally not recommended for production code because column positions can change.

---

## Syntax

```sql
SELECT column1,
       column2,
       column3
FROM table_name
ORDER BY column_position;
```

---

## Syntax with DESC

```sql
SELECT column1,
       column2,
       column3
FROM table_name
ORDER BY column_position DESC;
```

---

## How Column Position Works

Suppose the query is:

```sql
SELECT employee_name,
       department,
       salary
FROM employees;
```

The column positions are:

| Position | Column |
|----------|---------|
| 1 | employee_name |
| 2 | department |
| 3 | salary |

Therefore:

```sql
ORDER BY 1;
```

means:

```sql
ORDER BY employee_name;
```

Similarly,

```sql
ORDER BY 3 DESC;
```

means:

```sql
ORDER BY salary DESC;
```

---

## Examples

### Example 1

Display employees sorted by the second selected column.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY 2;
```

### Explanation

The second selected column is `salary`.

Therefore, employees are sorted by salary in ascending order.

---

### Example 2

Display employees sorted by the first selected column.

```sql
SELECT employee_name,
       department,
       salary
FROM employees
ORDER BY 1;
```

### Explanation

The first selected column is `employee_name`.

Employees are sorted alphabetically.

---

### Example 3

Display employees sorted by salary in descending order using the column position.

```sql
SELECT employee_name,
       department,
       salary
FROM employees
ORDER BY 3 DESC;
```

### Explanation

The third selected column is `salary`.

Employees are sorted from the highest salary to the lowest salary.

---

### Example 4

Sort using multiple column positions.

```sql
SELECT employee_name,
       department,
       salary
FROM employees
ORDER BY 2 ASC,
         3 DESC;
```

### Explanation

MySQL first sorts employees by the second column (`department`).

Within each department, employees are sorted by the third column (`salary`) in descending order.

---

## Why Column Positions Are Not Recommended

Although column positions work correctly, they can make queries difficult to understand.

Consider this query:

```sql
SELECT employee_name,
       department,
       salary
FROM employees
ORDER BY 3;
```

A new developer must count the columns to determine what `3` represents.

Now compare it with:

```sql
SELECT employee_name,
       department,
       salary
FROM employees
ORDER BY salary;
```

The second query is much easier to read.

---

## Best Practice

✅ Recommended

```sql
SELECT employee_name,
       department,
       salary
FROM employees
ORDER BY salary;
```

---

❌ Less Readable

```sql
SELECT employee_name,
       department,
       salary
FROM employees
ORDER BY 3;
```

Using column names makes SQL queries easier to maintain, especially when the `SELECT` list changes.

---

## Memory Tip

> 🧠 **Column Position = Position in the SELECT List**

```
SELECT

1 → employee_name

2 → department

3 → salary

↓

ORDER BY 3

↓

Sort by Salary
```

Remember:

```
1

↓

First Selected Column

--------------------

2

↓

Second Selected Column

--------------------

3

↓

Third Selected Column
```

---

# Column Position Summary

| Query | Meaning |
|--------|---------|
| `ORDER BY 1` | Sort by the first selected column |
| `ORDER BY 2` | Sort by the second selected column |
| `ORDER BY 3 DESC` | Sort by the third selected column in descending order |
| `ORDER BY 2, 3 DESC` | Sort by the second column, then the third column |

---

## Memory Tip

> 🧠 **Count the Columns in the SELECT Statement**

```
SELECT

Column 1

↓

Column 2

↓

Column 3

↓

ORDER BY 2

↓

Sort Using Column 2
```

Always remember:

- Column positions refer to the **order of columns in the `SELECT` statement**, **not** the order of columns in the table.
- Prefer **column names** over column positions for better readability and maintainability.

---

# ORDER BY with Expressions

## What is it?

The `ORDER BY` clause can sort data not only by table columns but also by **expressions**.

An expression is any calculation or function that produces a value.

Examples include:

- Arithmetic calculations
- Mathematical expressions
- String functions
- Date functions
- Aliases created using the `AS` keyword

Instead of sorting by an existing column, MySQL sorts using the result of the expression.

---

## Why do we need it?

Suppose a company wants to answer questions like:

- Which employees receive the highest annual salary?
- Which employees receive the highest bonus?
- Sort employees based on the length of their names.
- Sort employees based on calculated tax amounts.

These values may not exist as columns in the table.

Using expressions allows MySQL to calculate the value first and then sort the result.

---

## Characteristics

- Sorts data using calculated values.
- Supports arithmetic operations.
- Works with SQL functions.
- Can use aliases created with `AS`.
- Useful for reports and data analysis.

---

## Syntax

```sql
SELECT column_name,
       expression
FROM table_name
ORDER BY expression;
```

---

## Syntax Using an Alias

```sql
SELECT column_name,
       expression AS alias_name
FROM table_name
ORDER BY alias_name;
```

---

## Examples

### Example 1

Display employees sorted by their annual salary.

```sql
SELECT employee_name,
       salary,
       salary * 12 AS annual_salary
FROM employees
ORDER BY annual_salary DESC;
```

### Explanation

MySQL first calculates:

```
Monthly Salary × 12
```

It then sorts employees from the highest annual salary to the lowest.

---

### Example 2

Display employees sorted by the length of their names.

```sql
SELECT employee_name,
       LENGTH(employee_name) AS name_length
FROM employees
ORDER BY name_length;
```

### Explanation

The `LENGTH()` function calculates the number of characters in each employee's name.

Employees with shorter names appear first.

---

### Example 3

Display employees sorted by a 10% bonus amount.

```sql
SELECT employee_name,
       salary,
       salary * 0.10 AS bonus
FROM employees
ORDER BY bonus DESC;
```

### Explanation

MySQL calculates 10% of each employee's salary.

Employees receiving the highest bonus are displayed first.

---

### Example 4

Display employees sorted by the year they joined.

```sql
SELECT employee_name,
       joining_date,
       YEAR(joining_date) AS joining_year
FROM employees
ORDER BY joining_year;
```

### Explanation

The `YEAR()` function extracts the year from the joining date.

Employees are sorted from the earliest joining year to the latest.

---

### Example 5

Display employees sorted by the first letter of their names.

```sql
SELECT employee_name,
       LEFT(employee_name, 1) AS first_letter
FROM employees
ORDER BY first_letter;
```

### Explanation

The `LEFT()` function extracts the first character of each employee's name.

Employees are then sorted alphabetically based on that character.

---

# Using Aliases in ORDER BY

## What is it?

Instead of writing a long expression again in the `ORDER BY` clause, you can use the alias created in the `SELECT` statement.

This makes the query easier to read.

---

## Example

Without an alias:

```sql
SELECT employee_name,
       salary * 12
FROM employees
ORDER BY salary * 12 DESC;
```

With an alias:

```sql
SELECT employee_name,
       salary * 12 AS annual_salary
FROM employees
ORDER BY annual_salary DESC;
```

Both queries produce the same result.

However, the second query is much easier to understand.

---

## Why Use Aliases?

Aliases help you:

- Reduce repetition.
- Improve readability.
- Simplify long expressions.
- Write cleaner SQL queries.

---

## Memory Tip

> 🧠 **Calculate First, Sort Later**

```
Expression

↓

Calculate Value

↓

ORDER BY

↓

Sort Result
```

Think:

```
salary * 12

↓

Annual Salary

↓

Sort
```

---

# Expression Examples Summary

| Expression | Purpose |
|------------|---------|
| `salary * 12` | Annual salary |
| `salary * 0.10` | Bonus amount |
| `LENGTH(employee_name)` | Name length |
| `YEAR(joining_date)` | Joining year |
| `LEFT(employee_name, 1)` | First letter of the name |

---

## Memory Tip

> 🧠 **ORDER BY Can Sort More Than Columns**

```
ORDER BY

↓

Column

OR

↓

Expression

OR

↓

Alias
```

Always remember:

- You can sort using **columns**.
- You can sort using **expressions**.
- You can sort using **aliases** for better readability.

---

# ORDER BY with LIMIT

## What is it?

The `ORDER BY` clause is often used together with the **LIMIT** clause.

- `ORDER BY` sorts the result set.
- `LIMIT` restricts the number of rows returned.

Using both clauses together allows you to retrieve:

- Top 5 highest-paid employees.
- Top 10 newest employees.
- Lowest 3 salaries.
- First 20 records after sorting.

This combination is one of the most commonly used patterns in SQL.

---

## Why do we need it?

Suppose an HR manager wants to answer questions like:

- Who is the highest-paid employee?
- Show the top 3 highest salaries.
- Display the 5 newest employees.
- Find the 2 employees with the lowest salaries.

Without the `LIMIT` clause, MySQL would return every matching row.

The `LIMIT` clause helps retrieve only the required number of rows.

---

## Characteristics

- Limits the number of rows returned.
- Usually used together with `ORDER BY`.
- Can retrieve the top or bottom records.
- Improves query performance by reducing the result set.
- Frequently used in dashboards and reports.

---

## Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name
LIMIT number_of_rows;
```

---

## How It Works

```
Table

↓

ORDER BY

↓

Sorted Result

↓

LIMIT

↓

Required Rows
```

---

## Examples

### Example 1

Display the highest-paid employee.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary DESC
LIMIT 1;
```

### Explanation

MySQL first sorts salaries from highest to lowest.

After sorting, `LIMIT 1` returns only the first row.

---

### Example 2

Display the three employees with the highest salaries.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary DESC
LIMIT 3;
```

### Explanation

Employees are sorted in descending order of salary.

The first three rows are returned.

---

### Example 3

Display the five employees with the lowest salaries.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary ASC
LIMIT 5;
```

### Explanation

Employees are sorted from the lowest salary to the highest.

The first five rows are displayed.

---

### Example 4

Display the two most recently joined employees.

```sql
SELECT employee_name,
       joining_date
FROM employees
ORDER BY joining_date DESC
LIMIT 2;
```

### Explanation

Employees are sorted from the newest joining date to the oldest.

Only the first two employees are returned.

---

### Example 5

Display the first four employees alphabetically.

```sql
SELECT employee_name
FROM employees
ORDER BY employee_name ASC
LIMIT 4;
```

### Explanation

Employees are sorted alphabetically.

The first four names are displayed.

---

# LIMIT with OFFSET

## What is it?

Sometimes you do not want the first few rows.

Instead, you want to **skip some rows** and then retrieve the next set of rows.

This is done using **OFFSET**.

---

## Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name
LIMIT number_of_rows OFFSET number_of_rows_to_skip;
```

---

## Alternative Syntax

MySQL also supports:

```sql
LIMIT offset,
      number_of_rows;
```

Both syntaxes produce the same result.

---

## Examples

### Example 1

Skip the first three employees and display the next four employees sorted by salary.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary DESC
LIMIT 4 OFFSET 3;
```

### Explanation

MySQL performs the following steps:

1. Sorts employees by salary.
2. Skips the first three rows.
3. Displays the next four rows.

---

### Example 2

Display three employees after skipping the first two alphabetically.

```sql
SELECT employee_name
FROM employees
ORDER BY employee_name
LIMIT 3 OFFSET 2;
```

### Explanation

Employees are sorted alphabetically.

The first two names are skipped.

The next three names are returned.

---

### Example 3

Using MySQL's alternative syntax.

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary DESC
LIMIT 2, 5;
```

### Explanation

This query skips the first two rows.

Then it displays the next five rows.

It is equivalent to:

```sql
LIMIT 5 OFFSET 2;
```

---

# Execution Order

When `ORDER BY` and `LIMIT` are used together, MySQL processes them in this order:

```
SELECT

↓

FROM

↓

WHERE

↓

ORDER BY

↓

LIMIT

↓

Final Result
```

The data is always sorted **before** the limit is applied.

---

## Memory Tip

> 🧠 **Sort First, Limit Later**

```
ORDER BY

↓

Sort Records

↓

LIMIT

↓

Take Required Rows
```

Think:

```
Highest Salary

↓

ORDER BY DESC

↓

LIMIT 1
```

---

# ORDER BY with LIMIT Summary

| Query | Result |
|--------|--------|
| `ORDER BY salary DESC LIMIT 1` | Highest salary |
| `ORDER BY salary ASC LIMIT 1` | Lowest salary |
| `ORDER BY joining_date DESC LIMIT 5` | Five newest employees |
| `ORDER BY employee_name LIMIT 10` | First ten employees alphabetically |
| `LIMIT 5 OFFSET 10` | Skip 10 rows and display the next 5 |

---

## Memory Tip

> 🧠 **Remember the Workflow**

```
ORDER BY

↓

Arrange Data

↓

LIMIT

↓

Keep Required Rows
```

Always remember:

- `ORDER BY` sorts the data.
- `LIMIT` restricts the number of rows returned.
- `OFFSET` skips rows before returning results.
- MySQL always **sorts first** and **limits later**.

---

# Sorting and `NULL` Values

## What is it?

Sometimes a column contains **NULL** values.

When you sort data using the `ORDER BY` clause, MySQL also sorts rows containing `NULL`.

A `NULL` value represents:

- Missing data
- Unknown data
- Unavailable data

Understanding where `NULL` values appear in the sorted result helps you predict the query output.

---

## Why do we need it?

Suppose an HR database contains:

- Employees without a manager.
- Employees without an email address.
- Employees whose bonus has not yet been assigned.

When these columns are sorted, you should know where the `NULL` values will appear.

---

## Characteristics

- `NULL` represents an unknown or missing value.
- MySQL includes `NULL` values during sorting.
- The position of `NULL` depends on the sorting order.
- You can control the placement of `NULL` values using expressions.

---

## Default Behavior in MySQL

When sorting in **ascending order (`ASC`)**:

- `NULL` values appear **first**.

When sorting in **descending order (`DESC`)**:

- `NULL` values appear **last**.

---

## Example Dataset

Suppose the `manager` column contains the following values.

| Employee | Manager |
|----------|----------|
| Amit | Raj |
| Priya | NULL |
| Rahul | Karan |
| Sneha | NULL |
| Rohit | Mohit |

---

# Sorting in Ascending Order

## Example 1

Display employees sorted by manager.

```sql
SELECT employee_name,
       manager
FROM employees
ORDER BY manager ASC;
```

### Explanation

MySQL places all `NULL` values first.

After that, the remaining manager names are sorted alphabetically.

Example:

```text
NULL
NULL
Karan
Mohit
Raj
```

---

# Sorting in Descending Order

## Example 2

Display employees sorted by manager in descending order.

```sql
SELECT employee_name,
       manager
FROM employees
ORDER BY manager DESC;
```

### Explanation

Manager names are first sorted from **Z to A**.

The `NULL` values appear at the end.

Example:

```text
Raj
Mohit
Karan
NULL
NULL
```

---

# Moving NULL Values to the End

Sometimes you may want `NULL` values to appear **after** all non-NULL values, even while sorting in ascending order.

You can achieve this using an expression.

## Example 3

```sql
SELECT employee_name,
       manager
FROM employees
ORDER BY manager IS NULL,
         manager ASC;
```

### Explanation

MySQL evaluates:

```sql
manager IS NULL
```

Result:

- Non-NULL → `0`
- NULL → `1`

Then it sorts by:

1. `manager IS NULL`
2. `manager`

Therefore:

- Employees with managers appear first.
- Employees with `NULL` managers appear last.

---

# Moving NULL Values to the Beginning

Similarly, you can place `NULL` values first while sorting in descending order.

## Example 4

```sql
SELECT employee_name,
       manager
FROM employees
ORDER BY manager IS NOT NULL,
         manager DESC;
```

### Explanation

MySQL evaluates:

```sql
manager IS NOT NULL
```

Result:

- NULL → `0`
- Non-NULL → `1`

Rows with `NULL` values are displayed first.

The remaining rows are sorted in descending order.

---

# Comparison

| Query | NULL Position |
|--------|---------------|
| `ORDER BY column ASC` | First |
| `ORDER BY column DESC` | Last |
| `ORDER BY column IS NULL, column` | Last |
| `ORDER BY column IS NOT NULL, column DESC` | First |

---

# Real-World Example

Suppose the HR team wants to display employees who already have a manager assigned.

Instead of showing employees with missing managers first, they can write:

```sql
SELECT employee_name,
       manager
FROM employees
ORDER BY manager IS NULL,
         manager;
```

This makes the report easier to read because employees with assigned managers appear before those with missing manager information.

---

## Memory Tip

> 🧠 **Remember MySQL's Default Behavior**

```
ASC

↓

NULL First

--------------------

DESC

↓

NULL Last
```

Think:

```
Ascending

↓

NULL

↓

A

↓

B

↓

C

--------------------

Descending

↓

Z

↓

Y

↓

X

↓

NULL
```

---

# Sorting and NULL Summary

| Sorting Order | NULL Position |
|---------------|---------------|
| `ASC` | First |
| `DESC` | Last |
| `ORDER BY column IS NULL, column` | Last |
| `ORDER BY column IS NOT NULL, column DESC` | First |

---

## Memory Tip

> 🧠 **Easy Way to Remember**

```
ASC

↓

NULL First

--------------------

DESC

↓

NULL Last
```

Always remember:

- `NULL` is **not** zero.
- `NULL` is **not** an empty string.
- MySQL sorts `NULL` values automatically.
- Expressions such as `IS NULL` and `IS NOT NULL` can be used to control where `NULL` values appear in the sorted result.

---

# ORDER BY Summary

## ORDER BY Workflow

```
Table Data

↓

SELECT

↓

FROM

↓

WHERE (Optional)

↓

ORDER BY

↓

ASC / DESC

↓

LIMIT (Optional)

↓

Final Result
```

---

## ORDER BY Syntax Summary

### Basic Sorting

```sql
SELECT column_name
FROM table_name
ORDER BY column_name;
```

---

### Ascending Order

```sql
SELECT column_name
FROM table_name
ORDER BY column_name ASC;
```

---

### Descending Order

```sql
SELECT column_name
FROM table_name
ORDER BY column_name DESC;
```

---

### Multiple Columns

```sql
SELECT column_name
FROM table_name
ORDER BY column1 ASC,
         column2 DESC;
```

---

### Using Column Position

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY 2 DESC;
```

---

### Using an Expression

```sql
SELECT employee_name,
       salary * 12 AS annual_salary
FROM employees
ORDER BY annual_salary DESC;
```

---

### Using LIMIT

```sql
SELECT employee_name,
       salary
FROM employees
ORDER BY salary DESC
LIMIT 5;
```

---

## ORDER BY Cheat Sheet

| Requirement | Query |
|-------------|-------|
| Sort alphabetically | `ORDER BY employee_name` |
| Highest salary first | `ORDER BY salary DESC` |
| Lowest salary first | `ORDER BY salary ASC` |
| Newest employees | `ORDER BY joining_date DESC` |
| Oldest employees | `ORDER BY joining_date ASC` |
| Department then salary | `ORDER BY department, salary DESC` |
| Top 5 salaries | `ORDER BY salary DESC LIMIT 5` |
| Lowest 3 salaries | `ORDER BY salary ASC LIMIT 3` |
| Sort using expression | `ORDER BY salary * 12 DESC` |
| Sort using alias | `ORDER BY annual_salary DESC` |

---

## ORDER BY vs WHERE

| WHERE | ORDER BY |
|--------|----------|
| Filters rows | Sorts rows |
| Decides **which** records to display | Decides **how** records are displayed |
| Uses conditions | Uses sorting |
| Executed before sorting | Executed after filtering |

### Example

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary > 60000
ORDER BY salary DESC;
```

### Explanation

MySQL performs the following steps:

1. Filters employees whose salary is greater than ₹60,000.
2. Sorts the remaining employees from the highest salary to the lowest.

---

## Execution Order

Although we write the query like this:

```sql
SELECT employee_name,
       salary
FROM employees
WHERE salary > 60000
ORDER BY salary DESC
LIMIT 5;
```

MySQL processes it in the following order:

```
FROM

↓

WHERE

↓

SELECT

↓

ORDER BY

↓

LIMIT

↓

Final Result
```

---

# Summary

- The `ORDER BY` clause sorts query results.
- `ASC` sorts data in ascending order.
- `DESC` sorts data in descending order.
- Ascending order is the default in MySQL.
- Multiple columns can be used for sorting.
- Each column can have its own sorting direction.
- Sorting can be done using column names, column positions, expressions, or aliases.
- `LIMIT` is commonly used with `ORDER BY` to retrieve top or bottom records.
- MySQL sorts `NULL` values automatically.
- `ORDER BY` is executed after the `WHERE` clause.

---

# Best Practices

- Prefer column names instead of column positions.
- Use meaningful aliases for calculated columns.
- Write `ASC` explicitly when learning SQL to improve readability.
- Use multiple-column sorting for well-organized reports.
- Use `LIMIT` with `ORDER BY` when only a few records are required.
- Add parentheses to complex expressions when needed for clarity.
- Format long `ORDER BY` clauses with proper indentation.

---

# Common Mistakes

- Forgetting that ascending order is the default.
- Expecting `LIMIT` to sort data automatically.
- Using column positions in production queries, making them harder to read.
- Assuming `ORDER BY` filters rows instead of sorting them.
- Forgetting that `DESC` must be written explicitly.
- Confusing the execution order of `WHERE` and `ORDER BY`.

---

# Interview Questions

1. What is the purpose of the `ORDER BY` clause?
2. What is the default sorting order in MySQL?
3. What is the difference between `ASC` and `DESC`?
4. How do you sort using multiple columns?
5. Can different columns have different sorting orders?
6. What is the difference between sorting by a column name and a column position?
7. Can `ORDER BY` sort using expressions or aliases?
8. Why is `ORDER BY` commonly used with `LIMIT`?
9. How are `NULL` values sorted in MySQL?
10. What is the execution order of `WHERE`, `ORDER BY`, and `LIMIT`?

---

# Key Takeaways

- `ORDER BY` organizes the result set.
- `ASC` sorts from lowest to highest (default).
- `DESC` sorts from highest to lowest.
- Multiple columns are processed from left to right.
- Column names are preferred over column positions.
- Expressions and aliases can also be used for sorting.
- `LIMIT` retrieves only the required number of sorted rows.
- Understanding the execution order helps you write correct SQL queries.

---

# What's Next?

In the next lesson, you'll learn the **LIMIT Clause** in detail, including:

- What is `LIMIT`?
- Retrieving the first *N* rows.
- Using `LIMIT` with `OFFSET`.
- Pagination using `LIMIT`.
- Practical examples and interview questions.

---

