# Day 15 - String Functions

## Introduction

String Functions are built-in MySQL functions used to manipulate, transform, analyze, and format text (string) data.

In real-world databases, a large amount of information is stored as text:

- Employee Names
- Customer Names
- Email Addresses
- Phone Numbers
- Product Names
- City Names
- Department Names
- Addresses
- Log Data

Working with raw text data is challenging because data may contain:

- Different letter cases
- Extra spaces
- Inconsistent formats
- Unwanted characters
- Combined values that need separation

MySQL provides String Functions to perform these operations directly inside SQL queries.

String Functions are heavily used in:

- Data Cleaning
- Data Transformation
- ETL Pipelines
- Data Warehousing
- Reporting
- Data Analytics
- Data Engineering Projects

---

# Learning Objectives

After completing this chapter, you will be able to:

- Understand String Functions in MySQL.
- Explain why String Functions are important.
- Convert text into uppercase and lowercase.
- Find the length of strings.
- Combine multiple strings.
- Remove unwanted spaces.
- Extract specific parts of strings.
- Replace text values.
- Search for characters inside strings.
- Format strings for reporting.
- Apply String Functions in real-world data engineering scenarios.

---

# Table of Contents

## Fundamentals

1. What are String Functions?
2. Why do we need String Functions?
3. Characteristics of String Functions
4. Categories of String Functions


## Frequently Used String Functions

5. UPPER()
6. LOWER()
7. LENGTH()
8. CHAR_LENGTH()
9. CONCAT()
10. CONCAT_WS()
11. TRIM()
12. LTRIM()
13. RTRIM()
14. SUBSTRING()
15. LEFT()
16. RIGHT()
17. REPLACE()
18. REVERSE()
19. INSTR()
20. LOCATE()
21. ASCII()
22. CHAR()
23. FORMAT()


## Interview Preparation

24. Common Interview Comparisons
25. Real-World Data Engineering Use Cases
26. Best Practices
27. Common Mistakes
28. Interview Questions
29. Key Takeaways


---

# What are String Functions?

## What is it?

String Functions are MySQL built-in functions that perform operations on text values.

A string is a sequence of characters enclosed within quotes.

Examples:

```sql
'MySQL'

'Data Engineer'

'Onkar'

'Pune'
```

String Functions help us:

- Modify text
- Search text
- Extract text
- Combine text
- Clean text
- Format text

---

## Example

Suppose we have an employee table:

### employees

| employee_id | employee_name | department |
|------------|---------------|------------|
| 101 | amit sharma | data |
| 102 | PRIYA PATEL | analytics |
| 103 | Rahul Verma | engineering |

The data format is inconsistent.

Using String Functions:

```sql
SELECT UPPER(employee_name)
FROM employees;
```

Output:

| employee_name |
|---------------|
| AMIT SHARMA |
| PRIYA PATEL |
| RAHUL VERMA |

---

# Why do we need String Functions?

## Data Cleaning

Raw data often contains unwanted spaces.

Example:

```
"   Amit Sharma   "
```

Using:

```sql
SELECT TRIM('   Amit Sharma   ');
```

Output:

```
Amit Sharma
```

---

## Data Standardization

Different users may enter the same data differently.

Example:

```
mumbai

MUMBAI

Mumbai
```

Convert into a standard format:

```sql
SELECT UPPER(city)
FROM employees;
```

Output:

```
MUMBAI
```

---

## Data Transformation

Combining multiple columns.

Example:

First Name:

```
Onkar
```

Last Name:

```
Jadhav
```

Query:

```sql
SELECT CONCAT(first_name,' ',last_name)
FROM employees;
```

Output:

```
Onkar Jadhav
```

---

## ETL Pipelines

String Functions are frequently used during ETL processes:

```
Source Data

      ↓

Cleaning

      ↓

Transformation

      ↓

Data Warehouse
```

Examples:

- Removing spaces
- Standardizing values
- Extracting IDs
- Formatting columns

---

# Characteristics of String Functions

- Work with character data.
- Return string or numeric output.
- Can be combined with other functions.
- Useful in SELECT statements.
- Commonly used in WHERE conditions.
- Helpful in data cleaning.
- Important for ETL development.
- Improve SQL readability.

---

# Categories of String Functions

## 1. Case Conversion Functions

Used to change letter cases.

Functions:

- `UPPER()`
- `LOWER()`


---

## 2. String Length Functions

Used to measure string size.

Functions:

- `LENGTH()`
- `CHAR_LENGTH()`


---

## 3. String Combination Functions

Used to join multiple strings.

Functions:

- `CONCAT()`
- `CONCAT_WS()`


---

## 4. String Cleaning Functions

Used to remove unwanted characters.

Functions:

- `TRIM()`
- `LTRIM()`
- `RTRIM()`


---

## 5. String Extraction Functions

Used to extract parts of strings.

Functions:

- `SUBSTRING()`
- `LEFT()`
- `RIGHT()`


---

## 6. String Replacement Functions

Used to modify existing text.

Function:

- `REPLACE()`


---

## 7. String Search Functions

Used to find characters or words.

Functions:

- `INSTR()`
- `LOCATE()`


---

## 8. Character Conversion Functions

Used to work with character values.

Functions:

- `ASCII()`
- `CHAR()`


---

## 9. Formatting Functions

Used for presentation and reports.

Function:

- `FORMAT()`


---

# Memory Tip

> 🧠 String Functions help SQL clean, transform, search, and format text data.

```
Raw Text

   ↓

String Function

   ↓

Clean / Transform Data

   ↓

Final Output
```

--------------------------------------------------

