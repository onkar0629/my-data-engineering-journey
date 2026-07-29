# Day 14 - Built-in Functions

# Introduction

Built-in Functions are predefined functions provided by MySQL to perform common operations on data. Instead of writing complex logic, you can use these functions to manipulate strings, perform mathematical calculations, work with dates and times, handle `NULL` values, convert data types, and summarize data efficiently.

Built-in Functions make SQL queries shorter, easier to read, and more powerful. They are extensively used in real-world applications for reporting, data analysis, and data transformation.

Whether you are building dashboards, generating reports, or cleaning data, Built-in Functions are an essential part of everyday SQL development.

---

# Learning Objectives

After completing this chapter, you will be able to:

- Understand what Built-in Functions are.
- Learn why Built-in Functions are important.
- Differentiate between various categories of functions.
- Use String Functions to manipulate text.
- Use Numeric Functions for mathematical calculations.
- Use Date and Time Functions to work with dates.
- Handle missing values using `NULL` Functions.
- Convert one data type into another using Conversion Functions.
- Apply Aggregate Functions for data analysis.
- Combine multiple functions in a single query.
- Write efficient and readable SQL queries using functions.

---

# Table of Contents

1. What are Built-in Functions?
2. Why do we need Built-in Functions?
3. Types of Built-in Functions
4. String Functions
5. Numeric Functions
6. Date and Time Functions
7. NULL Functions
8. Conversion Functions
9. Aggregate Functions (Overview)
10. Nested Functions
11. Function Execution Order
12. Summary
13. Best Practices
14. Common Mistakes
15. Interview Questions
16. Key Takeaways
17. What's Next

--------------------------------------------------

# What are Built-in Functions?

## What is it?

Built-in Functions are **predefined functions provided by MySQL** that perform specific operations on data.

Instead of writing complex logic manually, you simply call a function and provide the required input.

A function accepts one or more values (called **arguments**), processes them, and returns a result.

For example, you can use functions to:

- Convert text to uppercase.
- Find the length of a string.
- Round decimal numbers.
- Calculate the current date.
- Replace missing values.
- Count records.
- Calculate average salary.

These functions are already available in MySQL, so you do not need to create them yourself.

---

## Why do we need Built-in Functions?

Suppose a company wants to answer questions like:

- Convert all employee names to uppercase.
- Find the total number of employees.
- Calculate the average salary.
- Display today's date.
- Replace missing city names with "Not Available".
- Round employee salaries to the nearest thousand.

Without Built-in Functions, these tasks would require much more complex logic.

Built-in Functions make SQL queries:

- Simpler
- Faster to write
- Easier to maintain
- More readable
- More efficient

---

## Characteristics

- Predefined by MySQL.
- Accept one or more arguments.
- Return a single value or an aggregated result.
- Can work with text, numbers, dates, and `NULL` values.
- Can be used in `SELECT`, `WHERE`, `HAVING`, `ORDER BY`, `GROUP BY`, and many other SQL clauses.
- Can be combined with other functions.

---

## Syntax

```sql
FUNCTION_NAME(argument1, argument2, ...)
```

Examples:

```sql
UPPER(employee_name)
```

```sql
LENGTH(employee_name)
```

```sql
ROUND(salary)
```

```sql
CURDATE()
```

---

## Examples

### Example 1

Convert employee names to uppercase.

```sql
SELECT UPPER(employee_name)
FROM employees;
```

### Explanation

The `UPPER()` function converts every character in the employee name to uppercase.

---

### Example 2

Find the length of each employee name.

```sql
SELECT employee_name,
       LENGTH(employee_name) AS name_length
FROM employees;
```

### Explanation

The `LENGTH()` function returns the number of characters in each employee name.

---

### Example 3

Display today's date.

```sql
SELECT CURDATE();
```

### Explanation

The `CURDATE()` function returns the current system date.

---

## Memory Tip

> 🧠 **Think of a Built-in Function as a ready-made tool provided by MySQL.**

```
Input

↓

Built-in Function

↓

Processing

↓

Output
```

Think:

```
Data

↓

Function

↓

Result
```

--------------------------------------------------

# Why do we need Built-in Functions?

## What is it?

Built-in Functions help MySQL perform common tasks without requiring complex SQL statements.

Instead of manually calculating values or formatting data, you can simply call a function that performs the required operation.

For example, a function can:

- Convert text to uppercase.
- Find the length of a string.
- Round decimal values.
- Calculate averages.
- Display the current date.
- Replace `NULL` values.

Using functions makes SQL much more powerful and efficient.

---

## Why are Built-in Functions important?

Imagine an HR department wants answers to the following questions:

- How many employees work in the company?
- What is the average salary?
- Which employee has the longest name?
- What is today's date?
- How many years has each employee worked?
- Convert all department names to uppercase.

Without Built-in Functions, performing these operations would be difficult or even impossible using only basic SQL statements.

Built-in Functions allow MySQL to process data automatically and efficiently.

---

## Real-World Uses

Built-in Functions are used in almost every SQL project.

Examples include:

- Generating business reports.
- Cleaning inconsistent data.
- Formatting customer names.
- Calculating salaries and bonuses.
- Computing taxes and discounts.
- Finding sales totals.
- Working with dates and time.
- Handling missing values.
- Creating dashboards.
- Performing data analysis.

---

## Characteristics

- Predefined by MySQL.
- Easy to use.
- Save development time.
- Improve query readability.
- Perform calculations automatically.
- Work with text, numbers, dates, and `NULL` values.
- Can be combined with other SQL statements.
- Can be nested with other functions.

---

## Examples

### Example 1

Convert employee names to uppercase.

```sql
SELECT employee_name,
       UPPER(employee_name) AS upper_name
FROM employees;
```

### Explanation

The `UPPER()` function converts every employee name into uppercase letters.

---

### Example 2

Calculate the average salary of all employees.

```sql
SELECT AVG(salary) AS average_salary
FROM employees;
```

### Explanation

The `AVG()` function calculates the average salary of all employees in the table.

---

### Example 3

Display today's date.

```sql
SELECT CURDATE() AS today;
```

### Explanation

The `CURDATE()` function returns the current system date.

---

### Example 4

Find the number of employees.

```sql
SELECT COUNT(*) AS total_employees
FROM employees;
```

### Explanation

The `COUNT()` function counts the total number of rows in the `employees` table.

---

### Example 5

Replace missing city names with "Not Available".

```sql
SELECT employee_name,
       IFNULL(city, 'Not Available') AS city
FROM employees;
```

### Explanation

The `IFNULL()` function replaces every `NULL` city value with `"Not Available"`.

---

## Workflow

```
Data

↓

Built-in Function

↓

Processing

↓

Required Result
```

---

## Memory Tip

> 🧠 **Built-in Functions are ready-made tools provided by MySQL.**

```
Input Data

↓

Function

↓

Processing

↓

Output
```

Think:

```
No Function

↓

Manual Work

With Function

↓

Automatic Processing

↓

Accurate Result
```

--------------------------------------------------

# Types of Built-in Functions

## What are they?

MySQL provides different categories of Built-in Functions.

Each category is designed to perform a specific type of operation.

For example:

- Some functions work with text.
- Some perform mathematical calculations.
- Some work with dates and time.
- Some handle `NULL` values.
- Some convert one data type into another.
- Some summarize data.

Understanding these categories helps you quickly choose the correct function for a particular task.

---

## Why do we need different types of Functions?

Different business requirements need different kinds of processing.

For example:

- Convert employee names to uppercase.
- Calculate annual salaries.
- Find today's date.
- Replace missing city names.
- Convert a string into a date.
- Find the average salary of employees.

Since one function cannot perform all these tasks, MySQL provides different categories of Built-in Functions.

---

## Types of Built-in Functions

| Function Type | Purpose |
|--------------|---------|
| String Functions | Work with text values |
| Numeric Functions | Perform mathematical calculations |
| Date and Time Functions | Work with dates and times |
| NULL Functions | Handle `NULL` values |
| Conversion Functions | Convert one data type into another |
| Aggregate Functions | Summarize multiple rows into a single result |

---

# 1. String Functions

## What are they?

String Functions manipulate text values.

They are commonly used to:

- Convert text to uppercase or lowercase.
- Find the length of text.
- Remove unwanted spaces.
- Extract part of a string.
- Combine multiple strings.

### Common String Functions

| Function | Purpose |
|----------|---------|
| `UPPER()` | Converts text to uppercase |
| `LOWER()` | Converts text to lowercase |
| `LENGTH()` | Returns the length of a string |
| `TRIM()` | Removes leading and trailing spaces |
| `CONCAT()` | Combines multiple strings |
| `SUBSTRING()` | Extracts part of a string |

**Used for:**

- Formatting names
- Cleaning data
- Generating reports
- Creating usernames

---

# 2. Numeric Functions

## What are they?

Numeric Functions perform mathematical operations on numbers.

They are commonly used to:

- Round values.
- Calculate absolute values.
- Find powers.
- Calculate square roots.
- Generate random numbers.

### Common Numeric Functions

| Function | Purpose |
|----------|---------|
| `ROUND()` | Rounds a number |
| `CEIL()` | Rounds up |
| `FLOOR()` | Rounds down |
| `ABS()` | Returns absolute value |
| `MOD()` | Returns the remainder |
| `POWER()` | Calculates exponentiation |
| `SQRT()` | Calculates square root |

**Used for:**

- Salary calculations
- Tax calculations
- Financial reports
- Data analysis

---

# 3. Date and Time Functions

## What are they?

Date and Time Functions work with date and time values.

They are used to:

- Display the current date.
- Display the current time.
- Calculate date differences.
- Add or subtract dates.
- Extract year, month, or day.

### Common Date and Time Functions

| Function | Purpose |
|----------|---------|
| `CURDATE()` | Returns the current date |
| `CURTIME()` | Returns the current time |
| `NOW()` | Returns the current date and time |
| `YEAR()` | Extracts the year |
| `MONTH()` | Extracts the month |
| `DAY()` | Extracts the day |
| `DATEDIFF()` | Calculates the difference between two dates |

**Used for:**

- Attendance systems
- Employee experience
- Sales reports
- Subscription tracking

---

# 4. NULL Functions

## What are they?

NULL Functions handle missing or unknown values.

They prevent queries from returning unexpected results when `NULL` values are present.

### Common NULL Functions

| Function | Purpose |
|----------|---------|
| `IFNULL()` | Replaces `NULL` with another value |
| `NULLIF()` | Returns `NULL` if two values are equal |
| `COALESCE()` | Returns the first non-`NULL` value |

**Used for:**

- Data cleaning
- Report generation
- Handling missing information

---

# 5. Conversion Functions

## What are they?

Conversion Functions convert data from one data type to another.

They are useful when different data types need to work together.

### Common Conversion Functions

| Function | Purpose |
|----------|---------|
| `CAST()` | Converts a value to a specified data type |
| `CONVERT()` | Converts a value to another data type or character set |

**Used for:**

- Data migration
- Reporting
- Formatting output

---

# 6. Aggregate Functions

## What are they?

Aggregate Functions summarize data from multiple rows and return a single value.

Unlike most Built-in Functions, Aggregate Functions operate on a group of rows rather than one row at a time.

### Common Aggregate Functions

| Function | Purpose |
|----------|---------|
| `COUNT()` | Counts rows |
| `SUM()` | Calculates the total |
| `AVG()` | Calculates the average |
| `MIN()` | Finds the minimum value |
| `MAX()` | Finds the maximum value |

**Used for:**

- Business reports
- Dashboards
- Sales analysis
- Employee statistics

---

## Summary Table

| Function Type | Purpose | Examples |
|--------------|---------|----------|
| String | Manipulate text | `UPPER()`, `LOWER()`, `LENGTH()` |
| Numeric | Perform calculations | `ROUND()`, `ABS()`, `SQRT()` |
| Date and Time | Work with dates | `CURDATE()`, `NOW()`, `DATEDIFF()` |
| NULL | Handle missing values | `IFNULL()`, `COALESCE()` |
| Conversion | Convert data types | `CAST()`, `CONVERT()` |
| Aggregate | Summarize data | `COUNT()`, `SUM()`, `AVG()` |

---

## Real-World Example

Suppose an HR manager needs to:

| Requirement | Function Type |
|-------------|---------------|
| Convert employee names to uppercase | String |
| Round employee salaries | Numeric |
| Display today's date | Date and Time |
| Replace missing city names | NULL |
| Convert a string to a date | Conversion |
| Calculate the average salary | Aggregate |

Different business requirements require different categories of Built-in Functions.

---

## Workflow

```
Business Requirement

↓

Choose Function Type

↓

String

Numeric

Date & Time

NULL

Conversion

Aggregate

↓

Execute Function

↓

Required Result
```

---

## Memory Tip

> 🧠 **Remember the six major categories of MySQL Built-in Functions:**

```
String

↓

Numeric

↓

Date & Time

↓

NULL

↓

Conversion

↓

Aggregate
```

Think:

```
Text

↓

Numbers

↓

Dates

↓

Missing Values

↓

Data Type

↓

Summary
```

--------------------------------------------------

# String Functions

## What are they?

String Functions are Built-in Functions that work with **text (string) values**.

They help you manipulate, format, search, combine, and extract text stored in database columns.

String Functions are one of the most frequently used function categories in MySQL.

They are commonly used in:

- Employee names
- Customer names
- Email addresses
- Phone numbers
- Product names
- Addresses
- City names

---

## Why do we need String Functions?

Suppose a company wants to answer questions like:

- Convert employee names to uppercase.
- Convert city names to lowercase.
- Find employees whose names are longer than 10 characters.
- Remove extra spaces from customer names.
- Combine first name and last name.
- Extract the first three letters of every department.

Without String Functions, performing these operations would require complicated programming.

String Functions make these tasks quick and simple.

---

## Common String Functions

| Function | Purpose |
|----------|---------|
| `UPPER()` | Converts text to uppercase |
| `LOWER()` | Converts text to lowercase |
| `LENGTH()` | Returns the length of a string |
| `CHAR_LENGTH()` | Returns the number of characters |
| `CONCAT()` | Combines multiple strings |
| `CONCAT_WS()` | Combines strings using a separator |
| `TRIM()` | Removes leading and trailing spaces |
| `LTRIM()` | Removes leading spaces |
| `RTRIM()` | Removes trailing spaces |
| `SUBSTRING()` | Extracts part of a string |
| `LEFT()` | Returns characters from the left |
| `RIGHT()` | Returns characters from the right |
| `REPLACE()` | Replaces text |
| `REVERSE()` | Reverses a string |
| `LOCATE()` | Finds the position of a substring |

---

## Characteristics

- Work only with text values.
- Return another text value or a numeric result.
- Can be nested with other functions.
- Can be used in almost every SQL clause.
- Help clean and format data.
- Frequently used in reports and dashboards.

---

## Syntax

```sql
FUNCTION_NAME(column_name)
```

Example:

```sql
UPPER(employee_name)
```

Another example:

```sql
LENGTH(employee_name)
```

---

## Examples

### Example 1

Convert employee names to uppercase.

```sql
SELECT employee_name,
       UPPER(employee_name) AS upper_name
FROM employees;
```

### Explanation

The `UPPER()` function converts every letter of the employee name into uppercase.

---

### Example 2

Convert city names to lowercase.

```sql
SELECT city,
       LOWER(city) AS lower_city
FROM employees;
```

### Explanation

The `LOWER()` function converts every letter into lowercase.

---

### Example 3

Find the length of every employee name.

```sql
SELECT employee_name,
       LENGTH(employee_name) AS name_length
FROM employees;
```

### Explanation

The `LENGTH()` function returns the length of each employee name.

---

### Example 4

Combine employee name and city.

```sql
SELECT CONCAT(employee_name, ' - ', city) AS employee_details
FROM employees;
```

### Explanation

The `CONCAT()` function joins multiple strings into one.

---

### Example 5

Extract the first four letters of each employee name.

```sql
SELECT employee_name,
       SUBSTRING(employee_name, 1, 4) AS short_name
FROM employees;
```

### Explanation

The `SUBSTRING()` function extracts four characters starting from position 1.

---

## Real-World Uses

String Functions are commonly used for:

- Formatting reports.
- Cleaning imported data.
- Creating usernames.
- Generating employee IDs.
- Formatting customer names.
- Searching text.
- Extracting useful information from strings.

---

## Workflow

```
Text Data

↓

String Function

↓

Processing

↓

Formatted Text
```

---

## Memory Tip

> 🧠 **String Functions manipulate text stored in the database.**

```
Text

↓

Format

↓

Search

↓

Extract

↓

Combine

↓

Result
```

Think:

```
String

↓

Function

↓

Modified String
```

--------------------------------------------------

# UPPER() Function

## What is it?

The `UPPER()` function converts **all lowercase letters** in a string into **uppercase letters**.

It does **not** change:

- Numbers
- Special characters
- Spaces

Only alphabetic characters are converted to uppercase.

---

## Why do we need UPPER()?

Suppose a company stores employee names like this:

```
amit sharma
Priya Patel
rAhUl Verma
```

This looks inconsistent in reports.

Using `UPPER()`, all names can be displayed uniformly.

Result:

```
AMIT SHARMA
PRIYA PATEL
RAHUL VERMA
```

This improves readability and consistency.

---

## Characteristics

- Converts lowercase letters to uppercase.
- Leaves uppercase letters unchanged.
- Does not affect numbers.
- Does not affect spaces.
- Does not affect special characters.
- Returns a string.

---

## Syntax

```sql
UPPER(string)
```

Example:

```sql
UPPER(employee_name)
```

---

## Examples

### Example 1

Convert every employee name to uppercase.

```sql
SELECT employee_name,
       UPPER(employee_name) AS upper_name
FROM employees;
```

### Explanation

The `UPPER()` function converts every alphabetic character in the employee name into uppercase.

---

### Example 2

Convert department names to uppercase.

```sql
SELECT department,
       UPPER(department) AS upper_department
FROM employees;
```

### Explanation

Every department name is displayed in uppercase.

---

### Example 3

Convert city names to uppercase.

```sql
SELECT city,
       UPPER(city) AS upper_city
FROM employees;
```

### Explanation

The `UPPER()` function converts every city name into uppercase letters.

---

### Example 4

Display employee names and cities in uppercase.

```sql
SELECT UPPER(employee_name) AS employee_name,
       UPPER(city) AS city
FROM employees;
```

### Explanation

The function is applied independently to both columns.

---

### Example 5

Convert a constant string into uppercase.

```sql
SELECT UPPER('Data Engineer') AS profession;
```

### Explanation

The string `'Data Engineer'` is converted to:

```
DATA ENGINEER
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | Department |
|---------------|------------|
| Amit Sharma | HR |
| Priya Patel | IT |
| Rahul Verma | Finance |

Query:

```sql
SELECT employee_name,
       UPPER(employee_name) AS upper_name
FROM employees;
```

Result

| Employee Name | Upper Name |
|---------------|------------|
| Amit Sharma | AMIT SHARMA |
| Priya Patel | PRIYA PATEL |
| Rahul Verma | RAHUL VERMA |

The original data remains unchanged.

Only the displayed output is converted to uppercase.

---

## Workflow

```
Original Text

↓

UPPER()

↓

Uppercase Text

↓

Display Result
```

---

## Memory Tip

> 🧠 **UPPER() converts every alphabet into CAPITAL letters.**

```
amit

↓

UPPER()

↓

AMIT
```

Think:

```
Small Letters

↓

UPPER()

↓

CAPITAL LETTERS
```

--------------------------------------------------

# LOWER() Function

## What is it?

The `LOWER()` function converts **all uppercase letters** in a string into **lowercase letters**.

It does **not** change:

- Numbers
- Special characters
- Spaces

Only alphabetic characters are converted to lowercase.

---

## Why do we need LOWER()?

Suppose a company stores employee names like this:

```
AMIT SHARMA
Priya Patel
RAHUL verma
```

The data is inconsistent because some names are in uppercase, some in lowercase, and some in mixed case.

Using `LOWER()`, all names can be displayed consistently.

Result:

```
amit sharma
priya patel
rahul verma
```

This improves readability and maintains consistent formatting.

---

## Characteristics

- Converts uppercase letters to lowercase.
- Leaves lowercase letters unchanged.
- Does not affect numbers.
- Does not affect spaces.
- Does not affect special characters.
- Returns a string.

---

## Syntax

```sql
LOWER(string)
```

Example:

```sql
LOWER(employee_name)
```

---

## Examples

### Example 1

Convert every employee name to lowercase.

```sql
SELECT employee_name,
       LOWER(employee_name) AS lower_name
FROM employees;
```

### Explanation

The `LOWER()` function converts every alphabetic character in the employee name into lowercase.

---

### Example 2

Convert department names to lowercase.

```sql
SELECT department,
       LOWER(department) AS lower_department
FROM employees;
```

### Explanation

Every department name is displayed in lowercase.

---

### Example 3

Convert city names to lowercase.

```sql
SELECT city,
       LOWER(city) AS lower_city
FROM employees;
```

### Explanation

The `LOWER()` function converts every city name into lowercase letters.

---

### Example 4

Display employee names and cities in lowercase.

```sql
SELECT LOWER(employee_name) AS employee_name,
       LOWER(city) AS city
FROM employees;
```

### Explanation

The function is applied independently to both columns.

---

### Example 5

Convert a constant string into lowercase.

```sql
SELECT LOWER('Data Engineer') AS profession;
```

### Explanation

The string `'Data Engineer'` is converted to:

```
data engineer
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | Department |
|---------------|------------|
| Amit Sharma | HR |
| Priya Patel | IT |
| Rahul Verma | Finance |

Query:

```sql
SELECT employee_name,
       LOWER(employee_name) AS lower_name
FROM employees;
```

Result

| Employee Name | Lower Name |
|---------------|------------|
| Amit Sharma | amit sharma |
| Priya Patel | priya patel |
| Rahul Verma | rahul verma |

The original data remains unchanged.

Only the displayed output is converted to lowercase.

---

## Workflow

```
Original Text

↓

LOWER()

↓

Lowercase Text

↓

Display Result
```

---

## Memory Tip

> 🧠 **LOWER() converts every alphabet into small letters.**

```
AMIT

↓

LOWER()

↓

amit
```

Think:

```
CAPITAL LETTERS

↓

LOWER()

↓

small letters
```

--------------------------------------------------

# LENGTH() Function

## What is it?

The `LENGTH()` function returns the **length of a string in bytes**.

It counts the number of bytes used to store the string, not necessarily the number of characters.

For strings containing only English (ASCII) characters, the number of bytes is the same as the number of characters.

---

## Why do we need LENGTH()?

Suppose a company wants to answer questions like:

- Which employee has the longest name?
- Which city name is the shortest?
- Does a password meet the minimum length requirement?
- Find product codes having exactly 10 characters.
- Validate user input before storing it.

The `LENGTH()` function helps measure the size of text stored in the database.

---

## Characteristics

- Returns the length of a string in **bytes**.
- Works with text values.
- Returns a numeric value.
- Can be used in `SELECT`, `WHERE`, `ORDER BY`, and `HAVING`.
- Useful for validation and data analysis.

> **Note**
>
> For English text, `LENGTH()` returns the same value as the number of characters.
>
> For multi-byte characters (such as many Unicode characters), the byte count may be greater than the character count.
>
> If you want the number of characters, use `CHAR_LENGTH()`.

---

## Syntax

```sql
LENGTH(string)
```

Example:

```sql
LENGTH(employee_name)
```

---

## Examples

### Example 1

Find the length of every employee name.

```sql
SELECT employee_name,
       LENGTH(employee_name) AS name_length
FROM employees;
```

### Explanation

The `LENGTH()` function returns the number of bytes used to store each employee name.

---

### Example 2

Find the length of every city name.

```sql
SELECT city,
       LENGTH(city) AS city_length
FROM employees;
```

### Explanation

The function calculates the length of each city name.

---

### Example 3

Display employees whose names contain more than 10 characters.

```sql
SELECT employee_name
FROM employees
WHERE LENGTH(employee_name) > 10;
```

### Explanation

The `WHERE` clause filters only those employee names whose length is greater than 10 bytes.

---

### Example 4

Sort employees by the length of their names.

```sql
SELECT employee_name,
       LENGTH(employee_name) AS name_length
FROM employees
ORDER BY LENGTH(employee_name);
```

### Explanation

The employee names are sorted from the shortest to the longest.

---

### Example 5

Find the length of a constant string.

```sql
SELECT LENGTH('Data Engineer') AS text_length;
```

### Explanation

The function returns the total number of bytes in the string `"Data Engineer"`.

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | City |
|---------------|------|
| Amit Sharma | Mumbai |
| Priya Patel | Pune |
| Rahul Verma | Delhi |

Query:

```sql
SELECT employee_name,
       LENGTH(employee_name) AS name_length
FROM employees;
```

Result

| Employee Name | Name Length |
|---------------|------------:|
| Amit Sharma | 11 |
| Priya Patel | 12 |
| Rahul Verma | 12 |

The original data remains unchanged.

Only the calculated length is displayed.

---

## Workflow

```
Text

↓

LENGTH()

↓

Count Bytes

↓

Numeric Result
```

---

## Memory Tip

> 🧠 **LENGTH() measures the size of a string in bytes.**

```
Amit Sharma

↓

LENGTH()

↓

11
```

Think:

```
Text

↓

LENGTH()

↓

Number
```

--------------------------------------------------

# CHAR_LENGTH() Function

## What is it?

The `CHAR_LENGTH()` function returns the **number of characters** in a string.

Unlike `LENGTH()`, which counts **bytes**, `CHAR_LENGTH()` counts **actual characters**.

For English text, both `LENGTH()` and `CHAR_LENGTH()` usually return the same value.

However, for strings containing multi-byte characters (such as many Unicode characters), the results may differ.

---

## Why do we need CHAR_LENGTH()?

Suppose a company wants to answer questions like:

- Does an employee name contain more than 10 characters?
- Which product code contains exactly 8 characters?
- Validate the length of customer names.
- Find the longest department name.
- Limit usernames to a maximum number of characters.

In these situations, we are interested in the **number of characters**, not the storage size in bytes.

The `CHAR_LENGTH()` function is ideal for these scenarios.

---

## Characteristics

- Returns the number of characters in a string.
- Works with text values.
- Returns a numeric value.
- Counts letters, numbers, spaces, and special characters.
- Can be used in `SELECT`, `WHERE`, `ORDER BY`, and `HAVING`.
- Preferred when character count is required.

> **Note**
>
> - `CHAR_LENGTH()` counts **characters**.
> - `LENGTH()` counts **bytes**.
>
> For English text, both functions generally return the same value.

---

## Syntax

```sql
CHAR_LENGTH(string)
```

Example:

```sql
CHAR_LENGTH(employee_name)
```

---

## Examples

### Example 1

Find the number of characters in every employee name.

```sql
SELECT employee_name,
       CHAR_LENGTH(employee_name) AS name_length
FROM employees;
```

### Explanation

The `CHAR_LENGTH()` function counts the total number of characters in each employee name.

---

### Example 2

Find the number of characters in every city name.

```sql
SELECT city,
       CHAR_LENGTH(city) AS city_length
FROM employees;
```

### Explanation

The function returns the total number of characters in each city name.

---

### Example 3

Display employees whose names contain more than 10 characters.

```sql
SELECT employee_name
FROM employees
WHERE CHAR_LENGTH(employee_name) > 10;
```

### Explanation

Only employee names containing more than 10 characters are displayed.

---

### Example 4

Sort employee names by character length.

```sql
SELECT employee_name,
       CHAR_LENGTH(employee_name) AS name_length
FROM employees
ORDER BY CHAR_LENGTH(employee_name);
```

### Explanation

Employee names are sorted from the shortest to the longest based on the number of characters.

---

### Example 5

Find the character length of a constant string.

```sql
SELECT CHAR_LENGTH('Data Engineer') AS total_characters;
```

### Explanation

The function returns the total number of characters in the string `"Data Engineer"`.

---

## Difference Between LENGTH() and CHAR_LENGTH()

| Function | Counts | Best Used For |
|----------|--------|---------------|
| `LENGTH()` | Bytes | Measuring storage size |
| `CHAR_LENGTH()` | Characters | Validating text length |

Example:

```sql
SELECT
LENGTH('Data Engineer') AS byte_length,
CHAR_LENGTH('Data Engineer') AS character_length;
```

For English text, both values will usually be the same.

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | Department |
|---------------|------------|
| Amit Sharma | HR |
| Priya Patel | IT |
| Rahul Verma | Finance |

Query:

```sql
SELECT employee_name,
       CHAR_LENGTH(employee_name) AS character_count
FROM employees;
```

Result

| Employee Name | Character Count |
|---------------|----------------:|
| Amit Sharma | 11 |
| Priya Patel | 12 |
| Rahul Verma | 12 |

The original data remains unchanged.

Only the number of characters is displayed.

---

## Workflow

```
Text

↓

CHAR_LENGTH()

↓

Count Characters

↓

Numeric Result
```

---

## Memory Tip

> 🧠 **CHAR_LENGTH() counts characters, while LENGTH() counts bytes.**

```
Text

↓

CHAR_LENGTH()

↓

Characters
```

Think:

```
Text

↓

Count Characters

↓

Result
```

--------------------------------------------------

# CONCAT() Function

## What is it?

The `CONCAT()` function combines **two or more strings into a single string**.

It joins text values in the order they are provided.

The strings can come from:

- Table columns
- Constant values
- Other functions
- A combination of all of these

`CONCAT()` is one of the most commonly used String Functions in MySQL.

---

## Why do we need CONCAT()?

Suppose a company wants to:

- Display employee name and department together.
- Combine city and department.
- Create employee descriptions.
- Generate email IDs.
- Create complete addresses.

Without `CONCAT()`, these values would have to be displayed separately.

Using `CONCAT()`, multiple values can be combined into a single readable output.

---

## Characteristics

- Combines two or more strings.
- Returns a single string.
- Maintains the order of the arguments.
- Can combine columns, constants, and function results.
- Can be nested with other functions.
- Returns `NULL` if any argument is `NULL`.

> **Note**
>
> If any argument passed to `CONCAT()` is `NULL`, the entire result becomes `NULL`.
>
> To avoid this, use `IFNULL()` or `COALESCE()` when necessary.

---

## Syntax

```sql
CONCAT(string1, string2, string3, ...)
```

Example:

```sql
CONCAT(employee_name, ' - ', department)
```

---

## Examples

### Example 1

Combine employee name and department.

```sql
SELECT CONCAT(employee_name, ' - ', department) AS employee_details
FROM employees;
```

### Explanation

The `CONCAT()` function joins the employee name, separator (`-`), and department into one string.

---

### Example 2

Combine employee name and city.

```sql
SELECT CONCAT(employee_name, ' from ', city) AS employee_location
FROM employees;
```

### Explanation

The employee name and city are combined into a descriptive sentence.

---

### Example 3

Create employee information.

```sql
SELECT CONCAT(employee_name,
              ' works in ',
              department) AS information
FROM employees;
```

### Explanation

The function combines text constants with column values to create meaningful output.

---

### Example 4

Create an email ID.

```sql
SELECT CONCAT(LOWER(employee_name), '@company.com') AS email
FROM employees;
```

### Explanation

The employee name is first converted to lowercase using `LOWER()`.

Then `CONCAT()` appends `@company.com` to create an email address.

---

### Example 5

Combine multiple columns.

```sql
SELECT CONCAT(employee_name,
              ', ',
              designation,
              ', ',
              city) AS employee_profile
FROM employees;
```

### Explanation

The function combines employee name, designation, and city into a single formatted string.

---

## Using CONCAT() with Other Functions

Functions can be nested inside `CONCAT()`.

Example:

```sql
SELECT CONCAT(
       UPPER(employee_name),
       ' (',
       department,
       ')'
) AS employee_details
FROM employees;
```

### Explanation

First:

- `UPPER()` converts the employee name to uppercase.

Then:

- `CONCAT()` joins the uppercase name with the department.

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | Department | City |
|---------------|------------|------|
| Amit Sharma | HR | Mumbai |
| Priya Patel | IT | Pune |
| Rahul Verma | Finance | Delhi |

Query:

```sql
SELECT CONCAT(employee_name,
              ' - ',
              city) AS employee_location
FROM employees;
```

Result

| Employee Location |
|-------------------|
| Amit Sharma - Mumbai |
| Priya Patel - Pune |
| Rahul Verma - Delhi |

The original columns remain unchanged.

Only a new combined value is displayed.

---

## Workflow

```
String 1

↓

String 2

↓

CONCAT()

↓

Single Combined String
```

---

## Memory Tip

> 🧠 **CONCAT() joins multiple strings into one string.**

```
Employee Name

+

Department

↓

CONCAT()

↓

One String
```

Think:

```
Multiple Strings

↓

CONCAT()

↓

Single String
```

--------------------------------------------------

# CONCAT_WS() Function

## What is it?

The `CONCAT_WS()` function combines **two or more strings into a single string using a specified separator**.

`WS` stands for **With Separator**.

Unlike `CONCAT()`, where you manually add separators such as spaces, commas, or hyphens, `CONCAT_WS()` automatically inserts the separator between each value.

---

## Why do we need CONCAT_WS()?

Suppose a company wants to:

- Display employee name, department, and city separated by commas.
- Generate employee profiles.
- Create formatted addresses.
- Display values separated by hyphens.
- Produce readable reports.

Using `CONCAT()` requires writing the separator multiple times.

`CONCAT_WS()` makes the query cleaner and easier to maintain.

---

## Characteristics

- Combines multiple strings.
- Uses a single separator.
- Automatically inserts the separator between values.
- Returns a single string.
- Ignores `NULL` values after the separator argument.
- Returns `NULL` only if the separator itself is `NULL`.

> **Note**
>
> Unlike `CONCAT()`, `CONCAT_WS()` skips `NULL` values instead of returning `NULL`.
>
> This makes it useful when some columns may contain missing values.

---

## Syntax

```sql
CONCAT_WS(separator, string1, string2, string3, ...)
```

Example:

```sql
CONCAT_WS(' - ', employee_name, department)
```

---

## Examples

### Example 1

Combine employee name and department using a hyphen.

```sql
SELECT CONCAT_WS(' - ',
                 employee_name,
                 department) AS employee_details
FROM employees;
```

### Explanation

The separator `' - '` is automatically placed between the employee name and department.

---

### Example 2

Combine employee name, designation, and city.

```sql
SELECT CONCAT_WS(', ',
                 employee_name,
                 designation,
                 city) AS employee_profile
FROM employees;
```

### Explanation

Each value is separated by a comma and a space.

---

### Example 3

Create a formatted employee record.

```sql
SELECT CONCAT_WS(' | ',
                 employee_name,
                 department,
                 salary) AS employee_record
FROM employees;
```

### Explanation

The pipe symbol (`|`) is used as the separator between all values.

---

### Example 4

Create an employee identifier.

```sql
SELECT CONCAT_WS('-',
                 department,
                 employee_id,
                 city) AS employee_code
FROM employees;
```

### Explanation

The function joins the department, employee ID, and city using hyphens.

---

### Example 5

Combine constant values.

```sql
SELECT CONCAT_WS(' ',
                 'Welcome',
                 'to',
                 'MySQL') AS message;
```

### Explanation

The function joins all strings using a space.

Result:

```
Welcome to MySQL
```

---

## CONCAT() vs CONCAT_WS()

| Feature | `CONCAT()` | `CONCAT_WS()` |
|---------|------------|---------------|
| Separator | Added manually | Specified once |
| Returns `NULL` if any argument is `NULL` | Yes | No (ignores `NULL` values) |
| Readability | Less readable for many values | More readable |
| Best Use | Simple concatenation | Concatenation with separators |

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | Department | City |
|---------------|------------|------|
| Amit Sharma | HR | Mumbai |
| Priya Patel | IT | Pune |
| Rahul Verma | Finance | Delhi |

Query:

```sql
SELECT CONCAT_WS(', ',
                 employee_name,
                 department,
                 city) AS employee_information
FROM employees;
```

Result

| Employee Information |
|----------------------|
| Amit Sharma, HR, Mumbai |
| Priya Patel, IT, Pune |
| Rahul Verma, Finance, Delhi |

The values are automatically separated by commas without manually adding the separator each time.

---

## Workflow

```
Separator

↓

Multiple Strings

↓

CONCAT_WS()

↓

Formatted String
```

---

## Memory Tip

> 🧠 **CONCAT_WS() = CONCAT With Separator**

```
Separator

+

Strings

↓

CONCAT_WS()

↓

One Formatted String
```

Think:

```
Many Strings

↓

One Separator

↓

CONCAT_WS()

↓

Readable Output
```

--------------------------------------------------

# TRIM() Function

## What is it?

The `TRIM()` function removes **leading (beginning)** and **trailing (ending)** spaces from a string.

It helps clean unwanted spaces that may exist before or after the actual text.

By default, `TRIM()` removes spaces, but it can also remove a specified character from the beginning, end, or both sides of a string.

---

## Why do we need TRIM()?

Suppose employee names are stored like this:

```
'  Amit Sharma'
'Priya Patel  '
'   Rahul Verma   '
```

Although these values look similar, the extra spaces can cause:

- Incorrect comparisons.
- Duplicate-looking records.
- Unprofessional reports.
- Problems while joining tables.
- Incorrect search results.

Using `TRIM()` removes these unnecessary spaces and produces clean data.

---

## Characteristics

- Removes leading spaces.
- Removes trailing spaces.
- Returns a cleaned string.
- Does not remove spaces between words.
- Can remove specified characters as well as spaces.
- Frequently used during data cleaning.

---

## Syntax

### Remove Leading and Trailing Spaces

```sql
TRIM(string)
```

Example:

```sql
TRIM(employee_name)
```

---

### Remove a Specific Character

```sql
TRIM(BOTH 'x' FROM string)
```

---

### Remove from the Beginning

```sql
TRIM(LEADING 'x' FROM string)
```

---

### Remove from the End

```sql
TRIM(TRAILING 'x' FROM string)
```

---

## Examples

### Example 1

Remove leading and trailing spaces from employee names.

```sql
SELECT employee_name,
       TRIM(employee_name) AS cleaned_name
FROM employees;
```

### Explanation

The `TRIM()` function removes unnecessary spaces before and after each employee name.

---

### Example 2

Remove spaces from city names.

```sql
SELECT city,
       TRIM(city) AS cleaned_city
FROM employees;
```

### Explanation

The function returns city names without extra spaces at the beginning or end.

---

### Example 3

Remove the character `#` from both ends.

```sql
SELECT TRIM(BOTH '#' FROM '###Data Engineer###') AS result;
```

### Explanation

The `#` characters at both the beginning and end are removed.

Result:

```
Data Engineer
```

---

### Example 4

Remove the character `*` from the beginning only.

```sql
SELECT TRIM(LEADING '*' FROM '***MySQL') AS result;
```

### Explanation

Only the leading `*` characters are removed.

Result:

```
MySQL
```

---

### Example 5

Remove the character `!` from the end only.

```sql
SELECT TRIM(TRAILING '!' FROM 'Database!!!') AS result;
```

### Explanation

Only the trailing `!` characters are removed.

Result:

```
Database
```

---

## Difference Between TRIM(), LTRIM(), and RTRIM()

| Function | Removes |
|----------|---------|
| `TRIM()` | Leading and trailing spaces |
| `LTRIM()` | Leading spaces only |
| `RTRIM()` | Trailing spaces only |

---

## Real-World Example

Suppose the database contains the following employee names:

| Employee Name |
|---------------|
| `'  Amit Sharma'` |
| `'Priya Patel  '` |
| `'  Rahul Verma  '` |

Query:

```sql
SELECT employee_name,
       TRIM(employee_name) AS cleaned_name
FROM employees;
```

Result

| Employee Name | Cleaned Name |
|---------------|--------------|
| `'  Amit Sharma'` | Amit Sharma |
| `'Priya Patel  '` | Priya Patel |
| `'  Rahul Verma  '` | Rahul Verma |

The original data remains unchanged.

Only the displayed output is cleaned.

---

## Workflow

```
Original Text

↓

TRIM()

↓

Remove Extra Spaces

↓

Clean Text
```

---

## Memory Tip

> 🧠 **TRIM() cleans unwanted spaces or specified characters from both ends of a string.**

```
"   Amit Sharma   "

↓

TRIM()

↓

"Amit Sharma"
```

Think:

```
Extra Spaces

↓

TRIM()

↓

Clean String
```

--------------------------------------------------

# LTRIM() Function

## What is it?

The `LTRIM()` function removes **leading (left-side)** spaces from a string.

It removes only the spaces that appear **before** the actual text.

It does **not** remove:

- Trailing (right-side) spaces.
- Spaces between words.
- Characters other than spaces.

---

## Why do we need LTRIM()?

Suppose employee names are stored like this:

```
'   Amit Sharma'
'     Priya Patel'
' Rahul Verma'
```

These unwanted leading spaces can cause:

- Poor report formatting.
- Incorrect text alignment.
- Problems while comparing strings.
- Unclean imported data.

Using `LTRIM()` removes only the spaces from the beginning of the string.

---

## Characteristics

- Removes leading spaces only.
- Does not remove trailing spaces.
- Does not remove spaces between words.
- Returns a cleaned string.
- Frequently used while cleaning imported data.

---

## Syntax

```sql
LTRIM(string)
```

Example:

```sql
LTRIM(employee_name)
```

---

## Examples

### Example 1

Remove leading spaces from employee names.

```sql
SELECT employee_name,
       LTRIM(employee_name) AS cleaned_name
FROM employees;
```

### Explanation

The `LTRIM()` function removes only the spaces before each employee name.

---

### Example 2

Remove leading spaces from city names.

```sql
SELECT city,
       LTRIM(city) AS cleaned_city
FROM employees;
```

### Explanation

Only the spaces at the beginning of each city name are removed.

---

### Example 3

Remove leading spaces from a constant string.

```sql
SELECT LTRIM('     Data Engineer') AS result;
```

### Explanation

The spaces before the text are removed.

Result:

```
Data Engineer
```

---

### Example 4

Compare the original and cleaned values.

```sql
SELECT employee_name,
       LTRIM(employee_name) AS cleaned_name
FROM employees;
```

### Explanation

The first column displays the original value.

The second column displays the same value after removing the leading spaces.

---

### Example 5

Find the length before and after removing leading spaces.

```sql
SELECT
LENGTH(employee_name) AS original_length,
LENGTH(LTRIM(employee_name)) AS cleaned_length
FROM employees;
```

### Explanation

The first `LENGTH()` returns the length including leading spaces.

The second `LENGTH()` returns the length after removing those spaces.

---

## Difference Between LTRIM(), RTRIM(), and TRIM()

| Function | Removes |
|----------|---------|
| `LTRIM()` | Leading spaces only |
| `RTRIM()` | Trailing spaces only |
| `TRIM()` | Leading and trailing spaces |

---

## Real-World Example

Suppose the database contains:

| Employee Name |
|---------------|
| `'   Amit Sharma'` |
| `'     Priya Patel'` |
| `' Rahul Verma'` |

Query:

```sql
SELECT employee_name,
       LTRIM(employee_name) AS cleaned_name
FROM employees;
```

Result

| Employee Name | Cleaned Name |
|---------------|--------------|
| `'   Amit Sharma'` | Amit Sharma |
| `'     Priya Patel'` | Priya Patel |
| `' Rahul Verma'` | Rahul Verma |

Only the leading spaces are removed.

The original data stored in the table remains unchanged.

---

## Workflow

```
Original Text

↓

LTRIM()

↓

Remove Leading Spaces

↓

Clean Text
```

---

## Memory Tip

> 🧠 **LTRIM() removes spaces from the Left side of a string.**

```
"    Amit Sharma"

↓

LTRIM()

↓

"Amit Sharma"
```

Think:

```
Left Side

↓

LTRIM()

↓

Clean Beginning
```

--------------------------------------------------

# RTRIM() Function

## What is it?

The `RTRIM()` function removes **trailing (right-side)** spaces from a string.

It removes only the spaces that appear **after** the actual text.

It does **not** remove:

- Leading (left-side) spaces.
- Spaces between words.
- Characters other than spaces.

---

## Why do we need RTRIM()?

Suppose employee names are stored like this:

```
'Amit Sharma   '
'Priya Patel     '
'Rahul Verma '
```

These unwanted trailing spaces can cause:

- Untidy reports.
- Incorrect text comparisons.
- Problems while importing or exporting data.
- Duplicate-looking values.

Using `RTRIM()` removes only the spaces from the end of the string.

---

## Characteristics

- Removes trailing spaces only.
- Does not remove leading spaces.
- Does not remove spaces between words.
- Returns a cleaned string.
- Commonly used during data cleaning.

---

## Syntax

```sql
RTRIM(string)
```

Example:

```sql
RTRIM(employee_name)
```

---

## Examples

### Example 1

Remove trailing spaces from employee names.

```sql
SELECT employee_name,
       RTRIM(employee_name) AS cleaned_name
FROM employees;
```

### Explanation

The `RTRIM()` function removes only the spaces after each employee name.

---

### Example 2

Remove trailing spaces from city names.

```sql
SELECT city,
       RTRIM(city) AS cleaned_city
FROM employees;
```

### Explanation

Only the spaces at the end of each city name are removed.

---

### Example 3

Remove trailing spaces from a constant string.

```sql
SELECT RTRIM('Data Engineer     ') AS result;
```

### Explanation

The spaces after the text are removed.

Result:

```
Data Engineer
```

---

### Example 4

Compare the original and cleaned values.

```sql
SELECT employee_name,
       RTRIM(employee_name) AS cleaned_name
FROM employees;
```

### Explanation

The first column displays the original value.

The second column displays the value after removing the trailing spaces.

---

### Example 5

Find the length before and after removing trailing spaces.

```sql
SELECT
LENGTH(employee_name) AS original_length,
LENGTH(RTRIM(employee_name)) AS cleaned_length
FROM employees;
```

### Explanation

The first `LENGTH()` returns the length including trailing spaces.

The second `LENGTH()` returns the length after removing those trailing spaces.

---

## Difference Between RTRIM(), LTRIM(), and TRIM()

| Function | Removes |
|----------|---------|
| `RTRIM()` | Trailing spaces only |
| `LTRIM()` | Leading spaces only |
| `TRIM()` | Leading and trailing spaces |

---

## Real-World Example

Suppose the database contains:

| Employee Name |
|---------------|
| `'Amit Sharma   '` |
| `'Priya Patel     '` |
| `'Rahul Verma '` |

Query:

```sql
SELECT employee_name,
       RTRIM(employee_name) AS cleaned_name
FROM employees;
```

Result

| Employee Name | Cleaned Name |
|---------------|--------------|
| `'Amit Sharma   '` | Amit Sharma |
| `'Priya Patel     '` | Priya Patel |
| `'Rahul Verma '` | Rahul Verma |

Only the trailing spaces are removed.

The original data stored in the table remains unchanged.

---

## Workflow

```
Original Text

↓

RTRIM()

↓

Remove Trailing Spaces

↓

Clean Text
```

---

## Memory Tip

> 🧠 **RTRIM() removes spaces from the Right side of a string.**

```
"Amit Sharma     "

↓

RTRIM()

↓

"Amit Sharma"
```

Think:

```
Right Side

↓

RTRIM()

↓

Clean Ending
```

--------------------------------------------------

# SUBSTRING() Function

## What is it?

The `SUBSTRING()` function extracts a **specific part of a string**.

Instead of returning the entire text, it returns only the portion you specify.

You can choose:

- Where to start extracting.
- How many characters to extract.

It is commonly used when only a part of a text value is required.

---

## Why do we need SUBSTRING()?

Suppose a company wants to:

- Display only the first name of employees.
- Show the first three letters of each department.
- Extract the area code from phone numbers.
- Display only the first five characters of product codes.
- Create short usernames.

Without `SUBSTRING()`, extracting part of a string would be difficult.

The `SUBSTRING()` function makes text extraction simple and efficient.

---

## Characteristics

- Extracts a part of a string.
- Returns a string.
- Allows you to specify the starting position.
- Allows you to specify the number of characters.
- Can be used with columns, constants, or other functions.
- Can be nested with other Built-in Functions.

---

## Syntax

### Extract from a Starting Position

```sql
SUBSTRING(string, start_position)
```

---

### Extract a Specific Number of Characters

```sql
SUBSTRING(string, start_position, length)
```

Example:

```sql
SUBSTRING(employee_name, 1, 4)
```

---

## How Position Works

Suppose the string is:

```
Amit Sharma
```

| Character | A | m | i | t | (space) | S | h | a | r | m | a |
|-----------|---|---|---|---|----------|---|---|---|---|---|---|
| Position | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 |

MySQL starts counting from **1**, not **0**.

---

## Examples

### Example 1

Extract the first four characters of every employee name.

```sql
SELECT employee_name,
       SUBSTRING(employee_name, 1, 4) AS short_name
FROM employees;
```

### Explanation

The function starts from position **1** and extracts **4 characters**.

---

### Example 2

Extract the department abbreviation.

```sql
SELECT department,
       SUBSTRING(department, 1, 2) AS department_code
FROM employees;
```

### Explanation

The first two characters of every department are returned.

Example:

```
HR

↓

HR

IT

↓

IT

Finance

↓

Fi
```

---

### Example 3

Extract the last name.

```sql
SELECT employee_name,
       SUBSTRING(employee_name, 6) AS last_name
FROM employees;
```

### Explanation

Extraction starts from position **6** and continues until the end of the string.

---

### Example 4

Extract the first three letters of every city.

```sql
SELECT city,
       SUBSTRING(city, 1, 3) AS city_code
FROM employees;
```

### Explanation

Only the first three characters of each city name are returned.

---

### Example 5

Extract characters from a constant string.

```sql
SELECT SUBSTRING('Data Engineering', 6, 11) AS result;
```

### Explanation

The extraction starts from the 6th character and returns the next 11 characters.

Result:

```
Engineering
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | Department |
|---------------|------------|
| Amit Sharma | HR |
| Priya Patel | IT |
| Rahul Verma | Finance |

Query:

```sql
SELECT employee_name,
       SUBSTRING(employee_name, 1, 5) AS short_name
FROM employees;
```

Result

| Employee Name | Short Name |
|---------------|------------|
| Amit Sharma | Amit |
| Priya Patel | Priya |
| Rahul Verma | Rahul |

Only the extracted portion of each employee name is displayed.

The original data remains unchanged.

---

## Workflow

```
Original String

↓

SUBSTRING()

↓

Starting Position

↓

Extract Required Characters

↓

Result
```

---

## Memory Tip

> 🧠 **SUBSTRING() extracts only the required part of a string.**

```
Amit Sharma

↓

SUBSTRING(1,4)

↓

Amit
```

Think:

```
Full String

↓

Choose Position

↓

Extract Part

↓

Result
```

--------------------------------------------------

# LEFT() Function

## What is it?

The `LEFT()` function returns a specified number of characters **from the beginning (left side)** of a string.

Instead of returning the entire string, it extracts only the leftmost characters.

It is useful when only the starting portion of a text value is required.

---

## Why do we need LEFT()?

Suppose a company wants to:

- Display the first three letters of every city.
- Generate employee codes using the first four letters of employee names.
- Create department abbreviations.
- Extract product prefixes.
- Display shortened values in reports.

Without `LEFT()`, extracting characters from the beginning of a string would require more complex expressions.

The `LEFT()` function provides a simple and readable solution.

---

## Characteristics

- Extracts characters from the left side of a string.
- Returns a string.
- Allows you to specify the number of characters.
- Works with columns and constant values.
- Can be combined with other Built-in Functions.
- Does not modify the original data.

---

## Syntax

```sql
LEFT(string, number_of_characters)
```

Example:

```sql
LEFT(employee_name, 4)
```

---

## How LEFT() Works

Suppose the string is:

```
Amit Sharma
```

```
A m i t   S h a r m a
↑ ↑ ↑ ↑
│ │ │ │
First 4 Characters
```

Query:

```sql
LEFT('Amit Sharma', 4)
```

Result:

```
Amit
```

---

## Examples

### Example 1

Extract the first four characters of every employee name.

```sql
SELECT employee_name,
       LEFT(employee_name, 4) AS short_name
FROM employees;
```

### Explanation

The `LEFT()` function returns the first four characters of each employee name.

---

### Example 2

Extract the first three letters of every city.

```sql
SELECT city,
       LEFT(city, 3) AS city_code
FROM employees;
```

### Explanation

The first three characters of each city name are returned.

Example:

```
Mumbai

↓

Mum

Delhi

↓

Del
```

---

### Example 3

Extract the first two letters of every department.

```sql
SELECT department,
       LEFT(department, 2) AS department_code
FROM employees;
```

### Explanation

The function extracts the first two characters from each department name.

---

### Example 4

Extract characters from a constant string.

```sql
SELECT LEFT('Data Engineering', 4) AS result;
```

### Explanation

The first four characters are extracted.

Result:

```
Data
```

---

### Example 5

Create employee codes.

```sql
SELECT employee_id,
       employee_name,
       CONCAT(LEFT(employee_name, 3), employee_id) AS employee_code
FROM employees;
```

### Explanation

The first three letters of the employee name are combined with the employee ID to create a simple employee code.

Example:

```
Amit Sharma

↓

Ami

↓

Ami101
```

---

## Difference Between LEFT() and SUBSTRING()

| Function | Purpose |
|----------|---------|
| `LEFT()` | Extracts characters from the beginning of a string |
| `SUBSTRING()` | Extracts characters from any specified position |

Example:

```sql
LEFT(employee_name, 5)
```

Always starts from the beginning.

```sql
SUBSTRING(employee_name, 6, 5)
```

Starts from position 6.

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | City |
|---------------|------|
| Amit Sharma | Mumbai |
| Priya Patel | Pune |
| Rahul Verma | Delhi |

Query:

```sql
SELECT employee_name,
       LEFT(employee_name, 5) AS short_name
FROM employees;
```

Result

| Employee Name | Short Name |
|---------------|------------|
| Amit Sharma | Amit |
| Priya Patel | Priya |
| Rahul Verma | Rahul |

Only the specified number of characters from the beginning of each employee name is displayed.

The original data remains unchanged.

---

## Workflow

```
Original String

↓

LEFT()

↓

Choose Number of Characters

↓

Extract from Left

↓

Result
```

---

## Memory Tip

> 🧠 **LEFT() always starts from the left side of a string.**

```
Amit Sharma

↓

LEFT(4)

↓

Amit
```

Think:

```
Left Side

↓

Choose Length

↓

Extract

↓

Result
```

--------------------------------------------------

# RIGHT() Function

## What is it?

The `RIGHT()` function returns a specified number of characters **from the end (right side)** of a string.

Instead of returning the entire string, it extracts only the rightmost characters.

It is useful when only the ending portion of a text value is required.

---

## Why do we need RIGHT()?

Suppose a company wants to:

- Display the last four digits of employee IDs.
- Extract the last name of employees.
- Display the last three letters of city names.
- Find file extensions.
- Generate short codes using the ending characters.

Without `RIGHT()`, extracting characters from the end of a string would require more complex expressions.

The `RIGHT()` function makes this task simple and readable.

---

## Characteristics

- Extracts characters from the right side of a string.
- Returns a string.
- Allows you to specify the number of characters.
- Works with columns and constant values.
- Can be combined with other Built-in Functions.
- Does not modify the original data.

---

## Syntax

```sql
RIGHT(string, number_of_characters)
```

Example:

```sql
RIGHT(employee_name, 6)
```

---

## How RIGHT() Works

Suppose the string is:

```
Amit Sharma
```

```
A m i t   S h a r m a
            ↑ ↑ ↑ ↑ ↑ ↑
            Last 6 Characters
```

Query:

```sql
RIGHT('Amit Sharma', 6)
```

Result:

```
Sharma
```

---

## Examples

### Example 1

Extract the last six characters of every employee name.

```sql
SELECT employee_name,
       RIGHT(employee_name, 6) AS last_part
FROM employees;
```

### Explanation

The `RIGHT()` function returns the last six characters of each employee name.

---

### Example 2

Extract the last three letters of every city.

```sql
SELECT city,
       RIGHT(city, 3) AS city_suffix
FROM employees;
```

### Explanation

The function extracts the last three characters from each city name.

Example:

```
Mumbai

↓

bai

Delhi

↓

lhi
```

---

### Example 3

Extract the last two letters of every department.

```sql
SELECT department,
       RIGHT(department, 2) AS department_suffix
FROM employees;
```

### Explanation

The function returns the last two characters of each department name.

---

### Example 4

Extract characters from a constant string.

```sql
SELECT RIGHT('Data Engineering', 11) AS result;
```

### Explanation

The last eleven characters are extracted.

Result:

```
Engineering
```

---

### Example 5

Extract the last four digits of employee IDs.

```sql
SELECT employee_id,
       RIGHT(employee_id, 2) AS employee_suffix
FROM employees;
```

### Explanation

The `RIGHT()` function treats the numeric value as text and returns the last two digits of each employee ID.

Example:

```
101

↓

01

110

↓

10
```

---

## Difference Between RIGHT() and SUBSTRING()

| Function | Purpose |
|----------|---------|
| `RIGHT()` | Extracts characters from the end of a string |
| `SUBSTRING()` | Extracts characters from any specified position |

Example:

```sql
RIGHT(employee_name, 6)
```

Always starts from the end.

```sql
SUBSTRING(employee_name, 6, 6)
```

Starts from position 6.

---

## Difference Between LEFT() and RIGHT()

| Function | Extracts From |
|----------|---------------|
| `LEFT()` | Beginning (left side) |
| `RIGHT()` | End (right side) |

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | City |
|---------------|------|
| Amit Sharma | Mumbai |
| Priya Patel | Pune |
| Rahul Verma | Delhi |

Query:

```sql
SELECT employee_name,
       RIGHT(employee_name, 6) AS last_name
FROM employees;
```

Result

| Employee Name | Last Name |
|---------------|-----------|
| Amit Sharma | Sharma |
| Priya Patel | Patel |
| Rahul Verma | Verma |

Only the specified number of characters from the end of each employee name is displayed.

The original data remains unchanged.

---

## Workflow

```
Original String

↓

RIGHT()

↓

Choose Number of Characters

↓

Extract from Right

↓

Result
```

---

## Memory Tip

> 🧠 **RIGHT() always starts from the right side of a string.**

```
Amit Sharma

↓

RIGHT(6)

↓

Sharma
```

Think:

```
Right Side

↓

Choose Length

↓

Extract

↓

Result
```

--------------------------------------------------

# REPLACE() Function

## What is it?

The `REPLACE()` function replaces **all occurrences of a specified substring** within a string with another substring.

It searches for the text you want to replace and substitutes it with the new text.

The original data is **not modified** unless the function is used in an `UPDATE` statement.

---

## Why do we need REPLACE()?

Suppose a company wants to:

- Change old department names.
- Correct spelling mistakes.
- Replace abbreviations with full names.
- Standardize city names.
- Remove unwanted characters.

Instead of manually editing every value, the `REPLACE()` function performs the replacement automatically.

---

## Characteristics

- Replaces one substring with another.
- Returns a new string.
- Replaces all matching occurrences.
- Case-sensitive in most MySQL collations depending on the collation used.
- Does not modify the original data unless used with `UPDATE`.
- Works with columns and constant strings.

---

## Syntax

```sql
REPLACE(string, old_substring, new_substring)
```

Example:

```sql
REPLACE(employee_name, 'Amit', 'Ajay')
```

---

## How REPLACE() Works

Suppose the string is:

```
Data Engineering
```

Query:

```sql
REPLACE('Data Engineering', 'Engineering', 'Science')
```

Result:

```
Data Science
```

---

## Examples

### Example 1

Replace "HR" with "Human Resources".

```sql
SELECT department,
       REPLACE(department, 'HR', 'Human Resources') AS updated_department
FROM employees;
```

### Explanation

Every occurrence of `HR` is replaced with `Human Resources`.

---

### Example 2

Replace "Mumbai" with "Navi Mumbai".

```sql
SELECT city,
       REPLACE(city, 'Mumbai', 'Navi Mumbai') AS updated_city
FROM employees;
```

### Explanation

The function replaces every occurrence of `Mumbai` with `Navi Mumbai`.

---

### Example 3

Replace text in a constant string.

```sql
SELECT REPLACE('Data Engineering', 'Engineering', 'Analytics') AS result;
```

### Explanation

The word `Engineering` is replaced with `Analytics`.

Result:

```
Data Analytics
```

---

### Example 4

Remove spaces from a string.

```sql
SELECT REPLACE('Data Engineering', ' ', '') AS result;
```

### Explanation

Every space is replaced with an empty string (`''`).

Result:

```
DataEngineering
```

---

### Example 5

Replace multiple occurrences.

```sql
SELECT REPLACE('SQL SQL SQL', 'SQL', 'MySQL') AS result;
```

### Explanation

Every occurrence of `SQL` is replaced with `MySQL`.

Result:

```
MySQL MySQL MySQL
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | Department |
|---------------|------------|
| Amit Sharma | HR |
| Anjali Desai | HR |
| Priya Patel | IT |

Query:

```sql
SELECT employee_name,
       department,
       REPLACE(department, 'HR', 'Human Resources') AS updated_department
FROM employees;
```

Result

| Employee Name | Department | Updated Department |
|---------------|------------|--------------------|
| Amit Sharma | HR | Human Resources |
| Anjali Desai | HR | Human Resources |
| Priya Patel | IT | IT |

The original values remain unchanged.

Only the displayed output is modified.

---

## Workflow

```
Original String

↓

REPLACE()

↓

Find Matching Text

↓

Replace with New Text

↓

Result
```

---

## Memory Tip

> 🧠 **REPLACE() finds matching text and substitutes it with new text.**

```
Data Engineering

↓

REPLACE("Engineering", "Science")

↓

Data Science
```

Think:

```
Find Text

↓

Replace

↓

New String
```

--------------------------------------------------

# REVERSE() Function

## What is it?

The `REVERSE()` function returns a string with **all characters in reverse order**.

It starts from the last character and ends with the first character.

The original string remains unchanged.

---

## Why do we need REVERSE()?

Suppose a company wants to:

- Reverse employee names for testing.
- Validate palindromes.
- Reverse product codes.
- Perform string manipulation.
- Learn string transformation functions.

Instead of manually reversing each character, the `REVERSE()` function does it automatically.

---

## Characteristics

- Reverses the entire string.
- Returns a new string.
- Does not modify the original data.
- Works with columns and constant values.
- Can be combined with other Built-in Functions.

---

## Syntax

```sql
REVERSE(string)
```

Example:

```sql
REVERSE(employee_name)
```

---

## How REVERSE() Works

Suppose the string is:

```
MySQL
```

Query:

```sql
REVERSE('MySQL')
```

Result:

```
LQSyM
```

---

## Examples

### Example 1

Reverse every employee name.

```sql
SELECT employee_name,
       REVERSE(employee_name) AS reversed_name
FROM employees;
```

### Explanation

The `REVERSE()` function reverses every character in the employee name.

---

### Example 2

Reverse every city name.

```sql
SELECT city,
       REVERSE(city) AS reversed_city
FROM employees;
```

### Explanation

The function returns each city name in reverse order.

Example:

```
Mumbai

↓

iabmuM

Delhi

↓

ihleD
```

---

### Example 3

Reverse a constant string.

```sql
SELECT REVERSE('Data Engineering') AS result;
```

### Explanation

The entire string is reversed.

Result:

```
gnireenignE ataD
```

---

### Example 4

Reverse the department names.

```sql
SELECT department,
       REVERSE(department) AS reversed_department
FROM employees;
```

### Explanation

Every department name is displayed in reverse order.

---

### Example 5

Combine `UPPER()` and `REVERSE()`.

```sql
SELECT employee_name,
       REVERSE(UPPER(employee_name)) AS transformed_name
FROM employees;
```

### Explanation

First, `UPPER()` converts the employee name to uppercase.

Then, `REVERSE()` reverses the uppercase string.

Example:

```
Amit Sharma

↓

AMIT SHARMA

↓

AMRAHS TIMA
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | City |
|---------------|------|
| Amit Sharma | Mumbai |
| Priya Patel | Pune |
| Rahul Verma | Delhi |

Query:

```sql
SELECT employee_name,
       REVERSE(employee_name) AS reversed_name
FROM employees;
```

Result

| Employee Name | Reversed Name |
|---------------|---------------|
| Amit Sharma | amrahS timA |
| Priya Patel | letaP ayirP |
| Rahul Verma | amreV luhaR |

The original values remain unchanged.

Only the displayed output is reversed.

---

## Workflow

```
Original String

↓

REVERSE()

↓

Reverse Character Order

↓

Result
```

---

## Memory Tip

> 🧠 **REVERSE() flips the entire string from end to beginning.**

```
MySQL

↓

REVERSE()

↓

LQSyM
```

Think:

```
Original

↓

Reverse

↓

New String
```

--------------------------------------------------

# INSTR() Function

## What is it?

The `INSTR()` function returns the **position of the first occurrence** of a substring within a string.

If the substring is found, it returns its position (starting from **1**).

If the substring is **not found**, it returns **0**.

It is commonly used to search for text within another string.

---

## Why do we need INSTR()?

Suppose a company wants to:

- Check whether an employee name contains a particular word.
- Find the position of a space in a full name.
- Search for a specific department code.
- Validate product codes.
- Perform text searching before extracting data.

Instead of manually checking each character, the `INSTR()` function quickly finds the required substring.

---

## Characteristics

- Searches for a substring inside a string.
- Returns the position of the first occurrence.
- Position counting starts from **1**.
- Returns **0** if the substring is not found.
- Works with columns and constant strings.
- Does not modify the original data.

---

## Syntax

```sql
INSTR(string, substring)
```

Example:

```sql
INSTR(employee_name, 'Sharma')
```

---

## How INSTR() Works

Suppose the string is:

```
Data Engineering
```

| Character | D | a | t | a | (space) | E | n | g | i | n | e | e | r | i | n | g |
|-----------|---|---|---|---|----------|---|---|---|---|---|---|---|---|---|---|---|
| Position  | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 |

Query:

```sql
SELECT INSTR('Data Engineering', 'Engineering');
```

Result:

```
6
```

---

## Examples

### Example 1

Find the position of "Sharma" in employee names.

```sql
SELECT employee_name,
       INSTR(employee_name, 'Sharma') AS position
FROM employees;
```

### Explanation

The function returns the position where the word `Sharma` first appears.

If the employee name does not contain `Sharma`, the result is **0**.

---

### Example 2

Find the position of the first space in employee names.

```sql
SELECT employee_name,
       INSTR(employee_name, ' ') AS space_position
FROM employees;
```

### Explanation

The function returns the position of the first space, which separates the first name and last name.

---

### Example 3

Search inside a constant string.

```sql
SELECT INSTR('Data Engineering', 'Engineering') AS result;
```

### Explanation

The word `Engineering` starts at position **6**.

Result:

```
6
```

---

### Example 4

Search for a department.

```sql
SELECT department,
       INSTR(department, 'IT') AS position
FROM employees;
```

### Explanation

If the department is `IT`, the function returns **1**.

For all other department names, it returns **0** because `IT` is not present.

---

### Example 5

Search for a character.

```sql
SELECT city,
       INSTR(city, 'a') AS first_a_position
FROM employees;
```

### Explanation

The function returns the position of the first occurrence of the letter `a` in each city name.

---

## Difference Between INSTR() and SUBSTRING()

| Function | Purpose |
|----------|---------|
| `INSTR()` | Finds the position of a substring |
| `SUBSTRING()` | Extracts part of a string |

Example:

```sql
INSTR('Data Engineering', 'Engineering')
```

Result:

```
6
```

```sql
SUBSTRING('Data Engineering', 6)
```

Result:

```
Engineering
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name |
|---------------|
| Amit Sharma |
| Priya Patel |
| Rahul Verma |

Query:

```sql
SELECT employee_name,
       INSTR(employee_name, ' ') AS space_position
FROM employees;
```

Result

| Employee Name | Space Position |
|---------------|----------------|
| Amit Sharma | 5 |
| Priya Patel | 6 |
| Rahul Verma | 6 |

The function identifies where the first space occurs in each employee name.

This information can later be used with functions like `SUBSTRING()` to extract first or last names.

---

## Workflow

```
Original String

↓

INSTR()

↓

Search for Substring

↓

Return Position

↓

Result
```

---

## Memory Tip

> 🧠 **INSTR() tells you where a substring starts inside another string.**

```
Data Engineering

↓

INSTR("Engineering")

↓

6
```

Think:

```
Search

↓

Find Position

↓

Return Number
```

--------------------------------------------------

# LOCATE() Function

## What is it?

The `LOCATE()` function returns the **position of the first occurrence** of a substring within a string.

If the substring is found, it returns its position (starting from **1**).

If the substring is **not found**, it returns **0**.

Unlike `INSTR()`, the `LOCATE()` function also allows you to specify the **starting position** from where the search should begin.

---

## Why do we need LOCATE()?

Suppose a company wants to:

- Find a specific word inside employee names.
- Search for the second occurrence of a character.
- Locate a department code within a string.
- Search from a specific position instead of the beginning.
- Perform flexible text searching.

The `LOCATE()` function makes searching within strings more powerful by allowing you to define where the search starts.

---

## Characteristics

- Searches for a substring inside another string.
- Returns the position of the first occurrence.
- Position counting starts from **1**.
- Returns **0** if the substring is not found.
- Allows an optional starting position.
- Does not modify the original data.

---

## Syntax

### Search from the Beginning

```sql
LOCATE(substring, string)
```

Example:

```sql
LOCATE('Sharma', employee_name)
```

---

### Search from a Specific Position

```sql
LOCATE(substring, string, start_position)
```

Example:

```sql
LOCATE('a', employee_name, 6)
```

---

## How LOCATE() Works

Suppose the string is:

```
Data Engineering
```

| Character | D | a | t | a | (space) | E | n | g | i | n | e | e | r | i | n | g |
|-----------|---|---|---|---|----------|---|---|---|---|---|---|---|---|---|---|---|
| Position | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 |

Query:

```sql
SELECT LOCATE('Engineering', 'Data Engineering');
```

Result:

```
6
```

---

## Examples

### Example 1

Find the position of "Sharma" in employee names.

```sql
SELECT employee_name,
       LOCATE('Sharma', employee_name) AS position
FROM employees;
```

### Explanation

The function searches for the word `Sharma` and returns its starting position.

If it is not found, the result is **0**.

---

### Example 2

Find the position of the first space.

```sql
SELECT employee_name,
       LOCATE(' ', employee_name) AS space_position
FROM employees;
```

### Explanation

The function returns the position of the first space in every employee name.

---

### Example 3

Search from a specific position.

```sql
SELECT LOCATE('a', 'Data Engineering', 5) AS result;
```

### Explanation

The search starts from position **5**.

The first `a` before position 5 is ignored.

Result:

```
14
```

---

### Example 4

Search inside a department name.

```sql
SELECT department,
       LOCATE('a', department) AS position
FROM employees;
```

### Explanation

The function returns the position of the first occurrence of the letter `a` in each department.

If `a` is not present, it returns **0**.

---

### Example 5

Search inside city names.

```sql
SELECT city,
       LOCATE('u', city) AS position
FROM employees;
```

### Explanation

The function searches for the first occurrence of the letter `u` in each city name.

---

## Difference Between LOCATE() and INSTR()

| Function | Difference |
|----------|------------|
| `INSTR()` | Searches from the beginning only |
| `LOCATE()` | Can search from the beginning or from a specified position |

Example:

```sql
INSTR('Data Engineering', 'a')
```

Result:

```
2
```

```sql
LOCATE('a', 'Data Engineering', 3)
```

Result:

```
4
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name |
|---------------|
| Amit Sharma |
| Priya Patel |
| Rahul Verma |

Query:

```sql
SELECT employee_name,
       LOCATE('a', employee_name) AS first_a_position
FROM employees;
```

Result

| Employee Name | Position |
|---------------|----------|
| Amit Sharma | 7 |
| Priya Patel | 5 |
| Rahul Verma | 2 |

The function identifies the first occurrence of the specified character in each employee name.

This information can be used for validation, filtering, or further string manipulation.

---

## Workflow

```
Original String

↓

LOCATE()

↓

Search Substring

↓

(Optional Start Position)

↓

Return Position

↓

Result
```

---

## Memory Tip

> 🧠 **LOCATE() finds where a substring starts and can begin searching from any specified position.**

```
Data Engineering

↓

LOCATE("a", String, 3)

↓

4
```

Think:

```
Choose Start Position

↓

Search

↓

Return Position
```

--------------------------------------------------

# ASCII() Function

## What is it?

The `ASCII()` function returns the **ASCII value** of the **first character** of a string.

ASCII (American Standard Code for Information Interchange) is a standard numeric representation for characters.

If the string starts with:

- `A` → Returns **65**
- `a` → Returns **97**
- `1` → Returns **49**
- `@` → Returns **64**

Only the **first character** is considered.

---

## Why do we need ASCII()?

Suppose a company wants to:

- Validate whether employee codes start with a letter or a number.
- Compare characters using their numeric values.
- Perform data validation.
- Sort or analyze character-based data.
- Build custom text-processing logic.

The `ASCII()` function converts the first character into its numeric ASCII value.

---

## Characteristics

- Returns the ASCII value of the first character.
- Returns an integer.
- Considers only the first character.
- Works with columns and constant strings.
- Does not modify the original data.

---

## Syntax

```sql
ASCII(string)
```

Example:

```sql
ASCII(employee_name)
```

---

## Common ASCII Values

| Character | ASCII Value |
|-----------|------------:|
| A | 65 |
| B | 66 |
| Z | 90 |
| a | 97 |
| b | 98 |
| z | 122 |
| 0 | 48 |
| 1 | 49 |
| 9 | 57 |
| Space | 32 |
| @ | 64 |
| # | 35 |

---

## How ASCII() Works

Suppose the string is:

```
Amit
```

Query:

```sql
SELECT ASCII('Amit');
```

Result:

```
65
```

Only the first character (`A`) is considered.

---

## Examples

### Example 1

Find the ASCII value of the first character of every employee name.

```sql
SELECT employee_name,
       ASCII(employee_name) AS ascii_value
FROM employees;
```

### Explanation

The function returns the ASCII value of the first character of each employee name.

Example:

```
Amit Sharma

↓

A

↓

65
```

---

### Example 2

Find the ASCII value of city names.

```sql
SELECT city,
       ASCII(city) AS ascii_value
FROM employees;
```

### Explanation

The ASCII value of the first letter of each city is returned.

---

### Example 3

Find the ASCII value of a constant string.

```sql
SELECT ASCII('MySQL') AS result;
```

### Explanation

The first character is `M`.

Result:

```
77
```

---

### Example 4

ASCII value of a numeric string.

```sql
SELECT ASCII('9ABC') AS result;
```

### Explanation

The first character is `9`.

Result:

```
57
```

---

### Example 5

ASCII value of a special character.

```sql
SELECT ASCII('@Data') AS result;
```

### Explanation

The first character is `@`.

Result:

```
64
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name |
|---------------|
| Amit Sharma |
| Priya Patel |
| Rahul Verma |

Query:

```sql
SELECT employee_name,
       ASCII(employee_name) AS first_character_code
FROM employees;
```

Result

| Employee Name | ASCII Value |
|---------------|------------:|
| Amit Sharma | 65 |
| Priya Patel | 80 |
| Rahul Verma | 82 |

The function converts the first character of each employee name into its ASCII value.

The original data remains unchanged.

---

## Workflow

```
Original String

↓

Take First Character

↓

ASCII()

↓

Return Numeric Value
```

---

## Memory Tip

> 🧠 **ASCII() returns the numeric ASCII value of only the first character of a string.**

```
Amit

↓

A

↓

ASCII()

↓

65
```

Think:

```
First Character

↓

ASCII()

↓

Number
```

--------------------------------------------------

# ORD() Function

## What is it?

The `ORD()` function returns the **numeric code (ordinal value)** of the **leftmost character** in a string.

For standard ASCII characters, `ORD()` returns the same value as the `ASCII()` function.

However, for **multi-byte characters** (such as Unicode characters), `ORD()` returns a larger numeric value representing the encoded character.

---

## Why do we need ORD()?

Suppose a company wants to:

- Convert the first character into its numeric code.
- Validate employee codes.
- Compare characters numerically.
- Process multilingual text.
- Perform advanced string analysis.

The `ORD()` function provides the numeric representation of the first character.

---

## Characteristics

- Returns the ordinal value of the first character.
- Returns an integer.
- Considers only the leftmost character.
- Supports multi-byte characters.
- Works with columns and constant strings.
- Does not modify the original data.

---

## Syntax

```sql
ORD(string)
```

Example:

```sql
ORD(employee_name)
```

---

## Difference Between ASCII() and ORD()

| Function | Description |
|----------|-------------|
| `ASCII()` | Returns the ASCII value of the first character |
| `ORD()` | Returns the ordinal value of the first character (supports multi-byte characters) |

For normal English characters, both functions return the same result.

Example:

```sql
SELECT ASCII('A');
```

Result:

```
65
```

```sql
SELECT ORD('A');
```

Result:

```
65
```

---

## Examples

### Example 1

Find the ordinal value of the first character of every employee name.

```sql
SELECT employee_name,
       ORD(employee_name) AS ordinal_value
FROM employees;
```

### Explanation

The function returns the numeric value of the first character of each employee name.

---

### Example 2

Find the ordinal value of city names.

```sql
SELECT city,
       ORD(city) AS ordinal_value
FROM employees;
```

### Explanation

The ordinal value of the first letter of each city is returned.

---

### Example 3

Find the ordinal value of a constant string.

```sql
SELECT ORD('MySQL') AS result;
```

### Explanation

The first character is `M`.

Result:

```
77
```

---

### Example 4

Find the ordinal value of a numeric string.

```sql
SELECT ORD('9ABC') AS result;
```

### Explanation

The first character is `9`.

Result:

```
57
```

---

### Example 5

Compare `ASCII()` and `ORD()`.

```sql
SELECT
ASCII('A') AS ascii_value,
ORD('A') AS ordinal_value;
```

### Explanation

Since `A` is an ASCII character, both functions return the same value.

Result

| ASCII Value | ORD Value |
|-------------|----------:|
| 65 | 65 |

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name |
|---------------|
| Amit Sharma |
| Priya Patel |
| Rahul Verma |

Query:

```sql
SELECT employee_name,
       ORD(employee_name) AS first_character_code
FROM employees;
```

Result

| Employee Name | ORD Value |
|---------------|----------:|
| Amit Sharma | 65 |
| Priya Patel | 80 |
| Rahul Verma | 82 |

The function returns the ordinal value of the first character of each employee name.

The original data remains unchanged.

---

## Workflow

```
Original String

↓

Take First Character

↓

ORD()

↓

Return Numeric Code
```

---

## Memory Tip

> 🧠 **ORD() returns the numeric (ordinal) value of the first character. For English letters, it behaves like `ASCII()`.**

```
Amit

↓

A

↓

ORD()

↓

65
```

Think:

```
First Character

↓

ORD()

↓

Numeric Value
```

--------------------------------------------------

# CHAR() Function

## What is it?

The `CHAR()` function returns the **character corresponding to one or more ASCII (or numeric) values**.

It performs the opposite operation of the `ASCII()` function.

- `ASCII()` converts a character into a number.
- `CHAR()` converts a number into a character.

---

## Why do we need CHAR()?

Suppose a company wants to:

- Convert ASCII values into readable characters.
- Generate special symbols.
- Create dynamic strings.
- Decode numeric character codes.
- Build formatted text outputs.

Instead of manually remembering ASCII codes, the `CHAR()` function converts them into characters automatically.

---

## Characteristics

- Converts numeric values into characters.
- Returns a string.
- Accepts one or multiple numeric values.
- Multiple values are combined into a single string.
- Does not modify the original data.
- Works with constants and expressions.

---

## Syntax

### Convert a Single ASCII Value

```sql
CHAR(number)
```

Example:

```sql
CHAR(65)
```

---

### Convert Multiple ASCII Values

```sql
CHAR(number1, number2, number3, ...)
```

Example:

```sql
CHAR(77,121,83,81,76)
```

---

## Common ASCII Values

| ASCII Value | Character |
|-------------|-----------|
| 65 | A |
| 66 | B |
| 67 | C |
| 77 | M |
| 83 | S |
| 97 | a |
| 98 | b |
| 49 | 1 |
| 50 | 2 |
| 64 | @ |
| 35 | # |

---

## Examples

### Example 1

Convert an ASCII value into a character.

```sql
SELECT CHAR(65) AS result;
```

### Explanation

The ASCII value **65** represents the character **A**.

Result:

```
A
```

---

### Example 2

Convert multiple ASCII values into a word.

```sql
SELECT CHAR(77,121,83,81,76) AS result;
```

### Explanation

Each ASCII value is converted into its corresponding character.

Result:

```
MySQL
```

---

### Example 3

Convert numeric values into a name.

```sql
SELECT CHAR(65,109,105,116) AS result;
```

### Explanation

The numbers represent:

```
65  → A
109 → m
105 → i
116 → t
```

Result:

```
Amit
```

---

### Example 4

Generate special characters.

```sql
SELECT CHAR(64,35,36) AS result;
```

### Explanation

The ASCII values represent:

```
64 → @
35 → #
36 → $
```

Result:

```
@#$
```

---

### Example 5

Compare `ASCII()` and `CHAR()`.

```sql
SELECT
ASCII('A') AS ascii_value,
CHAR(65) AS character;
```

### Explanation

The `ASCII()` function converts **A** into **65**.

The `CHAR()` function converts **65** back into **A**.

Result

| ASCII Value | Character |
|-------------|-----------|
| 65 | A |

---

## Difference Between CHAR() and ASCII()

| Function | Description |
|----------|-------------|
| `ASCII()` | Converts a character into its ASCII value |
| `CHAR()` | Converts an ASCII value into its corresponding character |

Example:

```sql
ASCII('A')
```

Result:

```
65
```

```sql
CHAR(65)
```

Result:

```
A
```

---

## Real-World Example

Suppose an application stores employee initials as ASCII values.

| ASCII Values |
|--------------|
| 65,74 |
| 80,80 |
| 82,75 |

Query:

```sql
SELECT
CHAR(65,74) AS initials_1,
CHAR(80,80) AS initials_2,
CHAR(82,75) AS initials_3;
```

Result

| Initials 1 | Initials 2 | Initials 3 |
|------------|------------|------------|
| AJ | PP | RK |

The numeric ASCII values are converted into readable initials.

---

## Workflow

```
ASCII Values

↓

CHAR()

↓

Convert to Characters

↓

Return String
```

---

## Memory Tip

> 🧠 **CHAR() converts numbers into characters. It is the opposite of `ASCII()`.**

```
65

↓

CHAR()

↓

A
```

Think:

```
Number

↓

CHAR()

↓

Character
```

--------------------------------------------------

# FIND_IN_SET() Function

## What is it?

The `FIND_IN_SET()` function searches for a **string within a comma-separated list of strings**.

If the string is found, it returns its **position** in the list.

If the string is **not found**, it returns **0**.

This function is useful when values are stored as comma-separated strings.

---

## Why do we need FIND_IN_SET()?

Suppose a company stores employee skills like this:

```
SQL,Python,Azure
Python,Java
Excel,SQL,Power BI
```

If you want to check whether an employee has the **SQL** skill, `FIND_IN_SET()` makes the search simple.

It is commonly used for:

- Searching tags
- Finding skills
- Checking categories
- Searching comma-separated values
- Validating list membership

> **Note:** In a well-designed relational database, storing multiple values in a single column is generally **not recommended**. Such data should ideally be normalized into separate rows. `FIND_IN_SET()` is mainly useful when working with existing comma-separated data.

---

## Characteristics

- Searches within a comma-separated list.
- Returns the position of the matching value.
- Position counting starts from **1**.
- Returns **0** if the value is not found.
- Case sensitivity depends on the column collation.
- Does not modify the original data.

---

## Syntax

```sql
FIND_IN_SET(search_string, string_list)
```

Example:

```sql
FIND_IN_SET('SQL', 'Python,SQL,Azure')
```

---

## How FIND_IN_SET() Works

Suppose the list is:

```
Python,SQL,Azure
```

| Position | Value |
|----------|-------|
| 1 | Python |
| 2 | SQL |
| 3 | Azure |

Query:

```sql
SELECT FIND_IN_SET('SQL', 'Python,SQL,Azure');
```

Result:

```
2
```

---

## Examples

### Example 1

Find the position of `SQL`.

```sql
SELECT FIND_IN_SET('SQL', 'Python,SQL,Azure') AS result;
```

### Explanation

The value `SQL` appears in the **second position**.

Result:

```
2
```

---

### Example 2

Search for a value that does not exist.

```sql
SELECT FIND_IN_SET('Java', 'Python,SQL,Azure') AS result;
```

### Explanation

Since `Java` is not present in the list, the function returns:

```
0
```

---

### Example 3

Find the first item.

```sql
SELECT FIND_IN_SET('Python', 'Python,SQL,Azure') AS result;
```

### Explanation

`Python` is the first item in the list.

Result:

```
1
```

---

### Example 4

Find the last item.

```sql
SELECT FIND_IN_SET('Azure', 'Python,SQL,Azure') AS result;
```

### Explanation

`Azure` appears in the third position.

Result:

```
3
```

---

### Example 5

Use with a table column.

```sql
SELECT employee_name,
       FIND_IN_SET('IT', 'HR,Finance,IT,Sales') AS department_position
FROM employees;
```

### Explanation

For every row, the function searches the comma-separated list and returns the position of `IT`.

Since the list is constant, the result will be the same for every row.

---

## Difference Between FIND_IN_SET() and INSTR()

| Function | Purpose |
|----------|---------|
| `FIND_IN_SET()` | Searches within a comma-separated list |
| `INSTR()` | Searches for a substring inside a string |

Example:

```sql
FIND_IN_SET('SQL', 'Python,SQL,Azure')
```

Result:

```
2
```

```sql
INSTR('Python SQL Azure', 'SQL')
```

Result:

```
8
```

---

## Real-World Example

Suppose a table contains employee skills.

| Employee Name | Skills |
|---------------|------------------------|
| Amit Sharma | SQL,Python,Azure |
| Priya Patel | Java,Python |
| Rahul Verma | Excel,SQL,Power BI |

Query:

```sql
SELECT employee_name,
       skills,
       FIND_IN_SET('SQL', skills) AS sql_position
FROM employee_skills;
```

Result

| Employee Name | Skills | SQL Position |
|---------------|------------------------|-------------:|
| Amit Sharma | SQL,Python,Azure | 1 |
| Priya Patel | Java,Python | 0 |
| Rahul Verma | Excel,SQL,Power BI | 2 |

The function returns the position of `SQL` if it exists; otherwise, it returns **0**.

---

## Workflow

```
Comma-Separated List

↓

FIND_IN_SET()

↓

Search Value

↓

Return Position

↓

Result
```

---

## Memory Tip

> 🧠 **FIND_IN_SET() searches for a value inside a comma-separated list and returns its position.**

```
Python,SQL,Azure

↓

FIND_IN_SET("SQL")

↓

2
```

Think:

```
Comma-Separated List

↓

Find Value

↓

Return Position
```

--------------------------------------------------

# FORMAT() Function

## What is it?

The `FORMAT()` function formats a number by:

- Adding **thousands separators (commas)**.
- Rounding the number to the specified number of decimal places.

It returns the formatted value as a **string**.

This function is commonly used when displaying numbers in reports and dashboards.

---

## Why do we need FORMAT()?

Suppose a company stores employee salaries like this:

```
75000
1250000
9876543.567
```

These numbers are difficult to read.

Using `FORMAT()` makes them more readable.

Example:

```
1250000

↓

12,50,000.00
```

This improves the appearance of reports and financial statements.

---

## Characteristics

- Adds thousands separators.
- Rounds numbers to the specified decimal places.
- Returns a string.
- Does not modify the original value.
- Commonly used for displaying reports.
- Works with integers and decimal values.

---

## Syntax

```sql
FORMAT(number, decimal_places)
```

Example:

```sql
FORMAT(salary, 2)
```

---

## How FORMAT() Works

Suppose the salary is:

```
1250000.756
```

Query:

```sql
SELECT FORMAT(1250000.756, 2);
```

Result:

```
1,250,000.76
```

The number is rounded to two decimal places and commas are added.

---

## Examples

### Example 1

Format employee salaries with two decimal places.

```sql
SELECT employee_name,
       FORMAT(salary, 2) AS formatted_salary
FROM employees;
```

### Explanation

The function displays every salary with commas and two decimal places.

---

### Example 2

Format a large number.

```sql
SELECT FORMAT(9876543.567, 2) AS result;
```

### Explanation

The number is rounded and formatted.

Result:

```
9,876,543.57
```

---

### Example 3

Round without decimal places.

```sql
SELECT FORMAT(9876543.567, 0) AS result;
```

### Explanation

The decimal portion is removed after rounding.

Result:

```
9,876,544
```

---

### Example 4

Format a decimal number.

```sql
SELECT FORMAT(12345.6789, 3) AS result;
```

### Explanation

The value is displayed with three decimal places.

Result:

```
12,345.679
```

---

### Example 5

Format the average salary.

```sql
SELECT FORMAT(AVG(salary), 2) AS average_salary
FROM employees;
```

### Explanation

First, `AVG()` calculates the average salary.

Then, `FORMAT()` displays the result with commas and two decimal places.

---

## Difference Between ROUND() and FORMAT()

| Function | Purpose |
|----------|---------|
| `ROUND()` | Rounds a number and returns a numeric value |
| `FORMAT()` | Rounds a number, adds thousands separators, and returns a formatted string |

Example:

```sql
SELECT ROUND(98765.4321, 2);
```

Result:

```
98765.43
```

```sql
SELECT FORMAT(98765.4321, 2);
```

Result:

```
98,765.43
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | Salary |
|---------------|--------:|
| Amit Sharma | 45000 |
| Priya Patel | 75000 |
| Rohit Gupta | 85000 |

Query:

```sql
SELECT employee_name,
       FORMAT(salary, 2) AS formatted_salary
FROM employees;
```

Result

| Employee Name | Formatted Salary |
|---------------|-----------------:|
| Amit Sharma | 45,000.00 |
| Priya Patel | 75,000.00 |
| Rohit Gupta | 85,000.00 |

The original salary values remain unchanged.

Only the displayed output is formatted for better readability.

---

## Workflow

```
Number

↓

FORMAT()

↓

Round Value

↓

Add Commas

↓

Formatted Output
```

---

## Memory Tip

> 🧠 **FORMAT() makes numbers easier to read by adding commas and rounding to the required decimal places.**

```
1250000.756

↓

FORMAT(2)

↓

1,250,000.76
```

Think:

```
Number

↓

FORMAT()

↓

Readable Number
```

--------------------------------------------------

# LPAD() Function

## What is it?

The `LPAD()` function adds characters to the **left side** of a string until it reaches a specified length.

If the original string is already longer than the specified length, MySQL truncates the string from the right to match the requested length.

It is commonly used for formatting text, creating fixed-length values, and adding leading zeros.

---

## Why do we need LPAD()?

Suppose a company wants to:

- Display employee IDs with leading zeros.
- Create fixed-length product codes.
- Align report output.
- Generate formatted account numbers.
- Standardize code lengths.

Instead of manually adding characters, the `LPAD()` function automatically pads the string.

---

## Characteristics

- Adds characters to the left side of a string.
- Returns a string.
- Pads until the specified length is reached.
- Truncates the string if the specified length is smaller.
- Works with text and numeric values.
- Does not modify the original data.

---

## Syntax

```sql
LPAD(string, length, pad_string)
```

Example:

```sql
LPAD(employee_id, 5, '0')
```

---

## How LPAD() Works

Suppose the employee ID is:

```
101
```

Query:

```sql
SELECT LPAD('101', 5, '0');
```

Result:

```
00101
```

Two zeros are added to the left to make the total length equal to **5**.

---

## Examples

### Example 1

Add leading zeros to employee IDs.

```sql
SELECT employee_id,
       LPAD(employee_id, 5, '0') AS formatted_id
FROM employees;
```

### Explanation

The function pads each employee ID with zeros until it becomes five characters long.

---

### Example 2

Pad employee names with `*`.

```sql
SELECT employee_name,
       LPAD(employee_name, 18, '*') AS padded_name
FROM employees;
```

### Explanation

The function adds `*` characters to the beginning of the employee name until the total length becomes 18.

---

### Example 3

Pad a constant string.

```sql
SELECT LPAD('SQL', 8, '#') AS result;
```

### Explanation

The string `SQL` is padded with `#` characters on the left.

Result:

```
#####SQL
```

---

### Example 4

Pad city names with spaces.

```sql
SELECT city,
       LPAD(city, 12, ' ') AS aligned_city
FROM employees;
```

### Explanation

Spaces are added to the left so that every city name occupies the same width.

---

### Example 5

Truncate when the specified length is smaller.

```sql
SELECT LPAD('Database', 4, '*') AS result;
```

### Explanation

Since the requested length is **4**, MySQL truncates the string.

Result:

```
Data
```

---

## Difference Between LPAD() and RPAD()

| Function | Pads On |
|----------|---------|
| `LPAD()` | Left side |
| `RPAD()` | Right side |

Example:

```sql
LPAD('SQL', 6, '0')
```

Result:

```
000SQL
```

```sql
RPAD('SQL', 6, '0')
```

Result:

```
SQL000
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee ID | Employee Name |
|-------------|---------------|
| 101 | Amit Sharma |
| 102 | Priya Patel |
| 110 | Pooja Nair |

Query:

```sql
SELECT employee_id,
       LPAD(employee_id, 6, '0') AS employee_code
FROM employees;
```

Result

| Employee ID | Employee Code |
|-------------|---------------|
| 101 | 000101 |
| 102 | 000102 |
| 110 | 000110 |

The original employee IDs remain unchanged.

Only the displayed output is formatted.

---

## Workflow

```
Original String

↓

LPAD()

↓

Add Characters on Left

↓

Required Length Reached

↓

Formatted String
```

---

## Memory Tip

> 🧠 **LPAD() adds characters to the Left side until the required length is reached.**

```
101

↓

LPAD(5,'0')

↓

00101
```

Think:

```
Left Side

↓

Add Characters

↓

Required Length

↓

Result
```

--------------------------------------------------

# RPAD() Function

## What is it?

The `RPAD()` function adds characters to the **right side** of a string until it reaches a specified length.

If the original string is already longer than the specified length, MySQL truncates the string from the right to match the requested length.

It is commonly used for formatting text, creating fixed-length values, and aligning report output.

---

## Why do we need RPAD()?

Suppose a company wants to:

- Create fixed-length employee codes.
- Align text in reports.
- Add symbols after product names.
- Standardize the length of strings.
- Generate formatted output for exports.

Instead of manually adding characters, the `RPAD()` function automatically pads the string.

---

## Characteristics

- Adds characters to the right side of a string.
- Returns a string.
- Pads until the specified length is reached.
- Truncates the string if the specified length is smaller.
- Works with text and numeric values.
- Does not modify the original data.

---

## Syntax

```sql
RPAD(string, length, pad_string)
```

Example:

```sql
RPAD(employee_name, 15, '*')
```

---

## How RPAD() Works

Suppose the employee ID is:

```
101
```

Query:

```sql
SELECT RPAD('101', 5, '0');
```

Result:

```
10100
```

Two zeros are added to the right to make the total length equal to **5**.

---

## Examples

### Example 1

Add zeros to the right of employee IDs.

```sql
SELECT employee_id,
       RPAD(employee_id, 5, '0') AS formatted_id
FROM employees;
```

### Explanation

The function pads each employee ID with zeros until it becomes five characters long.

---

### Example 2

Pad employee names with `*`.

```sql
SELECT employee_name,
       RPAD(employee_name, 18, '*') AS padded_name
FROM employees;
```

### Explanation

The function adds `*` characters to the end of each employee name until the total length becomes 18.

---

### Example 3

Pad a constant string.

```sql
SELECT RPAD('SQL', 8, '#') AS result;
```

### Explanation

The string `SQL` is padded with `#` characters on the right.

Result:

```
SQL#####
```

---

### Example 4

Pad city names with spaces.

```sql
SELECT city,
       RPAD(city, 12, ' ') AS aligned_city
FROM employees;
```

### Explanation

Spaces are added to the right so that every city name occupies the same width.

---

### Example 5

Truncate when the specified length is smaller.

```sql
SELECT RPAD('Database', 4, '*') AS result;
```

### Explanation

Since the requested length is **4**, MySQL truncates the string.

Result:

```
Data
```

---

## Difference Between RPAD() and LPAD()

| Function | Pads On |
|----------|---------|
| `RPAD()` | Right side |
| `LPAD()` | Left side |

Example:

```sql
RPAD('SQL', 6, '0')
```

Result:

```
SQL000
```

```sql
LPAD('SQL', 6, '0')
```

Result:

```
000SQL
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | Department |
|---------------|------------|
| Amit Sharma | HR |
| Priya Patel | IT |
| Rahul Verma | Finance |

Query:

```sql
SELECT employee_name,
       RPAD(employee_name, 20, '.') AS formatted_name
FROM employees;
```

Result

| Employee Name | Formatted Name |
|---------------|----------------|
| Amit Sharma | Amit Sharma......... |
| Priya Patel | Priya Patel......... |
| Rahul Verma | Rahul Verma......... |

The original employee names remain unchanged.

Only the displayed output is formatted.

---

## Workflow

```
Original String

↓

RPAD()

↓

Add Characters on Right

↓

Required Length Reached

↓

Formatted String
```

---

## Memory Tip

> 🧠 **RPAD() adds characters to the Right side until the required length is reached.**

```
101

↓

RPAD(5,'0')

↓

10100
```

Think:

```
Right Side

↓

Add Characters

↓

Required Length

↓

Result
```

--------------------------------------------------

# ELT() Function

## What is it?

The `ELT()` function returns the **string at a specified position** from a list of strings.

Think of it as selecting an item from a list based on its position.

If the specified position does not exist, the function returns **NULL**.

---

## Why do we need ELT()?

Suppose a company stores status codes as numbers:

| Code | Status |
|------|--------|
| 1 | Active |
| 2 | Inactive |
| 3 | On Leave |

Instead of writing multiple `CASE` statements, you can use `ELT()` to quickly return the corresponding status.

It is commonly used for:

- Mapping numbers to text.
- Returning predefined values.
- Creating labels.
- Displaying readable reports.
- Simple lookup operations.

---

## Characteristics

- Returns a string from a list.
- Position counting starts from **1**.
- Returns **NULL** if the position is invalid.
- Accepts multiple string values.
- Returns only one value.
- Does not modify the original data.

---

## Syntax

```sql
ELT(position, string1, string2, string3, ...)
```

Example:

```sql
ELT(2, 'HR', 'IT', 'Finance')
```

---

## How ELT() Works

Suppose the list is:

```
HR
IT
Finance
Sales
```

| Position | Value |
|----------|-------|
| 1 | HR |
| 2 | IT |
| 3 | Finance |
| 4 | Sales |

Query:

```sql
SELECT ELT(3, 'HR', 'IT', 'Finance', 'Sales');
```

Result:

```
Finance
```

---

## Examples

### Example 1

Return the second department.

```sql
SELECT ELT(2, 'HR', 'IT', 'Finance', 'Sales') AS result;
```

### Explanation

The second value in the list is returned.

Result:

```
IT
```

---

### Example 2

Return the first city.

```sql
SELECT ELT(1, 'Mumbai', 'Pune', 'Delhi') AS result;
```

### Explanation

The first value is selected.

Result:

```
Mumbai
```

---

### Example 3

Return the fourth value.

```sql
SELECT ELT(4, 'A', 'B', 'C', 'D', 'E') AS result;
```

### Explanation

The fourth string in the list is returned.

Result:

```
D
```

---

### Example 4

Invalid position.

```sql
SELECT ELT(6, 'HR', 'IT', 'Finance') AS result;
```

### Explanation

Only three values exist.

Since position **6** does not exist, the function returns:

```
NULL
```

---

### Example 5

Use with a table column.

```sql
SELECT employee_name,
       ELT(2, 'Junior', 'Senior', 'Manager') AS designation_level
FROM employees;
```

### Explanation

The function always returns the second value (`Senior`) for every row because the position is fixed.

---

## Difference Between ELT() and FIELD()

| Function | Purpose |
|----------|---------|
| `ELT()` | Returns the value at a specified position |
| `FIELD()` | Returns the position of a specified value |

Example:

```sql
SELECT ELT(2, 'HR', 'IT', 'Finance');
```

Result:

```
IT
```

```sql
SELECT FIELD('IT', 'HR', 'IT', 'Finance');
```

Result:

```
2
```

---

## Real-World Example

Suppose employee grades are stored as numbers.

| Grade Number |
|-------------:|
| 1 |
| 2 |
| 3 |

Query:

```sql
SELECT
ELT(1, 'Excellent', 'Good', 'Average') AS grade_1,
ELT(2, 'Excellent', 'Good', 'Average') AS grade_2,
ELT(3, 'Excellent', 'Good', 'Average') AS grade_3;
```

Result

| Grade 1 | Grade 2 | Grade 3 |
|----------|----------|----------|
| Excellent | Good | Average |

The numeric position is converted into a readable text value.

---

## Workflow

```
Position Number

↓

ELT()

↓

Select Matching Value

↓

Return String
```

---

## Memory Tip

> 🧠 **ELT() takes a position number and returns the value stored at that position.**

```
ELT(2, 'HR', 'IT', 'Finance')

↓

IT
```

Think:

```
Position

↓

ELT()

↓

Value
```

--------------------------------------------------

# FIELD() Function

## What is it?

The `FIELD()` function returns the **position (index)** of a specified value within a list of values.

If the value is found, it returns its position.

If the value is **not found**, it returns **0**.

Think of it as the opposite of the `ELT()` function.

- `ELT()` → Position → Value
- `FIELD()` → Value → Position

---

## Why do we need FIELD()?

Suppose a company wants to:

- Find the priority of an order status.
- Assign rankings based on predefined values.
- Sort data in a custom order.
- Check whether a value exists in a list.
- Create custom business logic.

Instead of writing multiple comparison conditions, `FIELD()` quickly returns the position of a value.

---

## Characteristics

- Returns the position of a value in a list.
- Position counting starts from **1**.
- Returns **0** if the value is not found.
- Returns an integer.
- Frequently used for custom sorting.
- Does not modify the original data.

---

## Syntax

```sql
FIELD(search_value, value1, value2, value3, ...)
```

Example:

```sql
FIELD('IT', 'HR', 'IT', 'Finance')
```

---

## How FIELD() Works

Suppose the list is:

```
HR
IT
Finance
Sales
```

| Position | Value |
|----------|-------|
| 1 | HR |
| 2 | IT |
| 3 | Finance |
| 4 | Sales |

Query:

```sql
SELECT FIELD('Finance', 'HR', 'IT', 'Finance', 'Sales');
```

Result:

```
3
```

---

## Examples

### Example 1

Find the position of `IT`.

```sql
SELECT FIELD('IT', 'HR', 'IT', 'Finance', 'Sales') AS result;
```

### Explanation

The value `IT` appears in the second position.

Result:

```
2
```

---

### Example 2

Find the position of `Sales`.

```sql
SELECT FIELD('Sales', 'HR', 'IT', 'Finance', 'Sales') AS result;
```

### Explanation

The value `Sales` is in the fourth position.

Result:

```
4
```

---

### Example 3

Search for a value that does not exist.

```sql
SELECT FIELD('Marketing', 'HR', 'IT', 'Finance', 'Sales') AS result;
```

### Explanation

Since `Marketing` is not present in the list, the function returns:

```
0
```

---

### Example 4

Use with numeric values.

```sql
SELECT FIELD(30, 10, 20, 30, 40, 50) AS result;
```

### Explanation

The number `30` is the third value in the list.

Result:

```
3
```

---

### Example 5

Custom sorting using `ORDER BY`.

```sql
SELECT employee_name,
       department
FROM employees
ORDER BY FIELD(department, 'IT', 'HR', 'Finance', 'Sales', 'Marketing');
```

### Explanation

Normally, `ORDER BY` sorts values alphabetically.

Using `FIELD()`, departments are sorted in the specified order:

```
IT

↓

HR

↓

Finance

↓

Sales

↓

Marketing
```

---

## Difference Between FIELD() and ELT()

| Function | Purpose |
|----------|---------|
| `FIELD()` | Finds the position of a value |
| `ELT()` | Returns the value at a specified position |

Example:

```sql
SELECT FIELD('IT', 'HR', 'IT', 'Finance');
```

Result:

```
2
```

```sql
SELECT ELT(2, 'HR', 'IT', 'Finance');
```

Result:

```
IT
```

---

## Real-World Example

Suppose a company wants to display departments in this order:

1. IT
2. HR
3. Finance
4. Sales
5. Marketing

Query:

```sql
SELECT employee_name,
       department
FROM employees
ORDER BY FIELD(department, 'IT', 'HR', 'Finance', 'Sales', 'Marketing');
```

Result

| Employee Name | Department |
|---------------|------------|
| Priya Patel | IT |
| Rohit Gupta | IT |
| Amit Sharma | HR |
| Anjali Desai | HR |
| Rahul Verma | Finance |
| Vikas Kumar | Finance |
| Karan Mehta | Sales |
| Pooja Nair | Sales |
| Neha Singh | Marketing |

Instead of alphabetical sorting, the departments are displayed in the custom business order.

---

## Workflow

```
Search Value

↓

FIELD()

↓

Find Position

↓

Return Position Number
```

---

## Memory Tip

> 🧠 **FIELD() takes a value and tells you its position in a list. It is the opposite of `ELT()`.**

```
FIELD('IT', 'HR', 'IT', 'Finance')

↓

2
```

Think:

```
Value

↓

FIELD()

↓

Position
```

--------------------------------------------------

# MAKE_SET() Function

## What is it?

The `MAKE_SET()` function returns a **comma-separated string** based on the **bits that are set (1)** in a numeric value.

Each bit in the number corresponds to one string in the provided list.

If a bit is **1**, the corresponding string is included in the result.

If a bit is **0**, that string is ignored.

It is commonly used with **bitmask values**.

---

## Why do we need MAKE_SET()?

Suppose a company stores employee permissions using numbers.

| Permission | Bit |
|------------|-----|
| Read | 1 |
| Write | 2 |
| Execute | 4 |
| Delete | 8 |

Instead of storing multiple text values, the database stores a single number.

Using `MAKE_SET()`, you can convert that number into readable permission names.

---

## Characteristics

- Returns a comma-separated string.
- Uses bit values (binary representation).
- Includes only the strings whose corresponding bits are set.
- Returns an empty string if no bits are set.
- Commonly used with bitmask values.
- Does not modify the original data.

---

## Syntax

```sql
MAKE_SET(bits, string1, string2, string3, ...)
```

Example:

```sql
MAKE_SET(3, 'Read', 'Write', 'Execute')
```

---

## How MAKE_SET() Works

Suppose the list is:

| Bit Position | String |
|-------------:|--------|
| 1 | Read |
| 2 | Write |
| 3 | Execute |
| 4 | Delete |

Now consider the value:

```
3
```

Binary representation:

```
3

↓

0011
```

```
Bit 4 → 0 → Delete ❌
Bit 3 → 0 → Execute ❌
Bit 2 → 1 → Write ✔
Bit 1 → 1 → Read ✔
```

Query:

```sql
SELECT MAKE_SET(3, 'Read', 'Write', 'Execute', 'Delete');
```

Result:

```
Read,Write
```

---

## Examples

### Example 1

Convert a bit value into permission names.

```sql
SELECT MAKE_SET(3, 'Read', 'Write', 'Execute') AS result;
```

### Explanation

Binary value of **3** is:

```
011
```

The first and second bits are set.

Result:

```
Read,Write
```

---

### Example 2

Return a single value.

```sql
SELECT MAKE_SET(4, 'Read', 'Write', 'Execute') AS result;
```

### Explanation

Binary value of **4** is:

```
100
```

Only the third bit is set.

Result:

```
Execute
```

---

### Example 3

Return multiple values.

```sql
SELECT MAKE_SET(7, 'Read', 'Write', 'Execute') AS result;
```

### Explanation

Binary value of **7** is:

```
111
```

All three bits are set.

Result:

```
Read,Write,Execute
```

---

### Example 4

No bits are set.

```sql
SELECT MAKE_SET(0, 'Read', 'Write', 'Execute') AS result;
```

### Explanation

Binary value of **0** is:

```
000
```

No bits are set.

Result:

```
''
```

(An empty string is returned.)

---

### Example 5

Use more values.

```sql
SELECT MAKE_SET(13, 'Read', 'Write', 'Execute', 'Delete') AS result;
```

### Explanation

Binary value of **13** is:

```
1101
```

The first, third, and fourth bits are set.

Result:

```
Read,Execute,Delete
```

---

## Difference Between MAKE_SET() and ELT()

| Function | Purpose |
|----------|---------|
| `MAKE_SET()` | Returns multiple comma-separated values based on bit positions |
| `ELT()` | Returns one value based on a numeric position |

Example:

```sql
SELECT MAKE_SET(5, 'Read', 'Write', 'Execute');
```

Result:

```
Read,Execute
```

```sql
SELECT ELT(2, 'Read', 'Write', 'Execute');
```

Result:

```
Write
```

---

## Real-World Example

Suppose an application stores employee permissions as bit values.

| Employee | Permission Value |
|----------|-----------------:|
| Amit | 3 |
| Priya | 5 |
| Rahul | 7 |

Query:

```sql
SELECT
employee_name,
MAKE_SET(permission_value,
         'Read',
         'Write',
         'Execute') AS permissions
FROM employee_permissions;
```

Result

| Employee | Permission Value | Permissions |
|----------|-----------------:|-------------|
| Amit | 3 | Read,Write |
| Priya | 5 | Read,Execute |
| Rahul | 7 | Read,Write,Execute |

The numeric permission values are converted into readable permission names.

---

## Workflow

```
Bit Value

↓

Binary Representation

↓

MAKE_SET()

↓

Select Matching Strings

↓

Comma-Separated Result
```

---

## Memory Tip

> 🧠 **MAKE_SET() checks which bits are 1 and returns the corresponding strings.**

```
7

↓

111

↓

MAKE_SET()

↓

Read,Write,Execute
```

Think:

```
Bit Value

↓

Check Bits

↓

Return Matching Strings
```

--------------------------------------------------

# EXPORT_SET() Function

## What is it?

The `EXPORT_SET()` function converts a **bit value (binary number)** into a formatted string.

For each bit:

- If the bit is **1**, one value is displayed.
- If the bit is **0**, another value is displayed.

Unlike `MAKE_SET()`, which returns only the names of the enabled bits, `EXPORT_SET()` displays **every bit** using custom symbols or text.

It is commonly used to visualize binary flags and permissions.

---

## Why do we need EXPORT_SET()?

Suppose a company stores employee permissions as bit values.

| Permission | Bit |
|------------|-----|
| Read | 1 |
| Write | 2 |
| Execute | 4 |
| Delete | 8 |

Instead of showing:

```
13
```

You can display:

```
Yes,No,Yes,Yes
```

or

```
✔,✘,✔,✔
```

This makes reports much easier to understand.

---

## Characteristics

- Converts bit values into readable text.
- Returns a formatted string.
- Displays every bit.
- Allows custom values for **1** and **0**.
- Supports custom separators.
- Does not modify the original data.

---

## Syntax

```sql
EXPORT_SET(bits, on_string, off_string)
```

---

### With Custom Separator

```sql
EXPORT_SET(bits, on_string, off_string, separator)
```

---

### With Custom Number of Bits

```sql
EXPORT_SET(bits, on_string, off_string, separator, number_of_bits)
```

Example:

```sql
EXPORT_SET(5, 'Yes', 'No', ',', 4)
```

---

## How EXPORT_SET() Works

Suppose the bit value is:

```
5
```

Binary representation:

```
0101
```

Using:

```sql
EXPORT_SET(5, 'Yes', 'No', ',', 4)
```

Result:

```
Yes,No,Yes,No
```

Explanation:

| Bit | Value |
|----:|-------|
| 1 | Yes |
| 2 | No |
| 3 | Yes |
| 4 | No |

---

## Examples

### Example 1

Display permissions using Yes and No.

```sql
SELECT EXPORT_SET(5, 'Yes', 'No') AS result;
```

### Explanation

Binary value of **5** is:

```
101
```

Result:

```
Yes,No,Yes
```

---

### Example 2

Use custom symbols.

```sql
SELECT EXPORT_SET(6, '✔', '✘') AS result;
```

### Explanation

Binary value of **6** is:

```
110
```

Result:

```
✘,✔,✔
```

---

### Example 3

Use a custom separator.

```sql
SELECT EXPORT_SET(7, 'ON', 'OFF', ' | ') AS result;
```

### Explanation

Binary value of **7** is:

```
111
```

Result:

```
ON | ON | ON
```

---

### Example 4

Specify the number of bits.

```sql
SELECT EXPORT_SET(3, '1', '0', ',', 5) AS result;
```

### Explanation

Binary value of **3** is:

```
00011
```

Result:

```
1,1,0,0,0
```

The output contains five values because the fifth argument specifies the number of bits.

---

### Example 5

Display permission status.

```sql
SELECT EXPORT_SET(13, 'Allowed', 'Denied', ', ', 4) AS result;
```

### Explanation

Binary value of **13** is:

```
1101
```

Result:

```
Allowed, Denied, Allowed, Allowed
```

---

## Difference Between EXPORT_SET() and MAKE_SET()

| Function | Purpose |
|----------|---------|
| `EXPORT_SET()` | Displays every bit using custom values |
| `MAKE_SET()` | Returns only the names of enabled bits |

Example:

```sql
SELECT EXPORT_SET(5, 'Yes', 'No');
```

Result:

```
Yes,No,Yes
```

```sql
SELECT MAKE_SET(5, 'Read', 'Write', 'Execute');
```

Result:

```
Read,Execute
```

---

## Real-World Example

Suppose an application stores employee permissions as bit values.

| Employee | Permission Value |
|----------|-----------------:|
| Amit | 3 |
| Priya | 5 |
| Rahul | 6 |

Query:

```sql
SELECT
employee_name,
EXPORT_SET(permission_value,
           'Granted',
           'Denied',
           ', ',
           3) AS permission_status
FROM employee_permissions;
```

Result

| Employee | Permission Value | Permission Status |
|----------|-----------------:|-------------------|
| Amit | 3 | Granted, Granted, Denied |
| Priya | 5 | Granted, Denied, Granted |
| Rahul | 6 | Denied, Granted, Granted |

The numeric permission values are displayed as readable permission statuses.

---

## Workflow

```
Bit Value

↓

Binary Representation

↓

EXPORT_SET()

↓

Replace 1 and 0

↓

Formatted Output
```

---

## Memory Tip

> 🧠 **EXPORT_SET() displays every bit using custom text or symbols.**

```
5

↓

101

↓

EXPORT_SET()

↓

Yes,No,Yes
```

Think:

```
Bit Value

↓

Check Every Bit

↓

Replace 1 & 0

↓

Formatted Result
```

--------------------------------------------------

# INSERT() Function

## What is it?

The `INSERT()` function replaces a specified portion of a string with another string.

It starts at a given position, removes a specified number of characters, and inserts a new string in their place.

> **Note:** The `INSERT()` function is a **string function**. It is different from the SQL `INSERT` statement, which is used to add rows into a table.

---

## Why do we need INSERT()?

Suppose a company wants to:

- Correct spelling mistakes in text.
- Update part of an employee code.
- Replace part of a phone number.
- Mask sensitive information.
- Modify a portion of a string without replacing the entire value.

Instead of rebuilding the complete string, the `INSERT()` function replaces only the required portion.

---

## Characteristics

- Replaces part of a string.
- Returns a new string.
- Starts replacing from a specified position.
- Removes a specified number of characters.
- Inserts a new string in place of the removed characters.
- Does not modify the original data.

---

## Syntax

```sql
INSERT(string, position, length, new_string)
```

Example:

```sql
INSERT(employee_name, 6, 6, 'Kumar')
```

---

## How INSERT() Works

Suppose the string is:

```
Data Engineering
```

Query:

```sql
SELECT INSERT('Data Engineering', 6, 11, 'Science');
```

Result:

```
Data Science
```

Explanation:

```
Data Engineering
     ↑
Start at Position 6

↓

Remove 11 Characters

↓

Insert "Science"

↓

Data Science
```

---

## Examples

### Example 1

Replace the last name of an employee.

```sql
SELECT INSERT('Amit Sharma', 6, 6, 'Kumar') AS result;
```

### Explanation

Starting from position **6**, six characters (`Sharma`) are removed and replaced with `Kumar`.

Result:

```
Amit Kumar
```

---

### Example 2

Replace part of a city name.

```sql
SELECT INSERT('Bengaluru', 1, 4, 'Manga') AS result;
```

### Explanation

The first four characters are replaced with `Manga`.

Result:

```
Mangaluru
```

---

### Example 3

Replace part of a constant string.

```sql
SELECT INSERT('Data Engineering', 6, 11, 'Analytics') AS result;
```

### Explanation

The word `Engineering` is replaced with `Analytics`.

Result:

```
Data Analytics
```

---

### Example 4

Mask part of a phone number.

```sql
SELECT INSERT('9876543210', 4, 4, '****') AS result;
```

### Explanation

The middle four digits are replaced with asterisks.

Result:

```
987****210
```

---

### Example 5

Use with a table column.

```sql
SELECT employee_name,
       INSERT(employee_name, 1, 4, 'Mr.') AS updated_name
FROM employees;
```

### Explanation

The first four characters of each employee name are replaced with `Mr.`.

For example:

```
Amit Sharma

↓

Mr. Sharma
```

---

## Difference Between INSERT() and REPLACE()

| Function | Purpose |
|----------|---------|
| `INSERT()` | Replaces characters based on position and length |
| `REPLACE()` | Replaces matching text wherever it appears |

Example:

```sql
SELECT INSERT('Amit Sharma', 6, 6, 'Kumar');
```

Result:

```
Amit Kumar
```

```sql
SELECT REPLACE('Amit Sharma', 'Sharma', 'Kumar');
```

Result:

```
Amit Kumar
```

The output is the same, but the way each function works is different.

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name |
|---------------|
| Amit Sharma |
| Priya Patel |
| Rahul Verma |

Query:

```sql
SELECT employee_name,
       INSERT(employee_name, 1, 5, 'Employee: ') AS formatted_name
FROM employees;
```

Result

| Employee Name | Formatted Name |
|---------------|---------------------------|
| Amit Sharma | Employee: Sharma |
| Priya Patel | Employee: Patel |
| Rahul Verma | Employee: Verma |

The original employee names remain unchanged.

Only the displayed output is modified.

---

## Workflow

```
Original String

↓

Choose Start Position

↓

Remove Characters

↓

Insert New String

↓

Updated String
```

---

## Memory Tip

> 🧠 **INSERT() replaces a specific part of a string using its position and length.**

```
Amit Sharma

↓

INSERT(6, 6, 'Kumar')

↓

Amit Kumar
```

Think:

```
Position

↓

Remove

↓

Insert

↓

Result
```

--------------------------------------------------

# REPEAT() Function

## What is it?

The `REPEAT()` function returns a string by **repeating it a specified number of times**.

It duplicates the given string continuously based on the number you provide.

If the repetition count is **0**, an empty string is returned.

---

## Why do we need REPEAT()?

Suppose a company wants to:

- Generate separators in reports.
- Create simple patterns.
- Display repeated symbols.
- Produce sample test data.
- Format output for dashboards.

Instead of writing the same text multiple times, the `REPEAT()` function generates it automatically.

---

## Characteristics

- Repeats a string multiple times.
- Returns a string.
- Accepts any text value.
- Returns an empty string if the count is `0`.
- Does not modify the original data.
- Works with columns, constants, and expressions.

---

## Syntax

```sql
REPEAT(string, count)
```

Example:

```sql
REPEAT('SQL', 3)
```

---

## How REPEAT() Works

Suppose the string is:

```
SQL
```

Query:

```sql
SELECT REPEAT('SQL', 3);
```

Result:

```
SQLSQLSQL
```

The string is repeated three times.

---

## Examples

### Example 1

Repeat a word three times.

```sql
SELECT REPEAT('MySQL', 3) AS result;
```

### Explanation

The string `MySQL` is repeated three times.

Result:

```
MySQLMySQLMySQL
```

---

### Example 2

Repeat a symbol.

```sql
SELECT REPEAT('*', 10) AS result;
```

### Explanation

The `*` symbol is repeated ten times.

Result:

```
**********
```

---

### Example 3

Repeat a constant string.

```sql
SELECT REPEAT('Data ', 4) AS result;
```

### Explanation

The word `Data` is repeated four times.

Result:

```
Data Data Data Data
```

---

### Example 4

Repeat values from a table.

```sql
SELECT employee_name,
       REPEAT('*', 5) AS rating
FROM employees;
```

### Explanation

For every employee, five asterisks are displayed.

Example:

```
*****
```

---

### Example 5

Repeat the first letter of each employee name.

```sql
SELECT employee_name,
       REPEAT(LEFT(employee_name, 1), 4) AS repeated_letter
FROM employees;
```

### Explanation

First, `LEFT()` extracts the first character of the employee name.

Then, `REPEAT()` repeats that character four times.

Example:

```
Amit Sharma

↓

A

↓

AAAA
```

---

## Difference Between REPEAT() and CONCAT()

| Function | Purpose |
|----------|---------|
| `REPEAT()` | Repeats the same string multiple times |
| `CONCAT()` | Joins two or more different strings |

Example:

```sql
SELECT REPEAT('SQL', 3);
```

Result:

```
SQLSQLSQL
```

```sql
SELECT CONCAT('SQL', ' ', 'Python');
```

Result:

```
SQL Python
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | Department |
|---------------|------------|
| Amit Sharma | HR |
| Priya Patel | IT |
| Rahul Verma | Finance |

Query:

```sql
SELECT employee_name,
       REPEAT('-', 15) AS separator
FROM employees;
```

Result

| Employee Name | Separator |
|---------------|-----------------|
| Amit Sharma | --------------- |
| Priya Patel | --------------- |
| Rahul Verma | --------------- |

The separator can be used while generating reports or formatted outputs.

The original data remains unchanged.

---

## Workflow

```
Original String

↓

REPEAT()

↓

Specify Count

↓

Repeat String

↓

Result
```

---

## Memory Tip

> 🧠 **REPEAT() duplicates a string the specified number of times.**

```
SQL

↓

REPEAT(3)

↓

SQLSQLSQL
```

Think:

```
String

↓

Repeat Count

↓

Repeated Output
```

--------------------------------------------------

# SPACE() Function

## What is it?

The `SPACE()` function returns a string consisting of a **specified number of space characters**.

Instead of manually typing multiple spaces, you can use the `SPACE()` function to generate them automatically.

It is commonly used for formatting text and creating aligned output.

---

## Why do we need SPACE()?

Suppose a company wants to:

- Format employee reports.
- Align columns in text output.
- Add spaces between words.
- Generate readable reports.
- Create properly formatted strings.

Instead of typing multiple spaces manually, the `SPACE()` function creates them automatically.

---

## Characteristics

- Returns a string containing spaces.
- Accepts only one numeric argument.
- Returns an empty string if the value is `0`.
- Does not modify the original data.
- Commonly used with `CONCAT()` for formatting.

---

## Syntax

```sql
SPACE(number_of_spaces)
```

Example:

```sql
SPACE(5)
```

---

## How SPACE() Works

Query:

```sql
SELECT CONCAT('SQL', SPACE(5), 'Python');
```

Result:

```
SQL     Python
```

Five spaces are inserted between the two words.

---

## Examples

### Example 1

Generate five spaces.

```sql
SELECT SPACE(5) AS result;
```

### Explanation

The function returns a string containing five spaces.

Result:

```
'     '
```

---

### Example 2

Add spaces between two words.

```sql
SELECT CONCAT('Data', SPACE(3), 'Engineering') AS result;
```

### Explanation

Three spaces are inserted between `Data` and `Engineering`.

Result:

```
Data   Engineering
```

---

### Example 3

Format employee names.

```sql
SELECT CONCAT(employee_name, SPACE(5), department) AS employee_details
FROM employees;
```

### Explanation

The function inserts five spaces between the employee name and department.

Example:

```
Amit Sharma     HR
```

---

### Example 4

Generate zero spaces.

```sql
SELECT SPACE(0) AS result;
```

### Explanation

Since the requested number of spaces is `0`, the function returns an empty string.

Result:

```
''
```

---

### Example 5

Combine with `REPEAT()`.

```sql
SELECT CONCAT(REPEAT('*', 5), SPACE(2), 'Report') AS result;
```

### Explanation

First, `REPEAT()` generates five asterisks.

Then, `SPACE()` inserts two spaces before the word `Report`.

Result:

```
*****  Report
```

---

## Difference Between SPACE() and REPEAT()

| Function | Purpose |
|----------|---------|
| `SPACE()` | Generates a specified number of spaces |
| `REPEAT()` | Repeats any string multiple times |

Example:

```sql
SELECT SPACE(4);
```

Result:

```
'    '
```

```sql
SELECT REPEAT('*', 4);
```

Result:

```
****
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | Department |
|---------------|------------|
| Amit Sharma | HR |
| Priya Patel | IT |
| Rahul Verma | Finance |

Query:

```sql
SELECT CONCAT(employee_name,
              SPACE(8),
              department) AS employee_information
FROM employees;
```

Result

| Employee Information |
|----------------------|
| Amit Sharma        HR |
| Priya Patel        IT |
| Rahul Verma        Finance |

The additional spaces improve the readability of the displayed output.

The original data remains unchanged.

---

## Workflow

```
Number

↓

SPACE()

↓

Generate Spaces

↓

Return Space String
```

---

## Memory Tip

> 🧠 **SPACE() creates the specified number of blank spaces.**

```
SPACE(5)

↓

'     '
```

Think:

```
Number

↓

SPACE()

↓

Blank Spaces
```

--------------------------------------------------

# QUOTE() Function

## What is it?

The `QUOTE()` function returns a string enclosed in **single quotes (`'`)**.

It also automatically escapes special characters such as:

- Single quote (`'`)
- Backslash (`\`)
- NULL (`\0`)

This makes the returned string safe for use in SQL statements.

---

## Why do we need QUOTE()?

Suppose a company stores employee names like:

```
O'Brien
```

If you directly use this value in an SQL query, the single quote can cause a syntax error.

Using `QUOTE()` automatically escapes special characters and surrounds the string with single quotes.

It is commonly used for:

- Generating SQL statements.
- Escaping special characters.
- Exporting data.
- Logging SQL queries.
- Preventing syntax errors while displaying values.

---

## Characteristics

- Returns the string enclosed in single quotes.
- Escapes special characters automatically.
- Returns a string.
- Works with text values.
- Does not modify the original data.
- Commonly used while generating SQL statements dynamically.

---

## Syntax

```sql
QUOTE(string)
```

Example:

```sql
QUOTE(employee_name)
```

---

## How QUOTE() Works

Suppose the string is:

```
Data Engineering
```

Query:

```sql
SELECT QUOTE('Data Engineering');
```

Result:

```
'Data Engineering'
```

The string is enclosed within single quotes.

---

## Examples

### Example 1

Quote a constant string.

```sql
SELECT QUOTE('MySQL') AS result;
```

### Explanation

The function surrounds the string with single quotes.

Result:

```
'MySQL'
```

---

### Example 2

Quote employee names.

```sql
SELECT employee_name,
       QUOTE(employee_name) AS quoted_name
FROM employees;
```

### Explanation

Each employee name is displayed enclosed in single quotes.

Example:

```
Amit Sharma

↓

'Amit Sharma'
```

---

### Example 3

Escape a single quote.

```sql
SELECT QUOTE('O''Brien') AS result;
```

### Explanation

The single quote inside the string is automatically escaped.

Result:

```
'O\'Brien'
```

---

### Example 4

Escape a backslash.

```sql
SELECT QUOTE('C:\Users') AS result;
```

### Explanation

The backslash is escaped automatically.

Result:

```
'C:\\Users'
```

---

### Example 5

Quote a NULL value.

```sql
SELECT QUOTE(NULL) AS result;
```

### Explanation

When the input is `NULL`, the function returns:

```
NULL
```

This is different from the string `'NULL'`.

---

## Difference Between QUOTE() and CONCAT()

| Function | Purpose |
|----------|---------|
| `QUOTE()` | Encloses a string in single quotes and escapes special characters |
| `CONCAT()` | Joins two or more strings together |

Example:

```sql
SELECT QUOTE('MySQL');
```

Result:

```
'MySQL'
```

```sql
SELECT CONCAT('My', 'SQL');
```

Result:

```
MySQL
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name |
|---------------|
| Amit Sharma |
| Priya Patel |
| O'Brien |

Query:

```sql
SELECT employee_name,
       QUOTE(employee_name) AS sql_value
FROM employees;
```

Result

| Employee Name | SQL Value |
|---------------|----------------|
| Amit Sharma | 'Amit Sharma' |
| Priya Patel | 'Priya Patel' |
| O'Brien | 'O\'Brien' |

The `QUOTE()` function prepares the values so they can safely be used in SQL statements.

The original data remains unchanged.

---

## Workflow

```
Original String

↓

QUOTE()

↓

Escape Special Characters

↓

Add Single Quotes

↓

Formatted String
```

---

## Memory Tip

> 🧠 **QUOTE() safely wraps a string in single quotes and escapes special characters.**

```
O'Brien

↓

QUOTE()

↓

'O\'Brien'
```

Think:

```
String

↓

Escape Characters

↓

Add Quotes

↓

Safe SQL String
```

--------------------------------------------------

# SOUNDEX() Function

## What is it?

The `SOUNDEX()` function returns a **Soundex code** for a string.

A Soundex code represents **how a word sounds when spoken**, rather than how it is spelled.

This means two words with similar pronunciation often produce the same Soundex code, even if their spellings are different.

It is commonly used to find names that sound alike.

---

## Why do we need SOUNDEX()?

Suppose a company stores customer names entered manually.

For example:

```
Smith
Smyth
```

Although the spellings are different, they sound almost the same.

Using `SOUNDEX()`, both names generate the same Soundex code, making it easier to search for similar-sounding names.

It is commonly used for:

- Searching customer names.
- Detecting spelling mistakes.
- Finding duplicate records.
- Matching similar names.
- Data cleaning.

---

## Characteristics

- Returns a Soundex code.
- Compares pronunciation instead of spelling.
- Returns a string.
- Mainly designed for English words.
- Commonly used in fuzzy searching.
- Does not modify the original data.

---

## Syntax

```sql
SOUNDEX(string)
```

Example:

```sql
SOUNDEX(employee_name)
```

---

## How SOUNDEX() Works

Suppose the names are:

```
Smith
Smyth
```

Query:

```sql
SELECT
SOUNDEX('Smith'),
SOUNDEX('Smyth');
```

Result:

```
S530
S530
```

Both names receive the same Soundex code because they sound similar.

---

## Examples

### Example 1

Generate the Soundex code of employee names.

```sql
SELECT employee_name,
       SOUNDEX(employee_name) AS soundex_code
FROM employees;
```

### Explanation

The function generates the Soundex code for every employee name.

---

### Example 2

Compare two similar names.

```sql
SELECT
SOUNDEX('Smith') AS first_name,
SOUNDEX('Smyth') AS second_name;
```

### Explanation

Both names sound alike.

Result:

```
S530
S530
```

---

### Example 3

Compare two different names.

```sql
SELECT
SOUNDEX('Rahul') AS first_name,
SOUNDEX('Amit') AS second_name;
```

### Explanation

Since the names sound different, the generated Soundex codes are different.

---

### Example 4

Search for similar employee names.

```sql
SELECT employee_name
FROM employees
WHERE SOUNDEX(employee_name) = SOUNDEX('Amit Sharma');
```

### Explanation

The query returns employee names whose pronunciation is similar to **Amit Sharma**.

---

### Example 5

Generate the Soundex code of city names.

```sql
SELECT city,
       SOUNDEX(city) AS soundex_code
FROM employees;
```

### Explanation

Each city name is converted into its corresponding Soundex code.

---

## Difference Between SOUNDEX() and REPLACE()

| Function | Purpose |
|----------|---------|
| `SOUNDEX()` | Compares words based on pronunciation |
| `REPLACE()` | Replaces text within a string |

Example:

```sql
SELECT SOUNDEX('Smith');
```

Result:

```
S530
```

```sql
SELECT REPLACE('Smith', 'i', 'y');
```

Result:

```
Smyth
```

---

## Real-World Example

Suppose the `customers` table contains:

| Customer Name |
|---------------|
| Smith |
| Smyth |
| Johnson |

Query:

```sql
SELECT customer_name
FROM customers
WHERE SOUNDEX(customer_name) = SOUNDEX('Smith');
```

Result

| Customer Name |
|---------------|
| Smith |
| Smyth |

Although the spellings are different, both names are returned because they have the same pronunciation.

---

## Workflow

```
Original Word

↓

SOUNDEX()

↓

Generate Soundex Code

↓

Compare Pronunciation

↓

Result
```

---

## Memory Tip

> 🧠 **SOUNDEX() compares how words sound, not how they are spelled.**

```
Smith

↓

SOUNDEX()

↓

S530

↓

Smyth

↓

S530
```

Think:

```
Word

↓

Pronunciation

↓

Soundex Code

↓

Match Similar Sounds
```

--------------------------------------------------

# WEIGHT_STRING() Function

## What is it?

The `WEIGHT_STRING()` function returns the **internal weight value** that MySQL uses to compare and sort strings.

Instead of returning the original text, it returns the **binary weight** used during string comparison according to the column's **character set and collation**.

This function is mainly used for:

- Understanding how MySQL sorts strings.
- Debugging collation-related issues.
- Advanced database administration.

> **Note:** `WEIGHT_STRING()` is an advanced MySQL function. Most developers rarely use it in day-to-day SQL queries.

---

## Why do we need WEIGHT_STRING()?

Suppose two strings appear similar but are sorted differently because of the database collation.

For example:

```
Apple
apple
Ápple
```

The displayed text may look similar, but MySQL internally assigns different weight values for comparison.

`WEIGHT_STRING()` allows you to inspect those internal comparison weights.

---

## Characteristics

- Returns the internal comparison weight of a string.
- Used for sorting and comparison.
- Depends on the character set and collation.
- Returns a binary value.
- Mainly used for debugging and advanced SQL.
- Does not modify the original data.

---

## Syntax

```sql
WEIGHT_STRING(string)
```

Example:

```sql
WEIGHT_STRING(employee_name)
```

---

## How WEIGHT_STRING() Works

Suppose the string is:

```
Apple
```

Query:

```sql
SELECT WEIGHT_STRING('Apple');
```

Result:

```
(Binary Weight Value)
```

The returned value is a binary representation used internally by MySQL for sorting.

---

## Examples

### Example 1

Return the weight of employee names.

```sql
SELECT employee_name,
       WEIGHT_STRING(employee_name) AS weight
FROM employees;
```

### Explanation

The function returns the internal weight value for each employee name.

---

### Example 2

Compare uppercase and lowercase values.

```sql
SELECT
WEIGHT_STRING('Apple') AS upper_case,
WEIGHT_STRING('apple') AS lower_case;
```

### Explanation

Depending on the active collation, the weight values may be the same or different.

---

### Example 3

Compare accented characters.

```sql
SELECT
WEIGHT_STRING('A') AS normal_letter,
WEIGHT_STRING('Á') AS accented_letter;
```

### Explanation

The returned weights depend on the character set and collation being used.

---

### Example 4

Return the weight of city names.

```sql
SELECT city,
       WEIGHT_STRING(city) AS weight
FROM employees;
```

### Explanation

Each city name is converted into its internal comparison weight.

---

### Example 5

Use with `ORDER BY`.

```sql
SELECT employee_name
FROM employees
ORDER BY WEIGHT_STRING(employee_name);
```

### Explanation

The rows are sorted according to MySQL's internal weight values.

In practice, a simple `ORDER BY employee_name` usually produces the same result because MySQL already uses these weights internally.

---

## Difference Between WEIGHT_STRING() and SOUNDEX()

| Function | Purpose |
|----------|---------|
| `WEIGHT_STRING()` | Returns the internal weight used for comparison and sorting |
| `SOUNDEX()` | Returns a phonetic code based on pronunciation |

Example:

```sql
SELECT WEIGHT_STRING('Apple');
```

Result:

```
(Binary Weight)
```

```sql
SELECT SOUNDEX('Apple');
```

Result:

```
A140
```

---

## Real-World Example

Suppose a company stores customer names in multiple languages.

| Customer Name |
|---------------|
| Apple |
| apple |
| Ápple |

Query:

```sql
SELECT
customer_name,
WEIGHT_STRING(customer_name) AS comparison_weight
FROM customers;
```

Result

| Customer Name | Comparison Weight |
|---------------|-------------------|
| Apple | (Binary Weight) |
| apple | (Binary Weight) |
| Ápple | (Binary Weight) |

The returned weight values help database administrators understand how MySQL compares and sorts these strings under the current collation.

---

## Workflow

```
Original String

↓

WEIGHT_STRING()

↓

Generate Internal Weight

↓

Used for Comparison

↓

Sorting & Matching
```

---

## Memory Tip

> 🧠 **WEIGHT_STRING() shows the hidden comparison value that MySQL uses to sort and compare strings.**

```
Apple

↓

WEIGHT_STRING()

↓

Binary Weight

↓

Used by ORDER BY
```

Think:

```
String

↓

Internal Weight

↓

Comparison

↓

Sorting
```

--------------------------------------------------

# TO_BASE64() Function

## What is it?

The `TO_BASE64()` function converts a string into its **Base64 encoded representation**.

Base64 is an encoding technique that represents binary or text data using only ASCII characters. It is commonly used when data needs to be safely transmitted through systems that only support text.

> **Note:** Base64 is **not encryption**. Anyone can decode a Base64 string back to its original value.

---

## Why do we need TO_BASE64()?

Suppose a company wants to:

- Send binary data through an email.
- Store images or files as text.
- Transfer data through APIs.
- Encode special characters safely.
- Exchange data between different systems.

Instead of sending raw binary data, the `TO_BASE64()` function converts it into a text format.

---

## Characteristics

- Converts a string to Base64 format.
- Returns an encoded string.
- Does not encrypt the data.
- Can encode text or binary values.
- Commonly used with `FROM_BASE64()`.
- Does not modify the original data.

---

## Syntax

```sql
TO_BASE64(string)
```

Example:

```sql
TO_BASE64('MySQL')
```

---

## How TO_BASE64() Works

Suppose the string is:

```
MySQL
```

Query:

```sql
SELECT TO_BASE64('MySQL');
```

Result:

```
TXlTUUw=
```

The original text is converted into its Base64 encoded representation.

---

## Examples

### Example 1

Encode a constant string.

```sql
SELECT TO_BASE64('MySQL') AS result;
```

### Explanation

The string `MySQL` is converted into Base64 format.

Result:

```
TXlTUUw=
```

---

### Example 2

Encode a sentence.

```sql
SELECT TO_BASE64('Data Engineering') AS result;
```

### Explanation

The entire sentence is encoded into Base64.

---

### Example 3

Encode employee names.

```sql
SELECT employee_name,
       TO_BASE64(employee_name) AS encoded_name
FROM employees;
```

### Explanation

Each employee name is converted into its Base64 representation.

Example:

```
Amit Sharma

↓

QW1pdCBTaGFybWE=
```

---

### Example 4

Encode city names.

```sql
SELECT city,
       TO_BASE64(city) AS encoded_city
FROM employees;
```

### Explanation

Each city name is encoded into Base64 format.

---

### Example 5

Encode concatenated values.

```sql
SELECT TO_BASE64(CONCAT(employee_name, '-', department)) AS employee_data
FROM employees;
```

### Explanation

First, `CONCAT()` joins the employee name and department.

Then, `TO_BASE64()` converts the combined string into Base64.

Example:

```
Amit Sharma-HR

↓

(Base64 Encoded String)
```

---

## Difference Between TO_BASE64() and HEX()

| Function | Purpose |
|----------|---------|
| `TO_BASE64()` | Converts data into Base64 encoded text |
| `HEX()` | Converts data into hexadecimal representation |

Example:

```sql
SELECT TO_BASE64('MySQL');
```

Result:

```
TXlTUUw=
```

```sql
SELECT HEX('MySQL');
```

Result:

```
4D7953514C
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | Department |
|---------------|------------|
| Amit Sharma | HR |
| Priya Patel | IT |
| Rahul Verma | Finance |

Query:

```sql
SELECT employee_name,
       TO_BASE64(employee_name) AS encoded_name
FROM employees;
```

Result

| Employee Name | Encoded Name |
|---------------|--------------|
| Amit Sharma | QW1pdCBTaGFybWE= |
| Priya Patel | UHJpeWEgUGF0ZWw= |
| Rahul Verma | (Base64 Encoded Value) |

The encoded values can be safely transmitted through systems that expect text data.

The original employee names remain unchanged.

---

## Workflow

```
Original String

↓

TO_BASE64()

↓

Convert to Base64

↓

Encoded String
```

---

## Memory Tip

> 🧠 **TO_BASE64() converts readable text into a Base64 encoded string.**

```
MySQL

↓

TO_BASE64()

↓

TXlTUUw=
```

Think:

```
Original Text

↓

Base64 Encoding

↓

Encoded Output
```

--------------------------------------------------

# FROM_BASE64() Function

## What is it?

The `FROM_BASE64()` function decodes a **Base64 encoded string** back to its original value.

It is the opposite of the `TO_BASE64()` function.

If the input is a valid Base64 encoded string, MySQL returns the original decoded value.

> **Note:** `FROM_BASE64()` performs **decoding**, not decryption. It simply converts Base64-encoded data back to its original form.

---

## Why do we need FROM_BASE64()?

Suppose a company receives:

- Employee information encoded in Base64.
- Data from an API.
- Encoded file names.
- Encoded customer information.
- Data exported from another system.

Before the information can be read, it must be decoded.

The `FROM_BASE64()` function converts the encoded text back to its original value.

---

## Characteristics

- Decodes a Base64 encoded string.
- Returns the original value.
- Opposite of `TO_BASE64()`.
- Returns binary data that is usually displayed as text.
- Returns `NULL` if the input is not valid Base64.
- Does not modify the original data.

---

## Syntax

```sql
FROM_BASE64(encoded_string)
```

Example:

```sql
FROM_BASE64('TXlTUUw=')
```

---

## How FROM_BASE64() Works

Suppose the encoded string is:

```
TXlTUUw=
```

Query:

```sql
SELECT FROM_BASE64('TXlTUUw=');
```

Result:

```
MySQL
```

The encoded value is decoded back to its original string.

---

## Examples

### Example 1

Decode a Base64 string.

```sql
SELECT FROM_BASE64('TXlTUUw=') AS result;
```

### Explanation

The Base64 value is decoded into its original text.

Result:

```
MySQL
```

---

### Example 2

Decode a sentence.

```sql
SELECT FROM_BASE64('RGF0YSBFbmdpbmVlcmluZw==') AS result;
```

### Explanation

The encoded value is converted back into:

```
Data Engineering
```

---

### Example 3

Decode employee names.

```sql
SELECT employee_name,
       FROM_BASE64(TO_BASE64(employee_name)) AS decoded_name
FROM employees;
```

### Explanation

First, `TO_BASE64()` encodes the employee name.

Then, `FROM_BASE64()` immediately decodes it back.

Example:

```
Amit Sharma

↓

TO_BASE64()

↓

QW1pdCBTaGFybWE=

↓

FROM_BASE64()

↓

Amit Sharma
```

---

### Example 4

Decode concatenated values.

```sql
SELECT FROM_BASE64(
       TO_BASE64(CONCAT(employee_name, '-', department))
) AS employee_information
FROM employees;
```

### Explanation

The combined string is first encoded and then decoded back to its original form.

Example:

```
Amit Sharma-HR
```

---

### Example 5

Decode a stored Base64 value.

```sql
SELECT FROM_BASE64('UHJpeWEgUGF0ZWw=') AS result;
```

### Explanation

The encoded value represents:

```
Priya Patel
```

---

## Difference Between FROM_BASE64() and TO_BASE64()

| Function | Purpose |
|----------|---------|
| `TO_BASE64()` | Encodes a string into Base64 |
| `FROM_BASE64()` | Decodes a Base64 string back to the original value |

Example:

```sql
SELECT TO_BASE64('MySQL');
```

Result:

```
TXlTUUw=
```

```sql
SELECT FROM_BASE64('TXlTUUw=');
```

Result:

```
MySQL
```

---

## Real-World Example

Suppose the company receives employee names in Base64 format.

| Encoded Name |
|--------------|
| QW1pdCBTaGFybWE= |
| UHJpeWEgUGF0ZWw= |

Query:

```sql
SELECT
FROM_BASE64(encoded_name) AS employee_name
FROM employee_backup;
```

Result

| Employee Name |
|---------------|
| Amit Sharma |
| Priya Patel |

The encoded values are converted back into readable employee names.

The stored encoded data remains unchanged.

---

## Workflow

```
Base64 Encoded String

↓

FROM_BASE64()

↓

Decode Data

↓

Original String
```

---

## Memory Tip

> 🧠 **FROM_BASE64() converts Base64 encoded text back to its original value.**

```
TXlTUUw=

↓

FROM_BASE64()

↓

MySQL
```

Think:

```
Encoded Text

↓

Decode

↓

Original Text
```

--------------------------------------------------

# HEX() Function

## What is it?

The `HEX()` function converts a value into its **hexadecimal (base-16) representation**.

A hexadecimal number uses the following characters:

```
0 1 2 3 4 5 6 7 8 9 A B C D E F
```

The function can be used with:

- Strings
- Numbers
- Binary data

It is commonly used for displaying binary data in a readable format.

---

## Why do we need HEX()?

Suppose a company wants to:

- Display binary data in a readable format.
- Generate hexadecimal IDs.
- Debug binary values.
- Store or transmit binary information.
- Work with encryption or hashing outputs.

Instead of showing unreadable binary data, the `HEX()` function converts it into hexadecimal characters.

---

## Characteristics

- Converts data into hexadecimal format.
- Returns a string.
- Supports strings and numeric values.
- Uses digits `0–9` and letters `A–F`.
- Commonly used with binary data.
- Does not modify the original data.

---

## Syntax

```sql
HEX(value)
```

Example:

```sql
HEX('MySQL')
```

---

## How HEX() Works

Suppose the string is:

```
MySQL
```

Query:

```sql
SELECT HEX('MySQL');
```

Result:

```
4D7953514C
```

Each character is converted into its hexadecimal ASCII value.

---

## Examples

### Example 1

Convert a string to hexadecimal.

```sql
SELECT HEX('MySQL') AS result;
```

### Explanation

Each character in the string is converted into its hexadecimal representation.

Result:

```
4D7953514C
```

---

### Example 2

Convert a number.

```sql
SELECT HEX(255) AS result;
```

### Explanation

The decimal number `255` is converted into hexadecimal.

Result:

```
FF
```

---

### Example 3

Convert employee names.

```sql
SELECT employee_name,
       HEX(employee_name) AS hex_name
FROM employees;
```

### Explanation

Each employee name is converted into hexadecimal format.

Example:

```
Amit Sharma

↓

416D697420536861726D61
```

---

### Example 4

Convert city names.

```sql
SELECT city,
       HEX(city) AS hex_city
FROM employees;
```

### Explanation

Each city name is represented as hexadecimal text.

---

### Example 5

Convert concatenated values.

```sql
SELECT HEX(CONCAT(employee_name, '-', department)) AS employee_information
FROM employees;
```

### Explanation

First, `CONCAT()` joins the employee name and department.

Then, `HEX()` converts the combined string into hexadecimal.

Example:

```
Amit Sharma-HR

↓

416D697420536861726D612D4852
```

---

## Difference Between HEX() and TO_BASE64()

| Function | Purpose |
|----------|---------|
| `HEX()` | Converts data into hexadecimal format |
| `TO_BASE64()` | Converts data into Base64 encoded format |

Example:

```sql
SELECT HEX('MySQL');
```

Result:

```
4D7953514C
```

```sql
SELECT TO_BASE64('MySQL');
```

Result:

```
TXlTUUw=
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name |
|---------------|
| Amit Sharma |
| Priya Patel |
| Rahul Verma |

Query:

```sql
SELECT employee_name,
       HEX(employee_name) AS hex_value
FROM employees;
```

Result

| Employee Name | Hex Value |
|---------------|----------------------------------|
| Amit Sharma | 416D697420536861726D61 |
| Priya Patel | 507269796120506174656C |
| Rahul Verma | 526168756C205665726D61 |

Hexadecimal values are commonly used while working with binary files, encryption, hashes, and low-level data processing.

The original employee names remain unchanged.

---

## Workflow

```
Original Value

↓

HEX()

↓

Convert to Hexadecimal

↓

Hexadecimal String
```

---

## Memory Tip

> 🧠 **HEX() converts text or numbers into hexadecimal (base-16) format.**

```
MySQL

↓

HEX()

↓

4D7953514C
```

Think:

```
Original Value

↓

Hexadecimal Conversion

↓

Hex Output
```

--------------------------------------------------

# UNHEX() Function

## What is it?

The `UNHEX()` function converts a **hexadecimal (base-16) string** back into its original value.

It is the opposite of the `HEX()` function.

If the input is a valid hexadecimal string, MySQL decodes it and returns the original binary or text value.

> **Note:** `UNHEX()` is commonly used together with `HEX()`. One converts data to hexadecimal, and the other converts it back.

---

## Why do we need UNHEX()?

Suppose a company stores:

- Binary data in hexadecimal format.
- Encoded employee IDs.
- File contents as hexadecimal.
- Hash-related data.
- Data exchanged between different systems.

To read the original information, the hexadecimal value must be converted back.

The `UNHEX()` function performs this conversion.

---

## Characteristics

- Converts hexadecimal data back to its original value.
- Opposite of `HEX()`.
- Returns binary data.
- Works only with valid hexadecimal strings.
- Commonly used with `HEX()`.
- Does not modify the original data.

---

## Syntax

```sql
UNHEX(hexadecimal_string)
```

Example:

```sql
UNHEX('4D7953514C')
```

---

## How UNHEX() Works

Suppose the hexadecimal value is:

```
4D7953514C
```

Query:

```sql
SELECT UNHEX('4D7953514C');
```

Result:

```
MySQL
```

The hexadecimal value is converted back to its original string.

---

## Examples

### Example 1

Convert a hexadecimal string back to text.

```sql
SELECT UNHEX('4D7953514C') AS result;
```

### Explanation

The hexadecimal value is decoded into its original string.

Result:

```
MySQL
```

---

### Example 2

Convert a hexadecimal representation of a sentence.

```sql
SELECT UNHEX('4461746120456E67696E656572696E67') AS result;
```

### Explanation

The hexadecimal value is converted back into:

```
Data Engineering
```

---

### Example 3

Convert employee names.

```sql
SELECT employee_name,
       UNHEX(HEX(employee_name)) AS original_name
FROM employees;
```

### Explanation

First, `HEX()` converts the employee name into hexadecimal.

Then, `UNHEX()` converts it back to the original value.

Example:

```
Amit Sharma

↓

HEX()

↓

416D697420536861726D61

↓

UNHEX()

↓

Amit Sharma
```

---

### Example 4

Convert concatenated values.

```sql
SELECT UNHEX(
       HEX(CONCAT(employee_name, '-', department))
) AS employee_information
FROM employees;
```

### Explanation

The concatenated string is first converted into hexadecimal.

Then, `UNHEX()` restores the original text.

Example:

```
Amit Sharma-HR
```

---

### Example 5

Decode a hexadecimal number stored as text.

```sql
SELECT UNHEX('507269796120506174656C') AS result;
```

### Explanation

The hexadecimal string represents:

```
Priya Patel
```

---

## Difference Between UNHEX() and HEX()

| Function | Purpose |
|----------|---------|
| `HEX()` | Converts data into hexadecimal |
| `UNHEX()` | Converts hexadecimal back to the original value |

Example:

```sql
SELECT HEX('MySQL');
```

Result:

```
4D7953514C
```

```sql
SELECT UNHEX('4D7953514C');
```

Result:

```
MySQL
```

---

## Real-World Example

Suppose the company stores employee names in hexadecimal format.

| Stored Hex Value |
|------------------|
| 416D697420536861726D61 |
| 507269796120506174656C |
| 526168756C205665726D61 |

Query:

```sql
SELECT
UNHEX(hex_employee_name) AS employee_name
FROM employee_backup;
```

Result

| Employee Name |
|---------------|
| Amit Sharma |
| Priya Patel |
| Rahul Verma |

The hexadecimal values are converted back into readable employee names.

The stored hexadecimal data remains unchanged.

---

## Workflow

```
Hexadecimal Value

↓

UNHEX()

↓

Decode Hexadecimal

↓

Original Value
```

---

## Memory Tip

> 🧠 **UNHEX() converts hexadecimal data back into its original form.**

```
4D7953514C

↓

UNHEX()

↓

MySQL
```

Think:

```
Hexadecimal

↓

Decode

↓

Original Value
```

--------------------------------------------------

# OCTET_LENGTH() Function

## What is it?

The `OCTET_LENGTH()` function returns the **number of bytes** used to store a string.

Unlike `CHAR_LENGTH()`, which counts the number of characters, `OCTET_LENGTH()` counts the **actual storage size in bytes**.

This difference becomes important when working with multi-byte character sets such as **UTF-8**, where one character may occupy more than one byte.

---

## Why do we need OCTET_LENGTH()?

Suppose a company wants to:

- Check the storage size of text.
- Validate the maximum byte limit before storing data.
- Optimize database storage.
- Compare storage usage between different strings.
- Work with multilingual data.

Instead of counting characters, `OCTET_LENGTH()` tells us how much storage space the string occupies.

---

## Characteristics

- Returns the number of bytes.
- Returns an integer.
- Counts storage size, not characters.
- Supports all character sets.
- Useful for storage-related calculations.
- Does not modify the original data.

---

## Syntax

```sql
OCTET_LENGTH(string)
```

Example:

```sql
OCTET_LENGTH('MySQL')
```

---

## How OCTET_LENGTH() Works

Suppose the string is:

```
MySQL
```

Query:

```sql
SELECT OCTET_LENGTH('MySQL');
```

Result:

```
5
```

Each English character occupies one byte, so the total size is **5 bytes**.

---

## Examples

### Example 1

Find the byte length of a string.

```sql
SELECT OCTET_LENGTH('MySQL') AS result;
```

### Explanation

The word **MySQL** contains five ASCII characters, each occupying one byte.

Result:

```
5
```

---

### Example 2

Find the storage size of employee names.

```sql
SELECT employee_name,
       OCTET_LENGTH(employee_name) AS bytes_used
FROM employees;
```

### Explanation

The function returns the number of bytes required to store each employee name.

Example:

```
Amit Sharma

↓

11 Bytes
```

---

### Example 3

Compare with `CHAR_LENGTH()`.

```sql
SELECT
CHAR_LENGTH('MySQL') AS characters,
OCTET_LENGTH('MySQL') AS bytes;
```

### Explanation

For ASCII text:

```
Characters = 5
Bytes = 5
```

Both values are the same because each character occupies one byte.

---

### Example 4

Measure the byte length of concatenated values.

```sql
SELECT employee_name,
       OCTET_LENGTH(CONCAT(employee_name, '-', department)) AS total_bytes
FROM employees;
```

### Explanation

First, `CONCAT()` combines the employee name and department.

Then, `OCTET_LENGTH()` returns the total storage size of the combined string.

---

### Example 5

Check the storage size of city names.

```sql
SELECT city,
       OCTET_LENGTH(city) AS city_bytes
FROM employees;
```

### Explanation

The function returns the number of bytes required to store each city name.

---

## Difference Between OCTET_LENGTH() and CHAR_LENGTH()

| Function | Purpose |
|----------|---------|
| `OCTET_LENGTH()` | Returns the number of bytes used to store a string |
| `CHAR_LENGTH()` | Returns the number of characters in a string |

Example:

```sql
SELECT CHAR_LENGTH('MySQL');
```

Result:

```
5
```

```sql
SELECT OCTET_LENGTH('MySQL');
```

Result:

```
5
```

For ASCII text, both values are the same.

For some Unicode characters, the byte count may be greater than the character count.

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name |
|---------------|
| Amit Sharma |
| Priya Patel |
| Rahul Verma |

Query:

```sql
SELECT employee_name,
       OCTET_LENGTH(employee_name) AS storage_bytes
FROM employees;
```

Result

| Employee Name | Storage Bytes |
|---------------|--------------:|
| Amit Sharma | 11 |
| Priya Patel | 12 |
| Rahul Verma | 12 |

This information helps database administrators estimate storage requirements and validate byte limits before saving data.

The original employee names remain unchanged.

---

## Workflow

```
Original String

↓

OCTET_LENGTH()

↓

Count Bytes

↓

Return Byte Length
```

---

## Memory Tip

> 🧠 **OCTET_LENGTH() counts bytes, not characters.**

```
String

↓

OCTET_LENGTH()

↓

Storage Size (Bytes)
```

Think:

```
String

↓

Bytes

↓

Storage Size
```

--------------------------------------------------

# BIT_LENGTH() Function

## What is it?

The `BIT_LENGTH()` function returns the **number of bits** required to store a string.

A **bit** is the smallest unit of data in a computer.

Since:

```
1 Byte = 8 Bits
```

The `BIT_LENGTH()` function simply returns the total number of **bits** used by the string.

> **Note:** `BIT_LENGTH()` is closely related to `OCTET_LENGTH()`. If a string occupies **10 bytes**, its bit length is **80 bits**.

---

## Why do we need BIT_LENGTH()?

Suppose a company wants to:

- Measure the storage size of data in bits.
- Work with binary data.
- Validate bit-level storage requirements.
- Compare storage consumption.
- Perform low-level data analysis.

Instead of counting characters or bytes, `BIT_LENGTH()` tells us the exact number of bits occupied by the string.

---

## Characteristics

- Returns the number of bits.
- Returns an integer.
- Counts storage size in bits.
- Supports all character sets.
- Useful for binary and storage calculations.
- Does not modify the original data.

---

## Syntax

```sql
BIT_LENGTH(string)
```

Example:

```sql
BIT_LENGTH('MySQL')
```

---

## How BIT_LENGTH() Works

Suppose the string is:

```
MySQL
```

Query:

```sql
SELECT BIT_LENGTH('MySQL');
```

Result:

```
40
```

Explanation:

```
MySQL

↓

5 Bytes

↓

5 × 8

↓

40 Bits
```

---

## Examples

### Example 1

Find the bit length of a string.

```sql
SELECT BIT_LENGTH('MySQL') AS result;
```

### Explanation

The word **MySQL** occupies **5 bytes**.

Since each byte contains **8 bits**, the total is:

```
5 × 8 = 40 Bits
```

Result:

```
40
```

---

### Example 2

Find the bit length of employee names.

```sql
SELECT employee_name,
       BIT_LENGTH(employee_name) AS bits_used
FROM employees;
```

### Explanation

The function returns the number of bits required to store each employee name.

Example:

```
Amit Sharma

↓

11 Bytes

↓

88 Bits
```

---

### Example 3

Compare with `OCTET_LENGTH()`.

```sql
SELECT
OCTET_LENGTH('MySQL') AS bytes,
BIT_LENGTH('MySQL') AS bits;
```

### Explanation

Result:

```
Bytes = 5

Bits = 40
```

The bit length is always **8 times** the byte length.

---

### Example 4

Find the bit length of concatenated values.

```sql
SELECT employee_name,
       BIT_LENGTH(CONCAT(employee_name, '-', department)) AS total_bits
FROM employees;
```

### Explanation

First, `CONCAT()` combines the employee name and department.

Then, `BIT_LENGTH()` calculates the total number of bits required to store the combined string.

---

### Example 5

Find the bit length of city names.

```sql
SELECT city,
       BIT_LENGTH(city) AS city_bits
FROM employees;
```

### Explanation

The function returns the total number of bits used to store each city name.

---

## Difference Between BIT_LENGTH() and OCTET_LENGTH()

| Function | Purpose |
|----------|---------|
| `BIT_LENGTH()` | Returns the number of bits used to store a string |
| `OCTET_LENGTH()` | Returns the number of bytes used to store a string |

Example:

```sql
SELECT BIT_LENGTH('MySQL');
```

Result:

```
40
```

```sql
SELECT OCTET_LENGTH('MySQL');
```

Result:

```
5
```

Relationship:

```
BIT_LENGTH = OCTET_LENGTH × 8
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name |
|---------------|
| Amit Sharma |
| Priya Patel |
| Rahul Verma |

Query:

```sql
SELECT employee_name,
       BIT_LENGTH(employee_name) AS storage_bits
FROM employees;
```

Result

| Employee Name | Storage Bits |
|---------------|-------------:|
| Amit Sharma | 88 |
| Priya Patel | 96 |
| Rahul Verma | 96 |

This information helps database administrators understand the exact storage requirements of text values at the bit level.

The original employee names remain unchanged.

---

## Workflow

```
Original String

↓

BIT_LENGTH()

↓

Calculate Bytes

↓

Multiply by 8

↓

Return Total Bits
```

---

## Memory Tip

> 🧠 **BIT_LENGTH() counts the total number of bits required to store a string.**

```
String

↓

BIT_LENGTH()

↓

Bits
```

Remember:

```
1 Byte = 8 Bits

↓

BIT_LENGTH = OCTET_LENGTH × 8
```

--------------------------------------------------

# CHARSET() Function

## What is it?

The `CHARSET()` function returns the **character set** of a given string.

A **character set** is a collection of characters that MySQL uses to store and interpret text data.

For example:

- `utf8mb4`
- `latin1`
- `ascii`

The function does **not** return the string itself. Instead, it returns the name of the character set associated with that string.

---

## Why do we need CHARSET()?

Suppose a company stores customer information in multiple languages.

Some names may contain:

- English characters
- Hindi characters
- Japanese characters
- Emoji 😊

To correctly store and display these characters, MySQL must know which character set is being used.

The `CHARSET()` function helps developers:

- Verify the character set of data.
- Troubleshoot encoding issues.
- Check multilingual support.
- Debug import/export problems.
- Ensure proper storage of international characters.

---

## Characteristics

- Returns the character set name.
- Returns a string.
- Works with string expressions and columns.
- Useful for debugging encoding issues.
- Commonly used with `COLLATION()`.
- Does not modify the original data.

---

## Syntax

```sql
CHARSET(string)
```

Example:

```sql
CHARSET('MySQL')
```

---

## How CHARSET() Works

Suppose the string is:

```
MySQL
```

Query:

```sql
SELECT CHARSET('MySQL');
```

Result:

```
utf8mb4
```

The function returns the character set used to store the string.

---

## Examples

### Example 1

Find the character set of a string.

```sql
SELECT CHARSET('MySQL') AS result;
```

### Explanation

The function returns the character set used for the string.

Result (may vary depending on your MySQL configuration):

```
utf8mb4
```

---

### Example 2

Find the character set of employee names.

```sql
SELECT employee_name,
       CHARSET(employee_name) AS character_set
FROM employees;
```

### Explanation

The function returns the character set associated with each employee name.

---

### Example 3

Find the character set of city names.

```sql
SELECT city,
       CHARSET(city) AS character_set
FROM employees;
```

### Explanation

Each city value is checked to determine its character set.

---

### Example 4

Find the character set of concatenated values.

```sql
SELECT CHARSET(CONCAT(employee_name, '-', department)) AS character_set
FROM employees;
```

### Explanation

After concatenating the strings, MySQL returns the character set of the resulting value.

---

### Example 5

Check the character set of a Unicode string.

```sql
SELECT CHARSET('डेटा इंजीनियरिंग') AS result;
```

### Explanation

If your database supports Unicode, the result is typically:

```
utf8mb4
```

This character set supports multilingual text and emoji.

---

## Difference Between CHARSET() and CHAR_LENGTH()

| Function | Purpose |
|----------|---------|
| `CHARSET()` | Returns the character set of a string |
| `CHAR_LENGTH()` | Returns the number of characters in a string |

Example:

```sql
SELECT CHARSET('MySQL');
```

Result:

```
utf8mb4
```

```sql
SELECT CHAR_LENGTH('MySQL');
```

Result:

```
6
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | City |
|---------------|------|
| Amit Sharma | Mumbai |
| Priya Patel | Pune |
| Rahul Verma | Delhi |

Query:

```sql
SELECT employee_name,
       CHARSET(employee_name) AS character_set
FROM employees;
```

Result

| Employee Name | Character Set |
|---------------|---------------|
| Amit Sharma | utf8mb4 |
| Priya Patel | utf8mb4 |
| Rahul Verma | utf8mb4 |

This helps database administrators verify that employee names are stored using the expected character set.

The original data remains unchanged.

---

## Workflow

```
Input String

↓

CHARSET()

↓

Identify Character Set

↓

Return Character Set Name
```

---

## Memory Tip

> 🧠 **CHARSET() tells you which character set MySQL uses to store a string.**

```
String

↓

CHARSET()

↓

utf8mb4
```

Think:

```
String

↓

Encoding

↓

Character Set
```

--------------------------------------------------

# COLLATION() Function

## What is it?

The `COLLATION()` function returns the **collation** of a given string.

A **collation** defines the rules MySQL uses to:

- Compare strings
- Sort strings
- Determine whether comparisons are case-sensitive or case-insensitive

A collation always belongs to a character set.

For example, if the character set is `utf8mb4`, some common collations are:

- `utf8mb4_general_ci`
- `utf8mb4_unicode_ci`
- `utf8mb4_0900_ai_ci`

> **Note:** The exact collation returned depends on your MySQL version and database configuration.

---

## Why do we need COLLATION()?

Suppose a company stores employee names in different languages.

When sorting names alphabetically, MySQL must know:

- Should uppercase and lowercase letters be treated as the same?
- Should accented characters be considered equal?
- Which language-specific sorting rules should be followed?

The `COLLATION()` function helps developers:

- Verify the collation of data.
- Debug sorting issues.
- Troubleshoot comparison problems.
- Check case sensitivity.
- Validate multilingual database settings.

---

## Characteristics

- Returns the collation name.
- Returns a string.
- Works with string expressions and columns.
- Used for sorting and comparison rules.
- Commonly used with `CHARSET()`.
- Does not modify the original data.

---

## Syntax

```sql
COLLATION(string)
```

Example:

```sql
COLLATION('MySQL')
```

---

## How COLLATION() Works

Suppose the string is:

```
MySQL
```

Query:

```sql
SELECT COLLATION('MySQL');
```

Result:

```
utf8mb4_general_ci
```

The function returns the collation used to compare and sort the string.

---

## Examples

### Example 1

Find the collation of a string.

```sql
SELECT COLLATION('MySQL') AS result;
```

### Explanation

The function returns the collation associated with the string.

Result (may vary depending on your MySQL configuration):

```
utf8mb4_general_ci
```

---

### Example 2

Find the collation of employee names.

```sql
SELECT employee_name,
       COLLATION(employee_name) AS collation_name
FROM employees;
```

### Explanation

The function returns the collation used for each employee name.

---

### Example 3

Find the collation of city names.

```sql
SELECT city,
       COLLATION(city) AS collation_name
FROM employees;
```

### Explanation

Each city value is checked to determine its collation.

---

### Example 4

Find the collation of concatenated values.

```sql
SELECT COLLATION(CONCAT(employee_name, '-', department)) AS collation_name
FROM employees;
```

### Explanation

After concatenating the strings, MySQL returns the collation of the resulting value.

---

### Example 5

Check the collation of a Unicode string.

```sql
SELECT COLLATION('डेटा इंजीनियरिंग') AS result;
```

### Explanation

If your database uses the `utf8mb4` character set, the returned collation might be:

```
utf8mb4_unicode_ci
```

or another `utf8mb4` collation depending on the database configuration.

---

## Difference Between COLLATION() and CHARSET()

| Function | Purpose |
|----------|---------|
| `COLLATION()` | Returns the collation used for comparing and sorting strings |
| `CHARSET()` | Returns the character set used to store strings |

Example:

```sql
SELECT COLLATION('MySQL');
```

Result:

```
utf8mb4_general_ci
```

```sql
SELECT CHARSET('MySQL');
```

Result:

```
utf8mb4
```

---

## Real-World Example

Suppose the `employees` table contains:

| Employee Name | City |
|---------------|------|
| Amit Sharma | Mumbai |
| Priya Patel | Pune |
| Rahul Verma | Delhi |

Query:

```sql
SELECT employee_name,
       COLLATION(employee_name) AS collation_name
FROM employees;
```

Result

| Employee Name | Collation |
|---------------|-----------|
| Amit Sharma | utf8mb4_general_ci |
| Priya Patel | utf8mb4_general_ci |
| Rahul Verma | utf8mb4_general_ci |

This information helps database administrators verify that text values are compared and sorted using the expected collation rules.

The original employee names remain unchanged.

---

## Workflow

```
Input String

↓

COLLATION()

↓

Identify Comparison Rules

↓

Return Collation Name
```

---

## Memory Tip

> 🧠 **COLLATION() tells you the comparison and sorting rules used for a string.**

```
String

↓

COLLATION()

↓

utf8mb4_general_ci
```

Think:

```
String

↓

Sorting Rules

↓

Collation
```

--------------------------------------------------

# COMPRESS() Function

## What is it?

The `COMPRESS()` function compresses a string using MySQL's compression algorithm and returns the **compressed binary value**.

Compression reduces the amount of storage required for large strings by representing the data in a smaller format.

> **Note:** The compressed output is **binary data**, so it may not be human-readable when displayed directly.

---

## Why do we need COMPRESS()?

Suppose a company wants to:

- Store large text efficiently.
- Reduce database storage usage.
- Compress log files before saving them.
- Archive old records.
- Transfer large amounts of text over a network.

Instead of storing the original large text, the `COMPRESS()` function stores a compressed version.

---

## Characteristics

- Compresses a string.
- Returns a binary value.
- Reduces storage for large strings.
- Commonly used with `UNCOMPRESS()`.
- Does not modify the original data.
- Most effective on large amounts of repetitive text.

---

## Syntax

```sql
COMPRESS(string)
```

Example:

```sql
COMPRESS('MySQL')
```

---

## How COMPRESS() Works

Suppose the string is:

```
Data Engineering
```

Query:

```sql
SELECT COMPRESS('Data Engineering');
```

Result:

```
(Binary Compressed Data)
```

The original string is converted into a compressed binary format.

---

## Examples

### Example 1

Compress a constant string.

```sql
SELECT COMPRESS('MySQL') AS result;
```

### Explanation

The string is compressed and returned as binary data.

Result:

```
(Binary Compressed Value)
```

---

### Example 2

Compress a long sentence.

```sql
SELECT COMPRESS('Data Engineering with MySQL and Python') AS result;
```

### Explanation

The sentence is compressed into a smaller binary representation.

---

### Example 3

Compress employee names.

```sql
SELECT employee_name,
       COMPRESS(employee_name) AS compressed_name
FROM employees;
```

### Explanation

Each employee name is converted into a compressed binary value.

---

### Example 4

Compress concatenated values.

```sql
SELECT COMPRESS(CONCAT(employee_name, '-', department))
       AS compressed_information
FROM employees;
```

### Explanation

First, `CONCAT()` joins the employee name and department.

Then, `COMPRESS()` compresses the combined string.

---

### Example 5

Compress city names.

```sql
SELECT city,
       COMPRESS(city) AS compressed_city
FROM employees;
```

### Explanation

Each city name is stored as compressed binary data.

---

## Difference Between COMPRESS() and TO_BASE64()

| Function | Purpose |
|----------|---------|
| `COMPRESS()` | Reduces the storage size of data |
| `TO_BASE64()` | Encodes data into Base64 text |

Example:

```sql
SELECT COMPRESS('MySQL');
```

Result:

```
(Binary Compressed Value)
```

```sql
SELECT TO_BASE64('MySQL');
```

Result:

```
TXlTUUw=
```

`COMPRESS()` reduces storage size, whereas `TO_BASE64()` changes the representation without compressing the data.

---

## Real-World Example

Suppose the `employees_archive` table stores detailed employee notes.

| Employee Notes |
|----------------|
| Long employee performance report... |
| Annual review comments... |
| Training history... |

Query:

```sql
SELECT
COMPRESS(employee_notes) AS compressed_notes
FROM employees_archive;
```

Result

| Compressed Notes |
|------------------|
| (Binary Data) |
| (Binary Data) |
| (Binary Data) |

Compressed values require less storage and can later be restored using the `UNCOMPRESS()` function.

The original data remains unchanged.

---

## Workflow

```
Original String

↓

COMPRESS()

↓

Compression Algorithm

↓

Compressed Binary Data
```

---

## Memory Tip

> 🧠 **COMPRESS() reduces the storage size of a string by converting it into compressed binary data.**

```
Original String

↓

COMPRESS()

↓

Compressed Data
```

Think:

```
Large Text

↓

Compress

↓

Smaller Storage
```

--------------------------------------------------

# UNCOMPRESS() Function

## What is it?

The `UNCOMPRESS()` function restores a string that was previously compressed using the `COMPRESS()` function.

It takes compressed binary data as input and returns the original uncompressed string.

> **Note:** `UNCOMPRESS()` works only with data that was compressed using MySQL's `COMPRESS()` function. If the input is not valid compressed data, the function returns `NULL`.

---

## Why do we need UNCOMPRESS()?

Suppose a company stores:

- Archived employee reports.
- Compressed application logs.
- Backup text data.
- Large descriptions.
- Historical records.

To read the original information, the compressed data must first be decompressed.

The `UNCOMPRESS()` function restores the original text.

---

## Characteristics

- Decompresses compressed binary data.
- Returns the original string.
- Opposite of `COMPRESS()`.
- Returns `NULL` for invalid compressed data.
- Commonly used with `COMPRESS()`.
- Does not modify the original data.

---

## Syntax

```sql
UNCOMPRESS(compressed_string)
```

Example:

```sql
UNCOMPRESS(COMPRESS('MySQL'))
```

---

## How UNCOMPRESS() Works

Suppose the original string is:

```
Data Engineering
```

Query:

```sql
SELECT UNCOMPRESS(COMPRESS('Data Engineering'));
```

Result:

```
Data Engineering
```

The string is first compressed and then restored to its original form.

---

## Examples

### Example 1

Restore a compressed string.

```sql
SELECT UNCOMPRESS(COMPRESS('MySQL')) AS result;
```

### Explanation

The string is compressed first.

`UNCOMPRESS()` then restores it.

Result:

```
MySQL
```

---

### Example 2

Restore a sentence.

```sql
SELECT UNCOMPRESS(
       COMPRESS('Learning MySQL Built-in Functions')
) AS result;
```

### Explanation

The original sentence is successfully recovered after decompression.

---

### Example 3

Restore employee names.

```sql
SELECT employee_name,
       UNCOMPRESS(COMPRESS(employee_name)) AS restored_name
FROM employees;
```

### Explanation

Each employee name is compressed and then immediately restored.

Example:

```
Amit Sharma

↓

COMPRESS()

↓

(Binary Data)

↓

UNCOMPRESS()

↓

Amit Sharma
```

---

### Example 4

Restore concatenated values.

```sql
SELECT UNCOMPRESS(
       COMPRESS(CONCAT(employee_name, '-', department))
) AS employee_information
FROM employees;
```

### Explanation

The concatenated string is compressed and then decompressed back to its original value.

Example:

```
Amit Sharma-HR
```

---

### Example 5

Restore city names.

```sql
SELECT city,
       UNCOMPRESS(COMPRESS(city)) AS restored_city
FROM employees;
```

### Explanation

Each city name is compressed and then restored without changing its content.

---

## Difference Between UNCOMPRESS() and COMPRESS()

| Function | Purpose |
|----------|---------|
| `COMPRESS()` | Compresses a string into binary data |
| `UNCOMPRESS()` | Restores compressed binary data to the original string |

Example:

```sql
SELECT COMPRESS('MySQL');
```

Result:

```
(Binary Compressed Data)
```

```sql
SELECT UNCOMPRESS(COMPRESS('MySQL'));
```

Result:

```
MySQL
```

---

## Real-World Example

Suppose the `employees_archive` table stores compressed employee notes.

| Compressed Notes |
|------------------|
| (Binary Data) |
| (Binary Data) |
| (Binary Data) |

Query:

```sql
SELECT
UNCOMPRESS(compressed_notes) AS employee_notes
FROM employees_archive;
```

Result

| Employee Notes |
|----------------|
| Excellent performance throughout the year |
| Completed Azure certification |
| Promoted to Senior Data Analyst |

The stored compressed data is converted back into readable text whenever required.

The compressed values remain unchanged in the database.

---

## Workflow

```
Compressed Data

↓

UNCOMPRESS()

↓

Decompression

↓

Original String
```

---

## Memory Tip

> 🧠 **UNCOMPRESS() restores the original string from data compressed by `COMPRESS()`.**

```
Original String

↓

COMPRESS()

↓

Compressed Data

↓

UNCOMPRESS()

↓

Original String
```

Think:

```
Compressed Data

↓

Restore

↓

Original Text
```

--------------------------------------------------

# UNCOMPRESSED_LENGTH() Function

## What is it?

The `UNCOMPRESSED_LENGTH()` function returns the **length (in bytes) of the original uncompressed string** from data that was compressed using the `COMPRESS()` function.

Unlike `UNCOMPRESS()`, which returns the original text, `UNCOMPRESSED_LENGTH()` returns only the size of that original text.

> **Note:** This function works only with data created using MySQL's `COMPRESS()` function. If the input is not valid compressed data, it returns `NULL`.

---

## Why do we need UNCOMPRESSED_LENGTH()?

Suppose a company stores:

- Compressed employee reports.
- Archived documents.
- Backup logs.
- Large text descriptions.
- Historical records.

Before decompressing the data, the company may want to know how large the original text is.

The `UNCOMPRESSED_LENGTH()` function provides this information without returning the actual text.

---

## Characteristics

- Returns the length of the original uncompressed data.
- Returns the size in bytes.
- Works only with compressed data.
- Returns an integer.
- Returns `NULL` for invalid compressed values.
- Does not modify the original data.

---

## Syntax

```sql
UNCOMPRESSED_LENGTH(compressed_string)
```

Example:

```sql
UNCOMPRESSED_LENGTH(COMPRESS('MySQL'))
```

---

## How UNCOMPRESSED_LENGTH() Works

Suppose the original string is:

```
Data Engineering
```

Query:

```sql
SELECT UNCOMPRESSED_LENGTH(COMPRESS('Data Engineering'));
```

Result:

```
16
```

Explanation:

```
Original String

↓

COMPRESS()

↓

Compressed Data

↓

UNCOMPRESSED_LENGTH()

↓

16 Bytes
```

---

## Examples

### Example 1

Find the original length of compressed text.

```sql
SELECT UNCOMPRESSED_LENGTH(COMPRESS('MySQL')) AS result;
```

### Explanation

The original string **MySQL** contains 5 bytes.

Result:

```
5
```

---

### Example 2

Find the original length of a sentence.

```sql
SELECT UNCOMPRESSED_LENGTH(
       COMPRESS('Learning MySQL Built-in Functions')
) AS result;
```

### Explanation

The function returns the length of the sentence before compression.

---

### Example 3

Find the original length of employee names.

```sql
SELECT employee_name,
       UNCOMPRESSED_LENGTH(COMPRESS(employee_name)) AS original_length
FROM employees;
```

### Explanation

Each employee name is compressed.

`UNCOMPRESSED_LENGTH()` returns the number of bytes in the original name.

Example:

```
Amit Sharma

↓

11 Bytes
```

---

### Example 4

Find the original length of concatenated values.

```sql
SELECT employee_name,
       UNCOMPRESSED_LENGTH(
           COMPRESS(CONCAT(employee_name, '-', department))
       ) AS total_length
FROM employees;
```

### Explanation

The employee name and department are combined, compressed, and then the original length is returned.

---

### Example 5

Find the original length of city names.

```sql
SELECT city,
       UNCOMPRESSED_LENGTH(COMPRESS(city)) AS city_length
FROM employees;
```

### Explanation

The function returns the original byte length of each city name before compression.

---

## Difference Between UNCOMPRESSED_LENGTH() and UNCOMPRESS()

| Function | Purpose |
|----------|---------|
| `UNCOMPRESSED_LENGTH()` | Returns the size of the original uncompressed data |
| `UNCOMPRESS()` | Returns the original uncompressed string |

Example:

```sql
SELECT UNCOMPRESSED_LENGTH(COMPRESS('MySQL'));
```

Result:

```
5
```

```sql
SELECT UNCOMPRESS(COMPRESS('MySQL'));
```

Result:

```
MySQL
```

---

## Real-World Example

Suppose the `employees_archive` table stores compressed employee reports.

| Compressed Report |
|-------------------|
| (Binary Data) |
| (Binary Data) |
| (Binary Data) |

Query:

```sql
SELECT
UNCOMPRESSED_LENGTH(compressed_report) AS original_size
FROM employees_archive;
```

Result

| Original Size (Bytes) |
|----------------------:|
| 1024 |
| 2048 |
| 1536 |

Database administrators can estimate the size of the original data without decompressing every record.

The compressed data remains unchanged.

---

## Workflow

```
Compressed Data

↓

UNCOMPRESSED_LENGTH()

↓

Read Original Size

↓

Return Length (Bytes)
```

---

## Memory Tip

> 🧠 **`UNCOMPRESSED_LENGTH()` tells you how large the original data was before it was compressed.**

```
Compressed Data

↓

UNCOMPRESSED_LENGTH()

↓

Original Size
```

Think:

```
Compressed Data

↓

Check Size

↓

Original Length
```

--------------------------------------------------

# RANDOM_BYTES() Function

## What is it?

The `RANDOM_BYTES()` function generates a specified number of **cryptographically secure random bytes**.

Unlike random numbers generated for simple testing, the bytes returned by `RANDOM_BYTES()` are suitable for security-related purposes such as generating tokens, keys, or unique identifiers.

> **Note:** The output is binary data. To make it readable, it is commonly used with functions like `HEX()` or `TO_BASE64()`.

---

## Why do we need RANDOM_BYTES()?

Suppose a company wants to:

- Generate secure API tokens.
- Create password reset tokens.
- Generate session IDs.
- Produce encryption keys.
- Create unique random values.

Instead of manually generating random values, MySQL can create secure random bytes using the `RANDOM_BYTES()` function.

---

## Characteristics

- Generates cryptographically secure random bytes.
- Returns binary data.
- Accepts the number of bytes to generate.
- Produces different output on every execution.
- Commonly used with `HEX()` and `TO_BASE64()`.
- Does not modify any table data.

---

## Syntax

```sql
RANDOM_BYTES(length)
```

Example:

```sql
RANDOM_BYTES(8)
```

---

## How RANDOM_BYTES() Works

Query:

```sql
SELECT HEX(RANDOM_BYTES(8));
```

Possible Result:

```
A3F91C7D84E25B11
```

Every time the query is executed, a different random value is generated.

---

## Examples

### Example 1

Generate 8 random bytes.

```sql
SELECT RANDOM_BYTES(8) AS result;
```

### Explanation

The function generates 8 random bytes.

Since the output is binary, it may not be displayed in a readable format.

---

### Example 2

Display random bytes in hexadecimal.

```sql
SELECT HEX(RANDOM_BYTES(8)) AS random_hex;
```

### Explanation

`HEX()` converts the binary output into a readable hexadecimal string.

Possible Result:

```
A3F91C7D84E25B11
```

---

### Example 3

Display random bytes in Base64.

```sql
SELECT TO_BASE64(RANDOM_BYTES(8)) AS random_base64;
```

### Explanation

The binary value is encoded into Base64 for easier storage or transmission.

Possible Result:

```
o/kcfYTiWxE=
```

---

### Example 4

Generate a secure token.

```sql
SELECT HEX(RANDOM_BYTES(16)) AS security_token;
```

### Explanation

A 16-byte random value is generated and displayed as a hexadecimal string.

Possible Result:

```
7A8C91F4B23D8E61A9D45F3C8B72E10F
```

---

### Example 5

Generate random values for multiple rows.

```sql
SELECT employee_name,
       HEX(RANDOM_BYTES(8)) AS unique_code
FROM employees;
```

### Explanation

Each row receives its own randomly generated hexadecimal code.

Example:

| Employee Name | Unique Code |
|---------------|-------------|
| Amit Sharma | 7A81C54E23AF9D10 |
| Priya Patel | B912F7C34D8AEE52 |

The values will be different every time the query is executed.

---

## Difference Between RANDOM_BYTES() and RAND()

| Function | Purpose |
|----------|---------|
| `RANDOM_BYTES()` | Generates cryptographically secure random binary data |
| `RAND()` | Generates a random decimal number |

Example:

```sql
SELECT HEX(RANDOM_BYTES(4));
```

Possible Result:

```
9F4A7C2D
```

```sql
SELECT RAND();
```

Possible Result:

```
0.638472918
```

---

## Real-World Example

Suppose an application needs to generate password reset tokens for users.

Query:

```sql
SELECT employee_name,
       HEX(RANDOM_BYTES(16)) AS reset_token
FROM employees;
```

Result

| Employee Name | Reset Token |
|---------------|-------------|
| Amit Sharma | Different 32-character hexadecimal value |
| Priya Patel | Different 32-character hexadecimal value |
| Rahul Verma | Different 32-character hexadecimal value |

Each execution generates new secure tokens that can be safely used for authentication or password reset links.

---

## Workflow

```
Specify Number of Bytes

↓

RANDOM_BYTES()

↓

Generate Secure Random Data

↓

(Optional)

HEX() / TO_BASE64()

↓

Readable Output
```

---

## Memory Tip

> 🧠 **`RANDOM_BYTES()` generates secure random binary data. Use `HEX()` or `TO_BASE64()` if you want to display it in a readable format.**

```
RANDOM_BYTES(8)

↓

Binary Data

↓

HEX()

↓

Readable Random Value
```

Think:

```
Length

↓

Random Bytes

↓

HEX()/TO_BASE64()

↓

Secure Token
```

--------------------------------------------------

# MD5() Function

## What is it?

The `MD5()` function calculates the **MD5 (Message Digest Algorithm 5)** hash value of a string.

A hash is a fixed-length value generated from input data. The same input always produces the same hash.

The result of the `MD5()` function is a **32-character hexadecimal string**.

> **Note:** `MD5()` is a **hashing function**, not an encryption function. The original value cannot be recovered from the hash.

---

## Why do we need MD5()?

Suppose a company wants to:

- Store passwords securely (historically).
- Verify data integrity.
- Detect changes in files.
- Generate unique identifiers.
- Compare large text values efficiently.

Instead of storing the original value, the company stores its MD5 hash.

> **Note:** Modern applications should use stronger password hashing algorithms such as **bcrypt**, **Argon2**, or **PBKDF2** instead of `MD5()` for password storage.

---

## Characteristics

- Generates a 32-character hexadecimal hash.
- Returns a string.
- Same input always produces the same output.
- Different input usually produces a different hash.
- One-way hashing function.
- Does not modify the original data.

---

## Syntax

```sql
MD5(string)
```

Example:

```sql
MD5('MySQL')
```

---

## How MD5() Works

Suppose the string is:

```
MySQL
```

Query:

```sql
SELECT MD5('MySQL');
```

Possible Result:

```
7E5CDBE... (32-character hexadecimal value)
```

The original text is converted into a fixed-length hash.

---

## Examples

### Example 1

Generate the MD5 hash of a string.

```sql
SELECT MD5('MySQL') AS result;
```

### Explanation

The string `MySQL` is converted into a 32-character hexadecimal hash.

---

### Example 2

Hash employee names.

```sql
SELECT employee_name,
       MD5(employee_name) AS employee_hash
FROM employees;
```

### Explanation

Each employee name is converted into its MD5 hash.

---

### Example 3

Hash concatenated values.

```sql
SELECT MD5(CONCAT(employee_name, '-', department)) AS employee_hash
FROM employees;
```

### Explanation

First, `CONCAT()` joins the employee name and department.

Then, `MD5()` generates a hash for the combined value.

---

### Example 4

Verify whether two values are identical.

```sql
SELECT
MD5('Data Engineering') = MD5('Data Engineering') AS result;
```

### Explanation

Since both inputs are identical, both hashes are identical.

Result:

```
1
```

---

### Example 5

Compare hashes of different values.

```sql
SELECT
MD5('MySQL') AS first_hash,
MD5('Python') AS second_hash;
```

### Explanation

Since the input values are different, the generated hashes are also different.

---

## Difference Between MD5() and SHA2()

| Function | Purpose |
|----------|---------|
| `MD5()` | Generates a 32-character MD5 hash |
| `SHA2()` | Generates a stronger SHA-2 hash |

Example:

```sql
SELECT MD5('MySQL');
```

Result:

```
32-character hash
```

```sql
SELECT SHA2('MySQL', 256);
```

Result:

```
64-character SHA-256 hash
```

---

## Real-World Example

Suppose the `employees` table stores employee email addresses.

Query:

```sql
SELECT employee_name,
       MD5(employee_name) AS unique_identifier
FROM employees;
```

Result

| Employee Name | MD5 Hash |
|---------------|----------|
| Amit Sharma | 32-character hexadecimal hash |
| Priya Patel | 32-character hexadecimal hash |
| Rahul Verma | 32-character hexadecimal hash |

The hash can be used as a unique identifier for comparison or integrity checks without exposing the original data.

---

## Workflow

```
Original String

↓

MD5()

↓

Generate Hash

↓

32-Character Hexadecimal Value
```

---

## Memory Tip

> 🧠 **`MD5()` always converts the same input into the same 32-character hash.**

```
Original String

↓

MD5()

↓

32-Character Hash
```

Think:

```
Input

↓

Hash

↓

Fixed-Length Output
```

--------------------------------------------------

# SHA() / SHA1() Function

## What is it?

The `SHA()` function (also known as `SHA1()`) generates a **SHA-1 (Secure Hash Algorithm 1)** hash value for a string.

A hash is a fixed-length value generated from input data.

The result of the `SHA()` function is a **40-character hexadecimal string**.

> **Note:** `SHA()` and `SHA1()` are identical in MySQL. `SHA()` is simply an alias for `SHA1()`.

Like `MD5()`, this is a **one-way hashing function**, meaning the original value cannot be recovered from the generated hash.

---

## Why do we need SHA()?

Suppose a company wants to:

- Verify data integrity.
- Generate unique identifiers.
- Detect whether data has changed.
- Compare large text values efficiently.
- Create checksums for files.

Instead of comparing large strings, the company can compare their SHA hashes.

> **Note:** Although `SHA1()` is stronger than `MD5()`, it is no longer considered secure for modern cryptographic applications. New applications should use **SHA2()** or stronger algorithms.

---

## Characteristics

- Generates a 40-character hexadecimal hash.
- Returns a string.
- Same input always produces the same output.
- Different input generally produces different hashes.
- One-way hashing function.
- Does not modify the original data.

---

## Syntax

```sql
SHA(string)
```

or

```sql
SHA1(string)
```

Example:

```sql
SHA('MySQL')
```

---

## How SHA() Works

Suppose the string is:

```
MySQL
```

Query:

```sql
SELECT SHA('MySQL');
```

Possible Result:

```
40-character hexadecimal hash
```

The original string is converted into a fixed-length SHA-1 hash.

---

## Examples

### Example 1

Generate the SHA hash of a string.

```sql
SELECT SHA('MySQL') AS result;
```

### Explanation

The string is converted into a 40-character SHA-1 hash.

---

### Example 2

Generate the SHA1 hash.

```sql
SELECT SHA1('Data Engineering') AS result;
```

### Explanation

`SHA1()` produces exactly the same result as `SHA()`.

---

### Example 3

Hash employee names.

```sql
SELECT employee_name,
       SHA(employee_name) AS employee_hash
FROM employees;
```

### Explanation

Each employee name is converted into its SHA-1 hash.

---

### Example 4

Hash concatenated values.

```sql
SELECT SHA(CONCAT(employee_name, '-', department)) AS employee_hash
FROM employees;
```

### Explanation

First, `CONCAT()` joins the employee name and department.

Then, `SHA()` generates a SHA-1 hash of the combined value.

---

### Example 5

Compare two hashes.

```sql
SELECT
SHA('SQL') = SHA('SQL') AS result;
```

### Explanation

Since both input values are identical, the generated hashes are identical.

Result:

```
1
```

---

## Difference Between SHA() and MD5()

| Function | Purpose |
|----------|---------|
| `SHA()` / `SHA1()` | Generates a 40-character SHA-1 hash |
| `MD5()` | Generates a 32-character MD5 hash |

Example:

```sql
SELECT SHA('MySQL');
```

Result:

```
40-character hexadecimal hash
```

```sql
SELECT MD5('MySQL');
```

Result:

```
32-character hexadecimal hash
```

---

## Real-World Example

Suppose the `employees` table stores employee email addresses.

Query:

```sql
SELECT employee_name,
       SHA(employee_name) AS employee_identifier
FROM employees;
```

Result

| Employee Name | SHA Hash |
|---------------|----------|
| Amit Sharma | 40-character hexadecimal hash |
| Priya Patel | 40-character hexadecimal hash |
| Rahul Verma | 40-character hexadecimal hash |

The generated hash can be used to verify data integrity or compare values without exposing the original employee names.

---

## Workflow

```
Original String

↓

SHA() / SHA1()

↓

Generate SHA-1 Hash

↓

40-Character Hexadecimal Value
```

---

## Memory Tip

> 🧠 **`SHA()` and `SHA1()` are the same function. Both generate a fixed 40-character SHA-1 hash.**

```
Original String

↓

SHA()

↓

40-Character Hash
```

Think:

```
Input

↓

SHA-1

↓

Fixed Hash
```

--------------------------------------------------

# SHA2() Function

## What is it?

The `SHA2()` function generates a **SHA-2 (Secure Hash Algorithm 2)** hash value for a string.

Unlike `SHA()`/`SHA1()`, the `SHA2()` function allows you to choose the hash length.

Supported hash lengths are:

- **224 bits**
- **256 bits**
- **384 bits**
- **512 bits**

The larger the hash length, the longer the generated hash.

> **Note:** `SHA2()` is a **one-way hashing function**. The original value cannot be recovered from the generated hash.

---

## Why do we need SHA2()?

Suppose a company wants to:

- Verify data integrity.
- Generate secure hashes.
- Create digital signatures.
- Store checksums.
- Compare sensitive information without storing the original value.

`SHA2()` is more secure than `MD5()` and `SHA1()` and is recommended for modern applications.

---

## Characteristics

- Generates a SHA-2 hash.
- Returns a hexadecimal string.
- Supports multiple hash lengths.
- Same input always produces the same output.
- Different inputs generate different hashes.
- One-way hashing function.
- Does not modify the original data.

---

## Supported Hash Lengths

| Hash Length | Output Length |
|-------------|--------------:|
| 224 | 56 hexadecimal characters |
| 256 | 64 hexadecimal characters |
| 384 | 96 hexadecimal characters |
| 512 | 128 hexadecimal characters |

---

## Syntax

```sql
SHA2(string, hash_length)
```

Example:

```sql
SHA2('MySQL', 256)
```

---

## How SHA2() Works

Suppose the string is:

```
MySQL
```

Query:

```sql
SELECT SHA2('MySQL', 256);
```

Result:

```
64-character hexadecimal hash
```

The string is converted into a SHA-256 hash.

---

## Examples

### Example 1

Generate a SHA-256 hash.

```sql
SELECT SHA2('MySQL', 256) AS result;
```

### Explanation

The string is converted into a **SHA-256** hash.

Result:

```
64-character hexadecimal hash
```

---

### Example 2

Generate a SHA-512 hash.

```sql
SELECT SHA2('Data Engineering', 512) AS result;
```

### Explanation

The string is converted into a **SHA-512** hash.

Result:

```
128-character hexadecimal hash
```

---

### Example 3

Hash employee names.

```sql
SELECT employee_name,
       SHA2(employee_name, 256) AS employee_hash
FROM employees;
```

### Explanation

Each employee name is converted into a SHA-256 hash.

---

### Example 4

Hash concatenated values.

```sql
SELECT SHA2(
       CONCAT(employee_name, '-', department),
       256
) AS employee_hash
FROM employees;
```

### Explanation

First, `CONCAT()` joins the employee name and department.

Then, `SHA2()` generates a SHA-256 hash of the combined value.

---

### Example 5

Compare two SHA-256 hashes.

```sql
SELECT
SHA2('SQL', 256) = SHA2('SQL', 256) AS result;
```

### Explanation

Since both input values are identical, the generated hashes are also identical.

Result:

```
1
```

---

## Difference Between SHA2() and SHA()

| Function | Purpose |
|----------|---------|
| `SHA2()` | Generates SHA-2 hashes (224, 256, 384, or 512 bits) |
| `SHA()` / `SHA1()` | Generates a SHA-1 hash (160 bits) |

Example:

```sql
SELECT SHA2('MySQL', 256);
```

Result:

```
64-character hexadecimal hash
```

```sql
SELECT SHA('MySQL');
```

Result:

```
40-character hexadecimal hash
```

---

## Real-World Example

Suppose the `employees` table stores employee email addresses.

Query:

```sql
SELECT employee_name,
       SHA2(employee_name, 256) AS employee_identifier
FROM employees;
```

Result

| Employee Name | SHA-256 Hash |
|---------------|--------------|
| Amit Sharma | 64-character hexadecimal hash |
| Priya Patel | 64-character hexadecimal hash |
| Rahul Verma | 64-character hexadecimal hash |

The generated hashes can be used for data integrity verification, secure comparisons, and digital signatures without exposing the original employee names.

---

## Workflow

```
Original String

↓

Choose Hash Length

↓

SHA2()

↓

Generate SHA-2 Hash

↓

Hexadecimal Output
```

---

## Memory Tip

> 🧠 **`SHA2()` is the modern and more secure hashing function. You choose the required hash length (224, 256, 384, or 512 bits).**

```
Original String

↓

SHA2()

↓

Choose 224 / 256 / 384 / 512

↓

Secure Hash
```

Think:

```
Input

↓

SHA2()

↓

Select Hash Size

↓

Fixed-Length Hash
```

--------------------------------------------------

# AES_ENCRYPT() Function

## What is it?

The `AES_ENCRYPT()` function encrypts a string using the **Advanced Encryption Standard (AES)** algorithm.

Unlike hashing functions such as `MD5()` and `SHA2()`, encryption is **reversible**. This means encrypted data can be converted back to its original form using the correct encryption key.

> **Note:** `AES_ENCRYPT()` returns **binary data**. To display it in a readable format, it is commonly used with `HEX()` or `TO_BASE64()`.

---

## Why do we need AES_ENCRYPT()?

Suppose a company wants to protect sensitive information such as:

- Employee salaries.
- Personal identification numbers.
- Customer addresses.
- Bank account details.
- Confidential business information.

Instead of storing the original values, the company stores encrypted data.

Only users with the correct encryption key can decrypt and read the information.

---

## Characteristics

- Encrypts data using the AES algorithm.
- Returns binary data.
- Requires an encryption key.
- The same key is required for decryption.
- More secure than storing plain text.
- Does not modify the original data.

---

## Syntax

```sql
AES_ENCRYPT(string, encryption_key)
```

Example:

```sql
AES_ENCRYPT('MySQL', 'SecretKey')
```

---

## How AES_ENCRYPT() Works

Suppose the string is:

```
Data Engineering
```

Query:

```sql
SELECT HEX(AES_ENCRYPT('Data Engineering', 'SecretKey'));
```

Result:

```
(Hexadecimal Encrypted Value)
```

The original string is encrypted into binary data.

---

## Examples

### Example 1

Encrypt a constant string.

```sql
SELECT HEX(AES_ENCRYPT('MySQL', 'SecretKey')) AS result;
```

### Explanation

The string `MySQL` is encrypted using the key `SecretKey`.

The encrypted binary value is converted to hexadecimal using `HEX()` for easier reading.

---

### Example 2

Encrypt employee names.

```sql
SELECT employee_name,
       HEX(AES_ENCRYPT(employee_name, 'SecretKey')) AS encrypted_name
FROM employees;
```

### Explanation

Each employee name is encrypted using the same encryption key.

The output is displayed as hexadecimal.

---

### Example 3

Encrypt city names.

```sql
SELECT city,
       HEX(AES_ENCRYPT(city, 'SecretKey')) AS encrypted_city
FROM employees;
```

### Explanation

Each city name is encrypted separately.

---

### Example 4

Encrypt concatenated values.

```sql
SELECT HEX(
       AES_ENCRYPT(
           CONCAT(employee_name, '-', department),
           'SecretKey'
       )
) AS employee_information
FROM employees;
```

### Explanation

First, `CONCAT()` combines the employee name and department.

Then, `AES_ENCRYPT()` encrypts the combined value.

---

### Example 5

Encode encrypted data using Base64.

```sql
SELECT TO_BASE64(
       AES_ENCRYPT('Data Engineering', 'SecretKey')
) AS encrypted_value;
```

### Explanation

The encrypted binary value is converted into Base64, making it easier to store or transmit as text.

---

## Difference Between AES_ENCRYPT() and SHA2()

| Function | Purpose |
|----------|---------|
| `AES_ENCRYPT()` | Encrypts data and can later be decrypted using the correct key |
| `SHA2()` | Generates a one-way hash that cannot be reversed |

Example:

```sql
SELECT HEX(AES_ENCRYPT('MySQL', 'SecretKey'));
```

Result:

```
(Hexadecimal Encrypted Value)
```

```sql
SELECT SHA2('MySQL', 256);
```

Result:

```
64-character hexadecimal hash
```

---

## Real-World Example

Suppose the `employees` table contains confidential employee information.

Query:

```sql
SELECT employee_name,
       HEX(AES_ENCRYPT(employee_name, 'CompanyKey'))
       AS encrypted_name
FROM employees;
```

Result

| Employee Name | Encrypted Value |
|---------------|-----------------|
| Amit Sharma | Hexadecimal encrypted data |
| Priya Patel | Hexadecimal encrypted data |
| Rahul Verma | Hexadecimal encrypted data |

The encrypted values can be safely stored in the database. Anyone without the correct encryption key cannot read the original employee names.

---

## Workflow

```
Original String

↓

Encryption Key

↓

AES_ENCRYPT()

↓

Encrypted Binary Data

↓

(Optional)

HEX() / TO_BASE64()
```

---

## Memory Tip

> 🧠 **`AES_ENCRYPT()` protects sensitive data by encrypting it with a secret key. The same key is required to decrypt the data later.**

```
Original String

↓

AES_ENCRYPT()

↓

Secret Key

↓

Encrypted Data
```

Think:

```
Original Data

↓

Encryption Key

↓

AES Encryption

↓

Protected Data
```

--------------------------------------------------

# AES_DECRYPT() Function

## What is it?

The `AES_DECRYPT()` function decrypts data that was previously encrypted using the `AES_ENCRYPT()` function.

It converts the encrypted binary data back into its original readable form using the **same encryption key** that was used during encryption.

> **Note:** If an incorrect encryption key is provided, `AES_DECRYPT()` returns `NULL` or unreadable data.

---

## Why do we need AES_DECRYPT()?

Suppose a company stores encrypted information such as:

- Employee salaries.
- Customer addresses.
- Credit card details.
- Personal identification numbers.
- Confidential business information.

Whenever an authorized user needs to view the original information, the encrypted data must be decrypted.

The `AES_DECRYPT()` function performs this task.

---

## Characteristics

- Decrypts data encrypted by `AES_ENCRYPT()`.
- Requires the same encryption key.
- Returns the original data.
- Works only with valid encrypted values.
- Returns `NULL` if the key is incorrect.
- Does not modify the stored encrypted data.

---

## Syntax

```sql
AES_DECRYPT(encrypted_data, encryption_key)
```

Example:

```sql
AES_DECRYPT(AES_ENCRYPT('MySQL', 'SecretKey'), 'SecretKey')
```

---

## How AES_DECRYPT() Works

Suppose the original string is:

```
Data Engineering
```

Query:

```sql
SELECT AES_DECRYPT(
       AES_ENCRYPT('Data Engineering', 'SecretKey'),
       'SecretKey'
);
```

Result:

```
Data Engineering
```

The data is first encrypted and then decrypted using the same key.

---

## Examples

### Example 1

Decrypt an encrypted string.

```sql
SELECT AES_DECRYPT(
       AES_ENCRYPT('MySQL', 'SecretKey'),
       'SecretKey'
) AS result;
```

### Explanation

The string is encrypted first.

Then `AES_DECRYPT()` restores the original value.

Result:

```
MySQL
```

---

### Example 2

Decrypt employee names.

```sql
SELECT employee_name,
       AES_DECRYPT(
           AES_ENCRYPT(employee_name, 'SecretKey'),
           'SecretKey'
       ) AS original_name
FROM employees;
```

### Explanation

Each employee name is encrypted and immediately decrypted using the same key.

Example:

```
Amit Sharma

↓

AES_ENCRYPT()

↓

Encrypted Data

↓

AES_DECRYPT()

↓

Amit Sharma
```

---

### Example 3

Decrypt city names.

```sql
SELECT city,
       AES_DECRYPT(
           AES_ENCRYPT(city, 'SecretKey'),
           'SecretKey'
       ) AS original_city
FROM employees;
```

### Explanation

Each city name is restored to its original value.

---

### Example 4

Decrypt concatenated values.

```sql
SELECT AES_DECRYPT(
       AES_ENCRYPT(
           CONCAT(employee_name, '-', department),
           'SecretKey'
       ),
       'SecretKey'
) AS employee_information
FROM employees;
```

### Explanation

First, the employee name and department are combined.

The combined value is encrypted and then decrypted back into its original form.

Example:

```
Amit Sharma-HR
```

---

### Example 5

Decrypt Base64 encoded encrypted data.

```sql
SELECT AES_DECRYPT(
       FROM_BASE64(
           TO_BASE64(
               AES_ENCRYPT('Data Engineering', 'SecretKey')
           )
       ),
       'SecretKey'
) AS result;
```

### Explanation

The data is:

- Encrypted
- Converted to Base64
- Decoded from Base64
- Decrypted back into the original text

Result:

```
Data Engineering
```

---

## Difference Between AES_DECRYPT() and UNCOMPRESS()

| Function | Purpose |
|----------|---------|
| `AES_DECRYPT()` | Restores encrypted data using the correct encryption key |
| `UNCOMPRESS()` | Restores data that was compressed using `COMPRESS()` |

Example:

```sql
SELECT AES_DECRYPT(
       AES_ENCRYPT('MySQL', 'SecretKey'),
       'SecretKey'
);
```

Result:

```
MySQL
```

```sql
SELECT UNCOMPRESS(
       COMPRESS('MySQL')
);
```

Result:

```
MySQL
```

---

## Real-World Example

Suppose the `employees_secure` table stores encrypted employee names.

| Encrypted Name |
|----------------|
| Binary Data |
| Binary Data |
| Binary Data |

Query:

```sql
SELECT
AES_DECRYPT(encrypted_name, 'CompanyKey')
AS employee_name
FROM employees_secure;
```

Result

| Employee Name |
|---------------|
| Amit Sharma |
| Priya Patel |
| Rahul Verma |

Only users who know the correct encryption key can retrieve the original employee names.

The encrypted data remains unchanged in the database.

---

## Workflow

```
Encrypted Data

↓

AES_DECRYPT()

↓

Provide Secret Key

↓

Decrypt Data

↓

Original String
```

---

## Memory Tip

> 🧠 **`AES_DECRYPT()` reverses `AES_ENCRYPT()`. The same secret key used for encryption is required to recover the original data.**

```
Original Data

↓

AES_ENCRYPT()

↓

Encrypted Data

↓

AES_DECRYPT()

↓

Original Data
```

Think:

```
Encrypted Data

↓

Correct Key

↓

Decrypt

↓

Original Value
```

--------------------------------------------------

# VALIDATE_PASSWORD_STRENGTH() Function

## What is it?

The `VALIDATE_PASSWORD_STRENGTH()` function evaluates the **strength of a password** based on the password validation component configured in MySQL.

It returns a **numeric score** that indicates how strong the password is.

> **Note:** This function works only when the **validate_password component/plugin** is installed and enabled in MySQL.

---

## Why do we need VALIDATE_PASSWORD_STRENGTH()?

Suppose a company wants to:

- Ensure employees create strong passwords.
- Enforce password security policies.
- Prevent weak passwords.
- Improve database security.
- Validate passwords before creating user accounts.

Instead of manually checking password complexity, MySQL can evaluate it automatically.

---

## Characteristics

- Evaluates password strength.
- Returns an integer score.
- Works with the validate password component.
- Helps enforce security policies.
- Does not store or modify the password.
- Used for password validation.

---

## Syntax

```sql
VALIDATE_PASSWORD_STRENGTH(password)
```

Example:

```sql
VALIDATE_PASSWORD_STRENGTH('MyPassword@123')
```

---

## How VALIDATE_PASSWORD_STRENGTH() Works

Suppose the password is:

```
MyPassword@123
```

Query:

```sql
SELECT VALIDATE_PASSWORD_STRENGTH('MyPassword@123');
```

Result:

```
(Integer Score)
```

A higher score indicates a stronger password.

---

## Examples

### Example 1

Check a strong password.

```sql
SELECT VALIDATE_PASSWORD_STRENGTH('MyPassword@123') AS strength;
```

### Explanation

The password contains:

- Uppercase letters
- Lowercase letters
- Numbers
- Special characters

It receives a higher strength score.

---

### Example 2

Check a weak password.

```sql
SELECT VALIDATE_PASSWORD_STRENGTH('abc123') AS strength;
```

### Explanation

The password is short and lacks complexity.

Therefore, it receives a lower score.

---

### Example 3

Compare two passwords.

```sql
SELECT
VALIDATE_PASSWORD_STRENGTH('Password123') AS password1,
VALIDATE_PASSWORD_STRENGTH('P@ssw0rd#2026!') AS password2;
```

### Explanation

The second password is generally stronger because it includes:

- Uppercase letters
- Lowercase letters
- Numbers
- Special characters
- Greater length

---

### Example 4

Validate a password before creating a user.

```sql
SELECT VALIDATE_PASSWORD_STRENGTH('Employee@2026');
```

### Explanation

The returned score can help determine whether the password meets the organization's security policy.

---

### Example 5

Evaluate multiple passwords.

```sql
SELECT
VALIDATE_PASSWORD_STRENGTH('Admin123') AS admin_password,
VALIDATE_PASSWORD_STRENGTH('Admin@12345!') AS secure_password;
```

### Explanation

The stronger password typically receives a higher score because it satisfies more password policy requirements.

---

## Difference Between VALIDATE_PASSWORD_STRENGTH() and SHA2()

| Function | Purpose |
|----------|---------|
| `VALIDATE_PASSWORD_STRENGTH()` | Measures the strength of a password |
| `SHA2()` | Generates a cryptographic hash of a string |

Example:

```sql
SELECT VALIDATE_PASSWORD_STRENGTH('MyPassword@123');
```

Result:

```
(Integer Score)
```

```sql
SELECT SHA2('MyPassword@123', 256);
```

Result:

```
64-character hexadecimal hash
```

---

## Real-World Example

Suppose an HR application allows employees to create database accounts.

Before accepting a password, the application checks its strength.

Query:

```sql
SELECT
VALIDATE_PASSWORD_STRENGTH('Employee@2026') AS password_score;
```

Result

| Password | Strength Score |
|----------|---------------:|
| Employee@2026 | (Integer Score) |

If the score satisfies the organization's password policy, the password can be accepted.

---

## Workflow

```
Password

↓

VALIDATE_PASSWORD_STRENGTH()

↓

Evaluate Password Rules

↓

Return Strength Score
```

---

## Memory Tip

> 🧠 **`VALIDATE_PASSWORD_STRENGTH()` checks how strong a password is before it is used.**

```
Password

↓

Check Complexity

↓

Return Score
```

Think:

```
Password

↓

Strength Check

↓

Security Score
```

--------------------------------------------------

# Statement-Based Functions (Special Note)

## What are they?

While learning MySQL built-in functions, you may come across the following names:

- `DATABASE()`
- `USER()`
- `CURRENT_USER()`
- `VERSION()`
- `LAST_INSERT_ID()`
- `ROW_COUNT()`
- `FOUND_ROWS()`

Although they are built-in MySQL functions, **they are not String Functions**.

They belong to other categories such as:

- Information Functions
- System Functions
- Session Functions

Therefore, they will be covered later in the appropriate sections of this course.

---

## Why are we not covering them here?

This chapter focuses only on **String Functions**.

Functions like `DATABASE()` or `VERSION()` do not perform any string manipulation.

Instead, they return information about the MySQL server, current user, session, or database.

Keeping related functions together makes learning easier and avoids confusion.

---

## Categories of Built-in Functions

```
Built-in Functions
│
├── String Functions ✅
│
├── Numeric Functions
│
├── Date & Time Functions
│
├── Aggregate Functions
│
├── NULL Functions
│
├── Control Flow Functions
│
├── Encryption & Compression Functions
│
└── Information / System Functions
```

---

## String Functions Covered

You have now completed the major MySQL string functions, including:

- `UPPER()`
- `LOWER()`
- `LENGTH()`
- `CHAR_LENGTH()`
- `CONCAT()`
- `CONCAT_WS()`
- `TRIM()`
- `LTRIM()`
- `RTRIM()`
- `SUBSTRING()`
- `LEFT()`
- `RIGHT()`
- `REPLACE()`
- `REVERSE()`
- `INSTR()`
- `LOCATE()`
- `ASCII()`
- `ORD()`
- `CHAR()`
- `FIND_IN_SET()`
- `FORMAT()`
- `LPAD()`
- `RPAD()`
- `ELT()`
- `FIELD()`
- `MAKE_SET()`
- `EXPORT_SET()`
- `INSERT()`
- `REPEAT()`
- `SPACE()`
- `QUOTE()`
- `SOUNDEX()`
- `WEIGHT_STRING()`
- `TO_BASE64()`
- `FROM_BASE64()`
- `HEX()`
- `UNHEX()`
- `OCTET_LENGTH()`
- `BIT_LENGTH()`
- `CHARSET()`
- `COLLATION()`
- `COMPRESS()`
- `UNCOMPRESS()`
- `UNCOMPRESSED_LENGTH()`
- `RANDOM_BYTES()`
- `MD5()`
- `SHA()`
- `SHA1()`
- `SHA2()`
- `AES_ENCRYPT()`
- `AES_DECRYPT()`
- `VALIDATE_PASSWORD_STRENGTH()`

---

## Memory Tip

> 🧠 **Not every built-in function is a string function. Learn functions category by category for better understanding.**

```
Built-in Functions

↓

String Functions ✅

↓

Numeric Functions

↓

Date Functions

↓

Other Categories
```

--------------------------------------------------

# Summary

In this chapter, you learned about **MySQL Built-in Functions**, with a primary focus on **String Functions** and the related **Encryption & Compression Functions**.

You learned how to:

- Convert text to uppercase and lowercase.
- Find the length of strings.
- Combine multiple strings.
- Remove unwanted spaces.
- Extract specific parts of a string.
- Search for characters and words.
- Replace and reverse text.
- Format strings.
- Work with ASCII and Unicode values.
- Compare strings based on pronunciation.
- Encode and decode data using Base64 and Hexadecimal.
- Compress and decompress data.
- Generate secure random values.
- Create hashes using `MD5()`, `SHA()`, and `SHA2()`.
- Encrypt and decrypt sensitive information using AES.
- Check password strength.
- Understand character sets and collations.

These functions are widely used in:

- Data Cleaning
- Data Transformation
- Report Generation
- Data Validation
- Data Security
- Data Migration
- ETL Pipelines
- Real-world SQL Applications

They are essential for writing efficient and professional SQL queries.

--------------------------------------------------

# Best Practices

- Use descriptive aliases with the `AS` keyword.
- Prefer `CONCAT_WS()` over `CONCAT()` when adding separators.
- Use `CHAR_LENGTH()` when counting characters and `LENGTH()` or `OCTET_LENGTH()` when storage size matters.
- Use `TRIM()` before comparing user input to remove unnecessary spaces.
- Use `SHA2()` instead of `MD5()` or `SHA1()` for modern hashing requirements.
- Use `AES_ENCRYPT()` only for data that needs to be decrypted later.
- Store encryption keys securely outside your SQL code whenever possible.
- Use `HEX()` or `TO_BASE64()` to display binary output in a readable format.
- Use `utf8mb4` as the preferred character set for multilingual data and emoji support.
- Test string functions with `NULL` values because many functions return `NULL` when any argument is `NULL`.

--------------------------------------------------

# Common Mistakes

❌ Confusing `LENGTH()` with `CHAR_LENGTH()`.

❌ Assuming Base64 encoding is encryption.

❌ Using `MD5()` to store passwords in modern applications.

❌ Forgetting that `AES_DECRYPT()` requires the same key used in `AES_ENCRYPT()`.

❌ Using `REPLACE()` when only a specific position needs to be modified with `INSERT()`.

❌ Assuming `SOUNDEX()` works well for every language.

❌ Ignoring character set and collation differences while comparing strings.

❌ Expecting compressed binary data to be readable without decompression.

❌ Forgetting that functions such as `COMPRESS()` and `AES_ENCRYPT()` return binary values.

❌ Using encryption when hashing is actually required, or hashing when the original data needs to be recovered later.

--------------------------------------------------

# Interview Questions

### Beginner Level

1. What are MySQL Built-in Functions?
2. What is the difference between `LENGTH()` and `CHAR_LENGTH()`?
3. Explain the difference between `LEFT()` and `RIGHT()`.
4. What is the purpose of the `CONCAT()` function?
5. What is the difference between `TRIM()`, `LTRIM()`, and `RTRIM()`?
6. How does `SUBSTRING()` work?
7. What is the use of the `REPLACE()` function?
8. What is the difference between `LOCATE()` and `INSTR()`?
9. What is the purpose of the `FORMAT()` function?
10. What does the `REVERSE()` function do?

### Intermediate Level

11. What is the difference between `CHAR_LENGTH()`, `OCTET_LENGTH()`, and `BIT_LENGTH()`?
12. When would you use `INSERT()` instead of `REPLACE()`?
13. Explain the difference between `TO_BASE64()` and `FROM_BASE64()`.
14. What is the purpose of `HEX()` and `UNHEX()`?
15. What is the use of `CHARSET()` and `COLLATION()`?
16. Explain the difference between `COMPRESS()` and `UNCOMPRESS()`.
17. What is `SOUNDEX()` used for?
18. What is the purpose of `RANDOM_BYTES()`?
19. What is `WEIGHT_STRING()` used for?
20. What is the purpose of `QUOTE()`?

### Advanced Level

21. Explain the difference between hashing and encryption.
22. Compare `MD5()`, `SHA1()`, and `SHA2()`.
23. Why is `SHA2()` preferred over `MD5()`?
24. Explain the working of `AES_ENCRYPT()` and `AES_DECRYPT()`.
25. What happens if the wrong key is supplied to `AES_DECRYPT()`?
26. Why is Base64 considered encoding rather than encryption?
27. What role do character sets and collations play in multilingual databases?
28. How can string functions be useful in ETL pipelines?
29. Which string functions are most frequently used in real-world SQL projects?
30. How do string functions improve data quality before analysis?

--------------------------------------------------

# Key Takeaways

- Built-in functions simplify complex SQL operations.
- String functions help clean, search, format, and transform text.
- `CONCAT()`, `SUBSTRING()`, `REPLACE()`, and `TRIM()` are among the most frequently used functions.
- Storage size can be measured using `LENGTH()`, `OCTET_LENGTH()`, and `BIT_LENGTH()`.
- Character encoding is managed using `CHARSET()` and `COLLATION()`.
- Base64 and Hexadecimal functions are useful for encoding and displaying binary data.
- Compression functions reduce storage requirements.
- Cryptographic functions help secure sensitive information.
- `SHA2()` is recommended over older hashing algorithms such as `MD5()` and `SHA1()`.
- Understanding these functions is essential for writing production-ready SQL queries.

--------------------------------------------------

# What's Next?

In **Day 15**, you will learn **MySQL Numeric Functions**, including:

- `ABS()`
- `CEIL()`
- `FLOOR()`
- `ROUND()`
- `TRUNCATE()`
- `MOD()`
- `POWER()`
- `SQRT()`
- `RAND()`
- `SIGN()`
- `PI()`
- `EXP()`
- `LOG()`
- `LOG10()`
- `GREATEST()`
- `LEAST()`
- `BIN()`
- `CONV()`
- and many more.

These functions are widely used for mathematical calculations, financial reports, analytics, and data engineering tasks.

**Congratulations! 🎉 You have successfully completed Day 14 – MySQL Built-in Functions.**