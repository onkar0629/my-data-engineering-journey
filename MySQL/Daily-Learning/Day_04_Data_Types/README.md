# Day 04 - MySQL Data Types

## Introduction

Every value stored in a database has a specific type.

For example:

- An employee ID contains numbers.
- An employee name contains text.
- A salary contains decimal values.
- A joining date contains a date.
- A profile picture contains binary data.

MySQL needs to know **what kind of data** will be stored in each column. This is done using **Data Types**.

Choosing the correct data type is one of the most important parts of database design because it affects:

- Storage space
- Performance
- Data accuracy
- Query speed
- Data validation

In this chapter, you will learn the different categories of MySQL data types and understand when to use each one.

---

## Learning Objectives

After completing this chapter, you will be able to:

- Understand what MySQL Data Types are.
- Explain why data types are important.
- Identify different categories of MySQL data types.
- Choose the appropriate numeric data type.
- Choose the appropriate string data type.
- Work with date and time data types.
- Understand Boolean and Binary data types.
- Select the right data type for real-world applications.
- Avoid common mistakes while designing database tables.

---

## Table of Contents

1. What are Data Types?
2. Why do We Need Data Types?
3. Characteristics of Data Types
4. Categories of MySQL Data Types
5. Numeric Data Types
   - TINYINT
   - SMALLINT
   - MEDIUMINT
   - INT / INTEGER
   - BIGINT
   - DECIMAL
   - FLOAT
   - DOUBLE
6. String Data Types
   - CHAR
   - VARCHAR
   - TEXT
   - ENUM
7. Date and Time Data Types
   - DATE
   - TIME
   - DATETIME
   - TIMESTAMP
   - YEAR
8. Boolean Data Type
9. Binary Data Types
10. Choosing the Right Data Type
11. Summary
12. Best Practices
13. Common Mistakes
14. Interview Questions
15. Key Takeaways
16. What's Next?

---

# What are Data Types?

## What is it?

A **Data Type** defines the **kind of data** that can be stored in a column of a table.

It tells MySQL:

- What type of values are allowed.
- How much storage should be allocated.
- How the values should be stored.
- How the values should be processed during queries.

Every column in a table must have a data type.

For example:

| Column | Data Type | Example Value |
|---------|-----------|---------------|
| employee_id | INT | 101 |
| employee_name | VARCHAR(100) | Amit Sharma |
| salary | DECIMAL(10,2) | 65000.50 |
| joining_date | DATE | 2024-07-15 |
| is_active | BOOLEAN | TRUE |

---

## Why do we need Data Types?

Without data types, MySQL would not know:

- Whether a value is a number or text.
- Whether calculations are allowed.
- How much storage is required.
- Whether a value is valid.

Imagine storing an employee's salary.

A salary should be a number because we may need to perform calculations such as:

- Calculate bonus.
- Calculate tax.
- Find average salary.
- Compare salaries.

If salary were stored as text, these operations would become difficult or produce incorrect results.

Similarly, storing dates using the DATE data type allows MySQL to calculate:

- Employee experience
- Number of working days
- Age
- Date differences

Data types help MySQL maintain data accuracy and improve query performance.

---

## Characteristics

- Every table column has exactly one data type.
- Different data types store different kinds of data.
- Data types determine storage size.
- Data types improve query performance.
- Data types enforce valid data entry.
- Choosing the correct data type reduces storage usage.
- Proper data types improve database efficiency.

---

## Syntax

```sql
CREATE TABLE table_name (
    column_name data_type
);
```

---

## Examples

### Example 1

Create a table to store employee IDs and names.

```sql
CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100)
);
```

### Explanation

- `employee_id` stores whole numbers using the `INT` data type.
- `employee_name` stores text up to 100 characters using the `VARCHAR` data type.

---

### Example 2

Create a table to store product prices.

```sql
CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);
```

### Explanation

- `product_id` stores numeric IDs.
- `product_name` stores product names.
- `price` stores decimal values such as ₹199.99 or ₹1,499.50.

The `DECIMAL` data type is suitable for values that require exact precision, such as prices.

---

### Example 3

Create a table to store employee joining dates.

```sql
CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100),
    joining_date DATE
);
```

### Explanation

The `DATE` data type stores only the calendar date in the format `YYYY-MM-DD`.

It allows MySQL to perform date-based calculations and comparisons efficiently.

---

## Memory Tip

> 🧠 **Data Type = Rule for a Column**

```
Column
   │
   ▼
Choose Data Type
   │
   ├── INT → Numbers
   ├── VARCHAR → Text
   ├── DATE → Dates
   ├── DECIMAL → Decimal Numbers
   └── BOOLEAN → TRUE / FALSE
```

Think of a **data type** as a rule that tells MySQL **what kind of values a column is allowed to store**.

---

# Why do We Need Data Types?

## What is it?

Data types are essential because they tell MySQL **what kind of data can be stored in each column**.

Without data types, MySQL would not know:

- Whether a value is a number or text.
- Whether mathematical operations are allowed.
- How much storage should be allocated.
- Whether the entered value is valid.

Data types help MySQL organize and manage data correctly.

---

## Why do we need it?

Imagine creating an **employees** table.

Different columns store different kinds of information.

| Column | Stored Data | Suitable Data Type |
|---------|-------------|--------------------|
| employee_id | Employee ID | INT |
| employee_name | Employee Name | VARCHAR |
| salary | Salary | DECIMAL |
| joining_date | Joining Date | DATE |
| is_active | Active Status | BOOLEAN |

If every column stored the same type of data, many operations would become difficult or incorrect.

For example:

- Salaries need calculations.
- Dates need date arithmetic.
- Names need text searching.
- Boolean values need TRUE/FALSE comparisons.

Choosing the correct data type allows MySQL to perform these operations efficiently.

---

## Characteristics

- Ensures only valid data is stored.
- Reduces unnecessary storage usage.
- Improves query performance.
- Supports mathematical calculations.
- Enables date and time operations.
- Makes sorting and filtering more efficient.
- Helps maintain data consistency.

---

## Syntax

A data type is specified while creating a table.

```sql
CREATE TABLE table_name (
    column_name data_type
);
```

---

## Examples

### Example 1

Store employee names as text.

```sql
CREATE TABLE employees (
    employee_name VARCHAR(100)
);
```

### Explanation

Employee names contain alphabetic characters.

Using `VARCHAR` allows MySQL to store text efficiently.

---

### Example 2

Store salaries as numbers.

```sql
CREATE TABLE employees (
    salary DECIMAL(10,2)
);
```

### Explanation

Salaries often include decimal values.

For example:

- ₹25,000.00
- ₹45,750.50
- ₹1,20,999.99

The `DECIMAL` data type stores these values accurately, making it suitable for financial calculations.

---

### Example 3

Store joining dates.

```sql
CREATE TABLE employees (
    joining_date DATE
);
```

### Explanation

Using the `DATE` data type allows MySQL to perform operations such as:

- Finding employee experience.
- Calculating the number of working days.
- Comparing joining dates.
- Filtering employees who joined in a specific year.

---

## Memory Tip

> 🧠 **Right Data → Right Data Type**

```
Numbers
   │
   ▼
INT / DECIMAL

Text
   │
   ▼
VARCHAR

Date
   │
   ▼
DATE

True/False
   │
   ▼
BOOLEAN
```

Choosing the correct data type ensures your database stores data accurately and performs efficiently.

---

# Characteristics of Data Types

## What is it?

Every MySQL data type has its own characteristics that determine:

- What kind of values it stores.
- How much storage it uses.
- The range of values it supports.
- The operations that can be performed on it.

Understanding these characteristics helps you choose the most suitable data type for each column.

---

## Why do we need it?

Suppose you are designing an employee database.

Some columns contain:

- Numbers
- Names
- Dates
- Salaries
- Status values

Each type of information has different storage and processing requirements.

Using the appropriate data type improves performance, saves storage, and maintains data accuracy.

---

## Characteristics

### 1. Stores Specific Types of Data

Each data type is designed for a particular kind of information.

Examples:

- `INT` stores whole numbers.
- `VARCHAR` stores text.
- `DATE` stores dates.
- `DECIMAL` stores precise decimal numbers.

---

### 2. Determines Storage Size

Different data types require different amounts of storage.

For example:

- `TINYINT` uses less storage than `BIGINT`.
- `CHAR(20)` always reserves space for 20 characters.
- `VARCHAR(20)` uses only the required space (plus a small overhead).

Choosing an unnecessarily large data type can waste storage.

---

### 3. Defines the Range of Values

Every numeric data type has a minimum and maximum value.

For example:

| Data Type | Example Range |
|-----------|---------------|
| TINYINT | Small integers |
| INT | Medium-sized integers |
| BIGINT | Very large integers |

Selecting a data type with an appropriate range helps prevent overflow while avoiding excessive storage.

---

### 4. Controls Allowed Operations

The data type determines which operations can be performed.

Examples:

- `INT` supports arithmetic operations.
- `DATE` supports date calculations.
- `VARCHAR` supports string functions.
- `BOOLEAN` supports logical comparisons.

---

### 5. Helps Validate Data

Data types prevent invalid values from being stored.

For example:

A `DATE` column expects a valid date.

A `DECIMAL` column expects numeric values.

This helps maintain data quality.

---

## Syntax

```sql
CREATE TABLE table_name (
    column_name data_type
);
```

---

## Examples

### Example 1

```sql
CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(100)
);
```

### Explanation

- `student_id` stores numeric values.
- `student_name` stores text values.

Each column uses a data type appropriate for its purpose.

---

### Example 2

```sql
CREATE TABLE products (
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);
```

### Explanation

- Product names are stored as text.
- Prices are stored as exact decimal values for accurate calculations.

---

### Example 3

```sql
CREATE TABLE attendance (
    employee_id INT,
    attendance_date DATE
);
```

### Explanation

The `attendance_date` column stores calendar dates, enabling efficient date comparisons and calculations.

---

## Memory Tip

> 🧠 **Every Data Type Has Four Main Characteristics**

```
Data Type
    │
    ├── Stores Specific Data
    ├── Uses Storage Space
    ├── Has a Value Range
    └── Supports Specific Operations
```

Whenever you choose a data type, consider:

- What kind of data will be stored?
- How much storage is needed?
- What range of values is expected?
- What operations will be performed on the data?

---

# Categories of MySQL Data Types

## What is it?

MySQL provides different **categories of data types** to store different kinds of information.

Each category is designed for a specific purpose.

For example:

- Numbers are stored using **Numeric Data Types**.
- Text is stored using **String Data Types**.
- Dates and time are stored using **Date and Time Data Types**.
- TRUE/FALSE values are stored using the **Boolean Data Type**.
- Images and files are stored using **Binary Data Types**.

Choosing the correct category helps build an efficient and reliable database.

---

## Why do we need it?

Not every piece of data is the same.

Consider an **employees** table.

| Information | Example | Suitable Category |
|-------------|---------|-------------------|
| Employee ID | 101 | Numeric |
| Employee Name | Amit Sharma | String |
| Salary | ₹65,500.75 | Numeric |
| Joining Date | 2024-07-15 | Date & Time |
| Is Active | TRUE | Boolean |
| Profile Photo | Image File | Binary |

If every column used the same category, MySQL would not be able to process the data correctly.

Different categories allow MySQL to:

- Store data efficiently.
- Validate values.
- Perform category-specific operations.
- Reduce storage usage.
- Improve query performance.

---

## Characteristics

- Each category stores a specific type of data.
- Every column belongs to one data type category.
- Different categories support different operations.
- Choosing the correct category improves database performance.
- Proper data type selection reduces storage consumption.
- Each category contains multiple individual data types.

---

## Categories of MySQL Data Types

MySQL data types are broadly divided into five categories.

| Category | Stores | Examples |
|----------|---------|----------|
| Numeric Data Types | Numbers | INT, BIGINT, DECIMAL |
| String Data Types | Text | CHAR, VARCHAR, TEXT |
| Date and Time Data Types | Date and Time values | DATE, TIME, DATETIME |
| Boolean Data Type | TRUE or FALSE | BOOLEAN |
| Binary Data Types | Binary data such as images and files | BLOB, BINARY |

---

## 1. Numeric Data Types

Numeric data types store numbers.

They are used for:

- Employee IDs
- Salaries
- Product prices
- Quantities
- Marks
- Age

Examples:

- `INT`
- `BIGINT`
- `DECIMAL`
- `FLOAT`
- `DOUBLE`

Example:

```sql
CREATE TABLE employees (
    employee_id INT,
    salary DECIMAL(10,2)
);
```

### Explanation

- `employee_id` stores whole numbers.
- `salary` stores decimal values accurately.

---

## 2. String Data Types

String data types store text.

They are used for:

- Employee names
- Email addresses
- Cities
- Product names
- Addresses

Examples:

- `CHAR`
- `VARCHAR`
- `TEXT`
- `ENUM`

Example:

```sql
CREATE TABLE employees (
    employee_name VARCHAR(100),
    city VARCHAR(50)
);
```

### Explanation

Both columns store text values.

`VARCHAR` is commonly used because it stores variable-length strings efficiently.

---

## 3. Date and Time Data Types

These data types store dates and time values.

They are used for:

- Joining dates
- Birth dates
- Attendance records
- Login timestamps
- Order dates

Examples:

- `DATE`
- `TIME`
- `DATETIME`
- `TIMESTAMP`
- `YEAR`

Example:

```sql
CREATE TABLE employees (
    joining_date DATE
);
```

### Explanation

The `joining_date` column stores dates in the `YYYY-MM-DD` format.

This allows MySQL to perform date-based calculations and comparisons efficiently.

---

## 4. Boolean Data Type

The Boolean data type stores logical values.

Possible values include:

- TRUE
- FALSE

MySQL internally stores Boolean values as:

- TRUE → 1
- FALSE → 0

Example:

```sql
CREATE TABLE employees (
    is_active BOOLEAN
);
```

### Explanation

The `is_active` column indicates whether an employee is currently active.

Although `BOOLEAN` is written in SQL, MySQL treats it as an alias for `TINYINT(1)`.

---

## 5. Binary Data Types

Binary data types store raw binary data instead of text.

They are commonly used for storing:

- Images
- Audio files
- Videos
- PDF documents
- Digital signatures

Examples:

- `BINARY`
- `VARBINARY`
- `BLOB`

Example:

```sql
CREATE TABLE employee_documents (
    employee_id INT,
    resume BLOB
);
```

### Explanation

The `resume` column stores binary file data instead of readable text.

Binary data types are useful when the application needs to store files directly in the database.

---

## Memory Tip

> 🧠 **Remember the Five Categories Using "NSDBB"**

```
MySQL Data Types
        │
        ├── Numeric
        ├── String
        ├── Date & Time
        ├── Boolean
        └── Binary
```

Think of it as:

- **N** → Numeric
- **S** → String
- **D** → Date & Time
- **B** → Boolean
- **B** → Binary

This simple sequence helps you quickly recall the major categories of MySQL data types.

---

# Numeric Data Types

## What is it?

**Numeric Data Types** are used to store **numeric values** in a MySQL database.

These values can be:

- Whole numbers
- Decimal numbers
- Very large numbers
- Approximate decimal numbers

Numeric data types are commonly used for storing information such as:

- Employee IDs
- Product IDs
- Salaries
- Prices
- Quantities
- Marks
- Age

---

## Why do we need it?

Almost every database stores numerical information.

For example, in an employee database:

| Information | Example |
|------------|----------|
| Employee ID | 101 |
| Age | 25 |
| Salary | ₹65,000.50 |
| Experience | 4 |
| Bonus | ₹8,500.75 |

Different numeric values require different amounts of storage and precision.

For example:

- Employee IDs usually require only whole numbers.
- Salaries require exact decimal values.
- Scientific calculations may require approximate decimal values.

Choosing the appropriate numeric data type helps:

- Save storage space.
- Improve query performance.
- Prevent invalid values.
- Store data accurately.

---

## Characteristics

- Stores numeric values only.
- Supports arithmetic operations.
- Available in different storage sizes.
- Some types store only whole numbers.
- Some types store decimal values.
- Some types store exact values, while others store approximate values.
- Choosing the correct type improves database performance.

---

## Categories of Numeric Data Types

MySQL provides several numeric data types.

| Data Type | Stores |
|-----------|--------|
| TINYINT | Very small whole numbers |
| SMALLINT | Small whole numbers |
| MEDIUMINT | Medium-sized whole numbers |
| INT / INTEGER | Standard whole numbers |
| BIGINT | Very large whole numbers |
| DECIMAL | Exact decimal values |
| FLOAT | Approximate decimal values |
| DOUBLE | High-precision approximate decimal values |

We will learn each data type one by one.

---

# TINYINT

## What is it?

`TINYINT` is the **smallest integer data type** in MySQL.

It stores **whole numbers only**.

Because it uses very little storage, it is suitable for storing small numeric values.

---

## Why do we need it?

Some values never become very large.

Examples include:

- Rating (1–5)
- Age (0–120)
- Number of attempts
- Status codes
- TRUE/FALSE values

Using `INT` for these small values wastes storage.

`TINYINT` stores them more efficiently.

---

## Characteristics

- Stores whole numbers only.
- Uses **1 byte** of storage.
- Supports signed and unsigned values.
- Cannot store decimal values.
- Commonly used for status flags and Boolean values.

---

## Range

### Signed

```
-128 to 127
```

### Unsigned

```
0 to 255
```

---

## Syntax

```sql
column_name TINYINT
```

or

```sql
column_name TINYINT UNSIGNED
```

---

## Examples

### Example 1

```sql
CREATE TABLE ratings (
    rating TINYINT
);
```

### Explanation

The `rating` column stores small whole numbers such as:

- 1
- 2
- 3
- 4
- 5

---

### Example 2

```sql
CREATE TABLE students (
    age TINYINT UNSIGNED
);
```

### Explanation

Age cannot be negative.

Using `UNSIGNED` allows values from **0 to 255**, making it a suitable choice.

---

### Example 3

```sql
CREATE TABLE employees (
    is_active TINYINT
);
```

### Explanation

The `is_active` column can store:

- 1 → Active
- 0 → Inactive

This is how MySQL internally stores Boolean values.

---

## Memory Tip

> 🧠 **TINYINT = Tiny Numbers**

```
Storage
   │
   ▼
1 Byte
   │
   ▼
Small Whole Numbers
```

Think of **TINYINT** whenever you need to store small integer values efficiently.

---

# SMALLINT

## What is it?

`SMALLINT` stores **small whole numbers** that are larger than what `TINYINT` can hold.

It is useful when `TINYINT` is too small but `INT` would use more storage than necessary.

---

## Why do we need it?

Suppose a school stores student roll numbers.

The roll numbers range from:

```
1 to 15,000
```

`TINYINT` cannot store values this large.

`SMALLINT` is a better choice because it supports a much larger range while using less storage than `INT`.

---

## Characteristics

- Stores whole numbers only.
- Uses **2 bytes** of storage.
- Supports signed and unsigned values.
- Cannot store decimal values.
- Suitable for moderately sized numeric values.

---

## Range

### Signed

```
-32,768 to 32,767
```

### Unsigned

```
0 to 65,535
```

---

## Syntax

```sql
column_name SMALLINT
```

or

```sql
column_name SMALLINT UNSIGNED
```

---

## Examples

### Example 1

```sql
CREATE TABLE students (
    roll_number SMALLINT
);
```

### Explanation

The `roll_number` column can store values up to 32,767 (signed) or 65,535 (unsigned).

---

### Example 2

```sql
CREATE TABLE inventory (
    quantity SMALLINT UNSIGNED
);
```

### Explanation

Product quantities cannot be negative.

Using `UNSIGNED` allows storing values from 0 to 65,535.

---

### Example 3

```sql
CREATE TABLE exams (
    total_marks SMALLINT
);
```

### Explanation

The `total_marks` column stores whole-number marks that may exceed the range of `TINYINT`.

---

## Memory Tip

> 🧠 **SMALLINT = Small but Bigger than TINYINT**

```
TINYINT
    │
    ▼
Very Small Numbers

SMALLINT
    │
    ▼
Small Numbers
```

Use **SMALLINT** when `TINYINT` is too small but `INT` is unnecessary.

---

# MEDIUMINT

## What is it?

`MEDIUMINT` is an integer data type used to store **medium-sized whole numbers**.

It provides a larger range than `SMALLINT` but uses less storage than `INT`.

It is useful when the values are too large for `SMALLINT` but do not require the full range of `INT`.

---

## Why do we need it?

Consider a company's employee management system.

Suppose the company has around **5 million employees**.

- `SMALLINT` cannot store employee IDs this large.
- `INT` can store them, but if your expected range comfortably fits within `MEDIUMINT`, it can save storage.

`MEDIUMINT` provides a balance between storage efficiency and value range.

---

## Characteristics

- Stores whole numbers only.
- Uses **3 bytes** of storage.
- Supports signed and unsigned values.
- Cannot store decimal values.
- Larger than `SMALLINT` but smaller than `INT`.

---

## Range

### Signed

```
-8,388,608 to 8,388,607
```

### Unsigned

```
0 to 16,777,215
```

---

## Syntax

```sql
column_name MEDIUMINT
```

or

```sql
column_name MEDIUMINT UNSIGNED
```

---

## Examples

### Example 1

```sql
CREATE TABLE employees (
    employee_id MEDIUMINT
);
```

### Explanation

The `employee_id` column can store millions of employee IDs while using less storage than `INT`.

---

### Example 2

```sql
CREATE TABLE products (
    product_id MEDIUMINT UNSIGNED
);
```

### Explanation

Product IDs are always positive.

Using `UNSIGNED` increases the maximum value to **16,777,215**.

---

### Example 3

```sql
CREATE TABLE orders (
    order_number MEDIUMINT
);
```

### Explanation

The `order_number` column stores medium-sized whole numbers efficiently.

---

## Memory Tip

> 🧠 **MEDIUMINT = Between SMALLINT and INT**

```
TINYINT
     │
     ▼
SMALLINT
     │
     ▼
MEDIUMINT
     │
     ▼
INT
```

Think of **MEDIUMINT** as the middle option between `SMALLINT` and `INT`.

---

# INT / INTEGER

## What is it?

`INT` (or `INTEGER`) is the **most commonly used integer data type** in MySQL.

It stores **whole numbers** and is suitable for most applications.

In MySQL, `INT` and `INTEGER` are exactly the same data type.

---

## Why do we need it?

Many database values require a standard integer range.

Examples include:

- Employee IDs
- Customer IDs
- Product IDs
- Order IDs
- Invoice Numbers

For most business applications, `INT` provides more than enough storage.

---

## Characteristics

- Stores whole numbers only.
- Uses **4 bytes** of storage.
- Supports signed and unsigned values.
- Cannot store decimal values.
- Most commonly used integer data type.

---

## Range

### Signed

```
-2,147,483,648 to 2,147,483,647
```

### Unsigned

```
0 to 4,294,967,295
```

---

## Syntax

```sql
column_name INT
```

or

```sql
column_name INTEGER
```

or

```sql
column_name INT UNSIGNED
```

---

## Examples

### Example 1

```sql
CREATE TABLE employees (
    employee_id INT
);
```

### Explanation

The `employee_id` column stores whole-number employee IDs.

This is the most common choice for primary keys in small and medium-sized applications.

---

### Example 2

```sql
CREATE TABLE customers (
    customer_id INT UNSIGNED
);
```

### Explanation

Customer IDs are always positive.

Using `UNSIGNED` increases the maximum allowable value.

---

### Example 3

```sql
CREATE TABLE orders (
    order_id INTEGER
);
```

### Explanation

`INTEGER` is simply another name for `INT`.

Both definitions create the same type of column.

---

## Memory Tip

> 🧠 **INT = Standard Integer**

```
Most Applications
        │
        ▼
      INT
        │
        ▼
Whole Numbers
```

Whenever you need to store a standard whole number, `INT` is usually the best choice.

---

# BIGINT

## What is it?

`BIGINT` is the largest integer data type available in MySQL.

It is used to store **very large whole numbers** that exceed the range of `INT`.

---

## Why do we need it?

Some applications generate billions or even trillions of records.

Examples include:

- Social media platforms
- Banking systems
- E-commerce websites
- IoT devices
- Large-scale logging systems

In these cases, `INT` may eventually run out of values.

`BIGINT` provides a much larger range.

---

## Characteristics

- Stores whole numbers only.
- Uses **8 bytes** of storage.
- Supports signed and unsigned values.
- Cannot store decimal values.
- Suitable for extremely large numeric values.

---

## Range

### Signed

```
-9,223,372,036,854,775,808
to
9,223,372,036,854,775,807
```

### Unsigned

```
0
to
18,446,744,073,709,551,615
```

---

## Syntax

```sql
column_name BIGINT
```

or

```sql
column_name BIGINT UNSIGNED
```

---

## Examples

### Example 1

```sql
CREATE TABLE transactions (
    transaction_id BIGINT
);
```

### Explanation

A banking application may generate billions of transactions.

`BIGINT` provides enough range for such large datasets.

---

### Example 2

```sql
CREATE TABLE logs (
    log_id BIGINT UNSIGNED
);
```

### Explanation

Log records continuously increase over time.

Using `BIGINT UNSIGNED` allows storing a very large number of positive IDs.

---

### Example 3

```sql
CREATE TABLE analytics (
    visitor_count BIGINT
);
```

### Explanation

A high-traffic website may record billions of visitors over several years.

`BIGINT` ensures the value does not exceed the supported range.

---

## Memory Tip

> 🧠 **BIGINT = Biggest Integer**

```
TINYINT
     │
SMALLINT
     │
MEDIUMINT
     │
INT
     │
BIGINT
```

As you move downward, both the **storage size** and the **range of values** increase.

---

# DECIMAL

## What is it?

`DECIMAL` is a numeric data type used to store **exact decimal numbers**.

Unlike `FLOAT` and `DOUBLE`, `DECIMAL` stores values **without losing precision**, making it the preferred choice for financial and monetary data.

It is commonly used for storing:

- Salaries
- Product prices
- Bank balances
- Tax amounts
- Discounts
- Interest rates

---

## Why do we need it?

Some calculations require **100% accuracy**.

For example:

| Item | Amount |
|------|---------:|
| Product Price | ₹1,499.99 |
| Tax | ₹269.99 |
| Final Amount | ₹1,769.98 |

If these values are stored using an approximate data type, small rounding errors may occur.

In banking, payroll, billing, and accounting systems, even a small error can produce incorrect results.

The `DECIMAL` data type stores values exactly, making it the ideal choice for financial applications.

---

## Characteristics

- Stores exact decimal values.
- Suitable for financial calculations.
- Prevents rounding errors.
- Supports signed and unsigned values.
- Requires precision and scale.
- More accurate than `FLOAT` and `DOUBLE`.

---

## Precision and Scale

The syntax of `DECIMAL` is:

```sql
DECIMAL(precision, scale)
```

Where:

- **Precision** = Total number of digits.
- **Scale** = Number of digits after the decimal point.

Example:

```sql
DECIMAL(10,2)
```

This means:

- Total digits = 10
- Decimal digits = 2

Examples of valid values:

- 1500.50
- 98765.99
- 10.25

---

## Syntax

```sql
column_name DECIMAL(precision, scale)
```

Example:

```sql
salary DECIMAL(10,2)
```

---

## Examples

### Example 1

```sql
CREATE TABLE employees (
    salary DECIMAL(10,2)
);
```

### Explanation

The `salary` column stores values such as:

- ₹45,000.00
- ₹78,550.75
- ₹1,25,999.99

The values are stored exactly without losing precision.

---

### Example 2

```sql
CREATE TABLE products (
    price DECIMAL(8,2)
);
```

### Explanation

The `price` column stores product prices with exactly two decimal places.

Examples:

- ₹999.99
- ₹2,499.50
- ₹15.75

---

### Example 3

```sql
CREATE TABLE accounts (
    balance DECIMAL(15,2)
);
```

### Explanation

Bank account balances require exact values.

Using `DECIMAL` ensures calculations remain accurate.

---

## Memory Tip

> 🧠 **DECIMAL = Exact Decimal Numbers**

```
Money
   │
   ▼
DECIMAL
   │
   ▼
No Rounding Errors
```

Whenever accuracy is important, especially for money, choose **DECIMAL**.

---

# FLOAT

## What is it?

`FLOAT` is a numeric data type used to store **approximate decimal values**.

It is designed for situations where a small loss of precision is acceptable.

It uses less storage than `DOUBLE`, but it also provides lower precision.

---

## Why do we need it?

Not every decimal value requires perfect accuracy.

Examples include:

- Temperature
- Height
- Weight
- Scientific measurements
- Sensor readings

In these situations, a very small rounding difference is usually acceptable.

Using `FLOAT` saves storage space.

---

## Characteristics

- Stores approximate decimal values.
- Uses **4 bytes** of storage.
- Faster for approximate calculations.
- May introduce small rounding errors.
- Not recommended for financial applications.

---

## Syntax

```sql
column_name FLOAT
```

---

## Examples

### Example 1

```sql
CREATE TABLE weather (
    temperature FLOAT
);
```

### Explanation

The `temperature` column stores decimal values such as:

- 32.5
- 28.75
- 41.2

A slight loss of precision is generally acceptable for temperature readings.

---

### Example 2

```sql
CREATE TABLE fitness (
    height FLOAT
);
```

### Explanation

The `height` column stores measurements such as:

- 172.4
- 165.8
- 180.1

Approximate values are sufficient for this type of data.

---

### Example 3

```sql
CREATE TABLE sensors (
    pressure FLOAT
);
```

### Explanation

Sensor readings often produce approximate decimal values.

`FLOAT` stores these values efficiently.

---

## Memory Tip

> 🧠 **FLOAT = Approximate Decimal Values**

```
Decimal Values
      │
      ▼
    FLOAT
      │
      ▼
Small Rounding Errors Possible
```

Use **FLOAT** when a small loss of precision is acceptable.

---

# DOUBLE

## What is it?

`DOUBLE` is a numeric data type used to store **high-precision approximate decimal values**.

It provides greater precision than `FLOAT` while still storing approximate values.

---

## Why do we need it?

Some applications require more precision than `FLOAT` but still do not require exact values.

Examples include:

- Scientific calculations
- Engineering applications
- Geographic coordinates
- Physics simulations
- Statistical analysis

`DOUBLE` offers a larger range and higher precision than `FLOAT`.

---

## Characteristics

- Stores approximate decimal values.
- Uses **8 bytes** of storage.
- Higher precision than `FLOAT`.
- May still produce rounding errors.
- Not suitable for financial calculations.

---

## Syntax

```sql
column_name DOUBLE
```

---

## Examples

### Example 1

```sql
CREATE TABLE locations (
    latitude DOUBLE,
    longitude DOUBLE
);
```

### Explanation

Latitude and longitude values require more precision than `FLOAT`.

`DOUBLE` is commonly used for geographic coordinates.

---

### Example 2

```sql
CREATE TABLE experiments (
    measurement DOUBLE
);
```

### Explanation

Scientific measurements often require greater precision.

`DOUBLE` provides more accurate results than `FLOAT`.

---

### Example 3

```sql
CREATE TABLE astronomy (
    distance DOUBLE
);
```

### Explanation

Astronomical calculations involve extremely large decimal values.

`DOUBLE` can store these values with higher precision.

---

## Memory Tip

> 🧠 **DOUBLE = More Precision than FLOAT**

```
Approximate Numbers
        │
        ├── FLOAT
        │      ↓
        │  Less Precision
        │
        └── DOUBLE
               ↓
        More Precision
```

Remember:

- **DECIMAL** → Exact values (Money, Banking, Payroll)
- **FLOAT** → Approximate values (Temperature, Height, Weight)
- **DOUBLE** → More precise approximate values (Science, Engineering, GPS)

---

# String Data Types

## What is it?

**String Data Types** are used to store **textual data** in a MySQL database.

They can store:

- Names
- Addresses
- Cities
- Email addresses
- Phone numbers
- Product names
- Descriptions

Whenever a column stores letters, words, sentences, or a combination of letters and numbers, a string data type is generally used.

---

## Why do we need it?

Most databases store textual information.

For example, an employee database may contain:

| Information | Example |
|------------|---------|
| Employee Name | Amit Sharma |
| Department | IT |
| City | Pune |
| Email | amit@gmail.com |
| Designation | Software Engineer |

Numbers cannot correctly store this information.

String data types allow MySQL to:

- Store text efficiently.
- Search text values.
- Sort text alphabetically.
- Perform string operations.
- Validate character length.

---

## Characteristics

- Stores characters and text.
- Supports letters, numbers, and special characters.
- Different data types use different storage methods.
- Some data types have fixed length.
- Some data types have variable length.
- Suitable for names, addresses, descriptions, and codes.

---

## Types of String Data Types

| Data Type | Stores |
|-----------|--------|
| CHAR | Fixed-length text |
| VARCHAR | Variable-length text |
| TEXT | Large text |
| ENUM | One value from a predefined list |

We will now study each data type in detail.

---

# CHAR

## What is it?

`CHAR` is a **fixed-length** string data type.

It always reserves the specified number of characters, even if the stored value is shorter.

---

## Why do we need it?

Some values always have the same length.

Examples include:

- Country Codes (IN, US, UK)
- Gender (M, F)
- Blood Groups (A+, O-)
- State Codes

Using `CHAR` for fixed-length values improves storage consistency.

---

## Characteristics

- Stores fixed-length text.
- Maximum length is **255 characters**.
- Pads remaining space with spaces if the value is shorter.
- Faster for fixed-length values.
- Best suited for values with a consistent size.

---

## Syntax

```sql
column_name CHAR(length)
```

---

## Examples

### Example 1

```sql
CREATE TABLE countries (
    country_code CHAR(2)
);
```

### Explanation

The `country_code` column stores values such as:

- IN
- US
- UK

Every value occupies exactly 2 characters.

---

### Example 2

```sql
CREATE TABLE employees (
    gender CHAR(1)
);
```

### Explanation

The `gender` column stores values such as:

- M
- F

Each value occupies one character.

---

### Example 3

```sql
CREATE TABLE students (
    grade CHAR(2)
);
```

### Explanation

The `grade` column stores values such as:

- A+
- B+
- C-

Since grades have a fixed length, `CHAR` is a suitable choice.

---

## Memory Tip

> 🧠 **CHAR = Fixed-Length Text**

```
CHAR(5)

CAT

Stored As

CAT__
```

(The underscores represent spaces added by MySQL.)

Remember:

**CHAR always reserves the specified number of characters.**

---

# VARCHAR

## What is it?

`VARCHAR` is a **variable-length** string data type.

Unlike `CHAR`, it stores only the actual number of characters entered.

It is the most commonly used string data type in MySQL.

---

## Why do we need it?

Most text values have different lengths.

For example:

| Employee Name |
|--------------|
| Amit |
| Priya Patel |
| Rahul Verma |
| Sneha Joshi |

If `CHAR(100)` were used, every name would occupy 100 characters, wasting storage.

`VARCHAR` stores only the required characters, making it much more storage-efficient.

---

## Characteristics

- Stores variable-length text.
- Maximum length is **65,535 bytes** (subject to row size limits).
- Uses only the required storage (plus a small overhead).
- Saves storage space.
- Most commonly used string data type.

---

## Syntax

```sql
column_name VARCHAR(length)
```

---

## Examples

### Example 1

```sql
CREATE TABLE employees (
    employee_name VARCHAR(100)
);
```

### Explanation

The `employee_name` column stores names of different lengths efficiently.

Examples:

- Amit
- Priya Patel
- Rahul Verma

---

### Example 2

```sql
CREATE TABLE customers (
    email VARCHAR(150)
);
```

### Explanation

Email addresses have varying lengths.

`VARCHAR` stores each email using only the required space.

---

### Example 3

```sql
CREATE TABLE products (
    product_name VARCHAR(200)
);
```

### Explanation

Product names can be short or long.

`VARCHAR` efficiently stores both without reserving unnecessary space.

---

## Memory Tip

> 🧠 **VARCHAR = Variable-Length Text**

```
VARCHAR(100)

Amit

Stores

Amit

Priya Patel

Stores

Priya Patel
```

Only the entered characters are stored.

---

# CHAR vs VARCHAR

| Feature | CHAR | VARCHAR |
|---------|------|----------|
| Length | Fixed | Variable |
| Storage | Always reserves full length | Uses only required storage |
| Space Efficiency | Lower | Higher |
| Performance | Slightly faster for fixed-length values | Better for variable-length values |
| Best Used For | Country codes, Gender, Grades | Names, Email, Address, Product Names |

---

## Memory Tip

> 🧠 **Easy Comparison**

```
Fixed Length
      │
      ▼
    CHAR

Variable Length
      │
      ▼
   VARCHAR
```

Think:

- **CHAR** → Fixed size
- **VARCHAR** → Variable size

---

# TEXT

## What is it?

`TEXT` is a string data type used to store **large amounts of text**.

Unlike `CHAR` and `VARCHAR`, which are generally used for shorter text, `TEXT` is designed for storing long textual content.

It is commonly used for:

- Product descriptions
- Blog articles
- Customer feedback
- Comments
- Notes
- Documentation

---

## Why do we need it?

Some information cannot fit comfortably into a `VARCHAR` column.

For example:

| Information | Example |
|------------|---------|
| Product Description | Several paragraphs |
| Blog Content | Thousands of characters |
| Customer Feedback | Long reviews |
| Notes | Detailed remarks |

Using `TEXT` allows MySQL to store large amounts of text efficiently.

---

## Characteristics

- Stores large text values.
- Supports variable-length text.
- Maximum size is **65,535 bytes (64 KB)**.
- Suitable for paragraphs and long descriptions.
- Cannot have a default value in many MySQL versions.
- Uses only the required storage for the text.

---

## Syntax

```sql
column_name TEXT
```

---

## Examples

### Example 1

```sql
CREATE TABLE products (
    description TEXT
);
```

### Explanation

The `description` column stores detailed product information consisting of multiple sentences or paragraphs.

---

### Example 2

```sql
CREATE TABLE blogs (
    article TEXT
);
```

### Explanation

The `article` column stores complete blog posts that may contain thousands of characters.

---

### Example 3

```sql
CREATE TABLE feedback (
    customer_review TEXT
);
```

### Explanation

Customer reviews vary in length.

`TEXT` stores both short and long reviews efficiently.

---

## Memory Tip

> 🧠 **TEXT = Large Text**

```
Small Text
     │
     ▼
VARCHAR

Large Text
     │
     ▼
TEXT
```

Whenever you need to store paragraphs or lengthy content, use **TEXT**.

---

# ENUM

## What is it?

`ENUM` is a string data type that allows a column to store **only one value from a predefined list**.

Instead of allowing any text, MySQL restricts the value to one of the specified options.

---

## Why do we need it?

Many columns have only a fixed set of possible values.

Examples include:

- Gender
- Order Status
- Payment Method
- Employee Status
- Priority Level

Without `ENUM`, users could accidentally enter inconsistent values such as:

- Male
- male
- MALE
- M

Using `ENUM` ensures that only valid values are stored.

---

## Characteristics

- Stores one value from a predefined list.
- Prevents invalid data entry.
- Improves data consistency.
- Suitable for columns with a limited number of possible values.
- Internally stores values efficiently.

---

## Syntax

```sql
column_name ENUM('value1', 'value2', 'value3')
```

---

## Examples

### Example 1

```sql
CREATE TABLE employees (
    gender ENUM('Male', 'Female')
);
```

### Explanation

The `gender` column accepts only:

- Male
- Female

Any other value is rejected.

---

### Example 2

```sql
CREATE TABLE orders (
    order_status ENUM(
        'Pending',
        'Processing',
        'Shipped',
        'Delivered',
        'Cancelled'
    )
);
```

### Explanation

The `order_status` column can contain only one of the five predefined values.

This prevents invalid order statuses from being stored.

---

### Example 3

```sql
CREATE TABLE tasks (
    priority ENUM(
        'Low',
        'Medium',
        'High'
    )
);
```

### Explanation

Each task can have only one priority level.

Using `ENUM` keeps the data consistent throughout the database.

---

## Memory Tip

> 🧠 **ENUM = Choose One from the List**

```
Priority

Low
Medium
High

      │
      ▼

Only One Value Allowed
```

Think of **ENUM** as a drop-down menu where users must select one value from a predefined list.

---

# VARCHAR vs TEXT

Although both `VARCHAR` and `TEXT` store variable-length text, they are designed for different purposes.

| Feature | VARCHAR | TEXT |
|---------|----------|------|
| Purpose | Short to medium-length text | Large text |
| Maximum Size | Up to 65,535 bytes (subject to row size limits) | 65,535 bytes (64 KB) |
| Best Used For | Names, Emails, Cities, Addresses | Articles, Reviews, Descriptions |
| Storage | Variable-length | Variable-length |
| Suitable for Large Paragraphs | No | Yes |

---

## Example

### VARCHAR

```sql
CREATE TABLE employees (
    employee_name VARCHAR(100)
);
```

### Explanation

Suitable for storing employee names because they are relatively short.

---

### TEXT

```sql
CREATE TABLE blogs (
    article TEXT
);
```

### Explanation

Suitable for storing long articles that may contain thousands of characters.

---

## Memory Tip

> 🧠 **VARCHAR vs TEXT**

```
Names
Emails
Cities
Addresses
      │
      ▼
   VARCHAR

Paragraphs
Reviews
Articles
Descriptions
      │
      ▼
     TEXT
```

Remember:

- **VARCHAR** → Everyday text
- **TEXT** → Large textual content

---

# Date and Time Data Types

## What is it?

**Date and Time Data Types** are used to store **dates, times, or both** in a MySQL database.

These data types help MySQL understand calendar dates and time values so that it can perform date and time calculations accurately.

They are commonly used for storing:

- Employee joining dates
- Customer birth dates
- Order dates
- Login timestamps
- Meeting times
- Event schedules

---

## Why do we need it?

Almost every real-world application stores date and time information.

For example:

| Information | Example |
|------------|---------|
| Joining Date | 2024-07-15 |
| Date of Birth | 2001-03-20 |
| Login Time | 09:45:30 |
| Order Date | 2025-01-18 |
| Meeting Time | 14:30:00 |

If dates were stored as normal text, MySQL would not be able to:

- Calculate employee experience.
- Find today's orders.
- Compare two dates.
- Calculate age.
- Find overdue tasks.

Using Date and Time data types allows MySQL to perform these operations efficiently.

---

## Characteristics

- Stores date, time, or both.
- Supports date calculations.
- Supports time calculations.
- Enables sorting by date and time.
- Makes filtering records easier.
- Uses standard date and time formats.

---

## Types of Date and Time Data Types

| Data Type | Stores |
|-----------|--------|
| DATE | Date only |
| TIME | Time only |
| DATETIME | Date and Time |
| TIMESTAMP | Date and Time (commonly used for automatic timestamps) |
| YEAR | Year only |

We will study each data type one by one.

---

# DATE

## What is it?

`DATE` stores **only the calendar date**.

It does not store the time.

The standard format is:

```
YYYY-MM-DD
```

Example:

```
2026-07-28
```

---

## Why do we need it?

Many applications require only the date.

Examples:

- Employee joining date
- Customer birth date
- Order date
- Holiday date
- Invoice date

Since time is not required, using `DATE` is the most appropriate choice.

---

## Characteristics

- Stores only the date.
- Does not store time.
- Uses the `YYYY-MM-DD` format.
- Supports date comparisons and calculations.
- Suitable for birthdays, joining dates, and order dates.

---

## Syntax

```sql
column_name DATE
```

---

## Examples

### Example 1

```sql
CREATE TABLE employees (
    joining_date DATE
);
```

### Explanation

The `joining_date` column stores values such as:

- 2024-01-15
- 2023-08-10
- 2022-05-20

---

### Example 2

```sql
CREATE TABLE customers (
    birth_date DATE
);
```

### Explanation

The `birth_date` column stores the customer's date of birth.

Only the date is stored.

---

### Example 3

```sql
CREATE TABLE orders (
    order_date DATE
);
```

### Explanation

The `order_date` column records the date on which the order was placed.

---

## Memory Tip

> 🧠 **DATE = Calendar Date Only**

```
DATE

2026-07-28

No Time Stored
```

Whenever only the calendar date is required, choose **DATE**.

---

# TIME

## What is it?

`TIME` stores **only the time of day**.

It does not store the date.

The standard format is:

```
HH:MM:SS
```

Example:

```
14:30:45
```

---

## Why do we need it?

Sometimes only the time is important.

Examples:

- Office login time
- Meeting time
- Class time
- Train departure time
- Shop opening time

Using `TIME` stores only the required information.

---

## Characteristics

- Stores only time.
- Does not store the date.
- Uses the `HH:MM:SS` format.
- Supports time calculations.
- Suitable for schedules and daily timings.

---

## Syntax

```sql
column_name TIME
```

---

## Examples

### Example 1

```sql
CREATE TABLE attendance (
    login_time TIME
);
```

### Explanation

The `login_time` column stores values such as:

- 09:00:00
- 09:15:30
- 08:45:10

---

### Example 2

```sql
CREATE TABLE meetings (
    meeting_time TIME
);
```

### Explanation

The `meeting_time` column stores the scheduled meeting time.

Only the time is stored.

---

### Example 3

```sql
CREATE TABLE trains (
    departure_time TIME
);
```

### Explanation

The `departure_time` column stores train departure times without storing the date.

---

## Memory Tip

> 🧠 **TIME = Clock Time Only**

```
TIME

14:30:45

No Date Stored
```

Whenever only the time is required, choose **TIME**.

---

# DATETIME

## What is it?

`DATETIME` stores **both the date and the time** together.

The standard format is:

```
YYYY-MM-DD HH:MM:SS
```

Example:

```
2026-07-28 14:30:45
```

---

## Why do we need it?

Many applications require both the date and the exact time.

Examples:

- Order placed
- Appointment booked
- Meeting scheduled
- Flight departure
- Exam start time

Using `DATETIME` stores complete date and time information in a single column.

---

## Characteristics

- Stores both date and time.
- Uses the `YYYY-MM-DD HH:MM:SS` format.
- Suitable for recording events.
- Supports date and time calculations.
- Does not automatically update when a row changes.

---

## Syntax

```sql
column_name DATETIME
```

---

## Examples

### Example 1

```sql
CREATE TABLE orders (
    order_datetime DATETIME
);
```

### Explanation

The `order_datetime` column stores both the order date and the exact time the order was placed.

---

### Example 2

```sql
CREATE TABLE appointments (
    appointment_datetime DATETIME
);
```

### Explanation

The `appointment_datetime` column stores the scheduled appointment date and time together.

---

### Example 3

```sql
CREATE TABLE events (
    event_datetime DATETIME
);
```

### Explanation

The `event_datetime` column records when an event starts, including both the date and the time.

---

## Memory Tip

> 🧠 **DATETIME = Date + Time**

```
DATE
     +
TIME
     │
     ▼
DATETIME

2026-07-28 14:30:45
```

Choose **DATETIME** whenever you need to store both the calendar date and the exact time.

---

# TIMESTAMP

## What is it?

`TIMESTAMP` is a date and time data type that stores **both the date and the time**.

Its format is:

```
YYYY-MM-DD HH:MM:SS
```

At first glance, it looks similar to `DATETIME`.

However, `TIMESTAMP` has one important feature:

It can **automatically record the current date and time** when a row is inserted or updated.

Because of this, `TIMESTAMP` is widely used for tracking when records are created or modified.

---

## Why do we need it?

Many applications need to know:

- When a record was created.
- When a record was last updated.
- When a user logged in.
- When an order was placed.
- When a payment was received.

Instead of manually entering the current date and time every time, MySQL can automatically store it using `TIMESTAMP`.

---

## Characteristics

- Stores both date and time.
- Uses the format `YYYY-MM-DD HH:MM:SS`.
- Can automatically store the current timestamp.
- Can automatically update when a row is modified.
- Commonly used for auditing and tracking record changes.

---

## Syntax

```sql
column_name TIMESTAMP
```

or

```sql
column_name TIMESTAMP
DEFAULT CURRENT_TIMESTAMP
```

or

```sql
column_name TIMESTAMP
DEFAULT CURRENT_TIMESTAMP
ON UPDATE CURRENT_TIMESTAMP
```

---

## Examples

### Example 1

```sql
CREATE TABLE employees (
    created_at TIMESTAMP
);
```

### Explanation

The `created_at` column stores both the date and time.

The value is entered manually unless a default value is specified.

---

### Example 2

```sql
CREATE TABLE employees (
    created_at TIMESTAMP
    DEFAULT CURRENT_TIMESTAMP
);
```

### Explanation

Whenever a new employee record is inserted, MySQL automatically stores the current date and time.

Example:

```
2026-07-28 10:45:15
```

---

### Example 3

```sql
CREATE TABLE employees (
    updated_at TIMESTAMP
    DEFAULT CURRENT_TIMESTAMP
    ON UPDATE CURRENT_TIMESTAMP
);
```

### Explanation

When a new row is inserted:

- The current timestamp is stored automatically.

Whenever the row is updated:

- The `updated_at` column is automatically updated with the latest date and time.

This is useful for tracking the last modification time of a record.

---

## Memory Tip

> 🧠 **TIMESTAMP = Automatic Date & Time**

```
Insert Row
     │
     ▼
Current Date & Time

Update Row
     │
     ▼
Automatically Updated
```

Think of **TIMESTAMP** as a digital clock that records **when something happened**.

---

# YEAR

## What is it?

`YEAR` is a data type used to store **only the year**.

Unlike `DATE`, it does not store the month or day.

Example values:

```
2024
2025
2026
```

---

## Why do we need it?

Some applications require only the year.

Examples include:

- Manufacturing year
- Graduation year
- Model year of a vehicle
- Passing year
- Joining year

Using `YEAR` is more appropriate than storing a complete date when only the year is required.

---

## Characteristics

- Stores only the year.
- Uses **1 byte** of storage.
- Displays values in `YYYY` format.
- Suitable when month and day are not needed.

---

## Syntax

```sql
column_name YEAR
```

---

## Examples

### Example 1

```sql
CREATE TABLE students (
    graduation_year YEAR
);
```

### Explanation

The `graduation_year` column stores values such as:

- 2024
- 2025
- 2026

---

### Example 2

```sql
CREATE TABLE vehicles (
    model_year YEAR
);
```

### Explanation

The `model_year` column stores the manufacturing year of a vehicle.

---

### Example 3

```sql
CREATE TABLE employees (
    joining_year YEAR
);
```

### Explanation

The `joining_year` column stores only the year an employee joined the company.

---

## Memory Tip

> 🧠 **YEAR = Year Only**

```
DATE

2026-07-28

        │

Keep Only

        ▼

2026
```

Whenever only the year is needed, use **YEAR**.

---

# DATETIME vs TIMESTAMP

Although both `DATETIME` and `TIMESTAMP` store **date and time**, they are designed for different purposes.

| Feature | DATETIME | TIMESTAMP |
|---------|----------|-----------|
| Stores | Date and Time | Date and Time |
| Format | YYYY-MM-DD HH:MM:SS | YYYY-MM-DD HH:MM:SS |
| Automatic Current Time | No | Yes (using `CURRENT_TIMESTAMP`) |
| Automatic Update | No | Yes (`ON UPDATE CURRENT_TIMESTAMP`) |
| Common Use | Appointments, Events, Schedules | Created Date, Updated Date, Login Time, Audit Columns |

---

## Example

### DATETIME

```sql
CREATE TABLE meetings (
    meeting_datetime DATETIME
);
```

### Explanation

The meeting date and time are entered manually because they represent a scheduled event.

---

### TIMESTAMP

```sql
CREATE TABLE employees (
    updated_at TIMESTAMP
    DEFAULT CURRENT_TIMESTAMP
    ON UPDATE CURRENT_TIMESTAMP
);
```

### Explanation

The `updated_at` column automatically records the current date and time whenever the row is updated.

---

## Memory Tip

> 🧠 **Simple Rule**

```
Event Date & Time
        │
        ▼
     DATETIME

Automatic Tracking
        │
        ▼
     TIMESTAMP
```

Remember:

- **DATETIME** → Store a specific date and time.
- **TIMESTAMP** → Automatically record when a row is created or updated.


---

# Boolean Data Type

## What is it?

The **Boolean** data type is used to store **logical values**.

A Boolean value represents only two possible states:

- TRUE
- FALSE

In MySQL, `BOOLEAN` is actually an alias for `TINYINT(1)`.

This means MySQL internally stores:

- TRUE as **1**
- FALSE as **0**

---

## Why do we need it?

Many real-world applications need to answer simple **Yes/No** or **True/False** questions.

Examples include:

| Information | Possible Values |
|------------|-----------------|
| Employee Active | TRUE / FALSE |
| Payment Completed | TRUE / FALSE |
| Email Verified | TRUE / FALSE |
| Product Available | TRUE / FALSE |
| Student Passed | TRUE / FALSE |

Instead of storing text such as:

```
Yes
No
```

or

```
Active
Inactive
```

we can store logical values more efficiently using the Boolean data type.

---

## Characteristics

- Stores logical values.
- Represents only two states.
- Internally stored as `1` or `0`.
- Improves readability.
- Commonly used for status columns.
- Uses very little storage.

---

## Syntax

```sql
column_name BOOLEAN
```

or

```sql
column_name BOOL
```

Both `BOOLEAN` and `BOOL` are treated the same in MySQL.

---

## Examples

### Example 1

```sql
CREATE TABLE employees (
    employee_id INT,
    is_active BOOLEAN
);
```

### Explanation

The `is_active` column stores whether an employee is currently active.

Possible values:

```
TRUE
FALSE
```

Internally:

```
TRUE  → 1
FALSE → 0
```

---

### Example 2

```sql
CREATE TABLE users (
    email_verified BOOLEAN
);
```

### Explanation

The `email_verified` column indicates whether a user's email address has been verified.

---

### Example 3

```sql
CREATE TABLE orders (
    payment_completed BOOLEAN
);
```

### Explanation

The `payment_completed` column stores whether the payment has been successfully completed.

---

## Memory Tip

> 🧠 **BOOLEAN = Yes or No**

```
Question

Is Employee Active?

        │

        ▼

TRUE
or
FALSE

↓

1 or 0
```

Think of **BOOLEAN** whenever a column has only two possible values.

---

# Binary Data Types

## What is it?

**Binary Data Types** are used to store **binary data** instead of readable text.

Binary data includes:

- Images
- PDF documents
- Audio files
- Videos
- Digital signatures
- Other file formats

Unlike string data types, binary data types store raw bytes.

---

## Why do we need it?

Some applications need to store files directly inside the database.

Examples include:

- Employee profile photos
- Company logos
- PDF invoices
- Medical reports
- Digital certificates

Since these files are not ordinary text, MySQL provides binary data types.

---

## Characteristics

- Stores binary data.
- Suitable for files and multimedia.
- Stores raw bytes instead of characters.
- Commonly used for documents and images.
- Different binary data types support different storage sizes.

---

## Common Binary Data Types

| Data Type | Purpose |
|-----------|----------|
| BINARY | Fixed-length binary data |
| VARBINARY | Variable-length binary data |
| BLOB | Large binary objects |

---

# BINARY

## What is it?

`BINARY` stores **fixed-length binary data**.

It behaves similarly to `CHAR`, but stores bytes instead of text characters.

---

## Syntax

```sql
column_name BINARY(length)
```

---

## Example

```sql
CREATE TABLE encryption_keys (
    secret_key BINARY(16)
);
```

### Explanation

The `secret_key` column stores binary values of exactly 16 bytes.

---

## Memory Tip

> 🧠 **BINARY = Fixed Binary Data**

```
Fixed Bytes

↓

BINARY
```

---

# VARBINARY

## What is it?

`VARBINARY` stores **variable-length binary data**.

It behaves similarly to `VARCHAR`, but stores bytes instead of characters.

---

## Syntax

```sql
column_name VARBINARY(length)
```

---

## Example

```sql
CREATE TABLE files (
    file_hash VARBINARY(64)
);
```

### Explanation

The `file_hash` column stores binary values whose length may vary up to the specified limit.

---

## Memory Tip

> 🧠 **VARBINARY = Variable Binary Data**

```
Variable Bytes

↓

VARBINARY
```

---

# BLOB

## What is it?

`BLOB` stands for **Binary Large Object**.

It is used to store **large binary files**.

Examples include:

- Images
- Videos
- Audio
- PDF files
- ZIP files

---

## Why do we need it?

Applications sometimes need to store files directly inside the database.

Examples:

- Employee profile photo
- Company logo
- Passport copy
- Resume
- Medical report

`BLOB` is designed specifically for these scenarios.

---

## Characteristics

- Stores large binary objects.
- Suitable for multimedia files.
- Stores raw binary bytes.
- Can store thousands of bytes depending on the BLOB type.

---

## Syntax

```sql
column_name BLOB
```

---

## Examples

### Example 1

```sql
CREATE TABLE employees (
    profile_photo BLOB
);
```

### Explanation

The `profile_photo` column stores employee images.

---

### Example 2

```sql
CREATE TABLE documents (
    resume BLOB
);
```

### Explanation

The `resume` column stores PDF or Word documents.

---

### Example 3

```sql
CREATE TABLE companies (
    company_logo BLOB
);
```

### Explanation

The `company_logo` column stores image files for company branding.

---

## Memory Tip

> 🧠 **BLOB = Large Binary Files**

```
Images
PDFs
Videos
Audio

      │

      ▼

    BLOB
```

Whenever you need to store large binary files, use **BLOB**.

---

# Binary Data Types Comparison

| Data Type | Storage Type | Best Used For |
|-----------|--------------|---------------|
| BINARY | Fixed-length binary data | Encryption keys, Fixed byte values |
| VARBINARY | Variable-length binary data | Hash values, Binary identifiers |
| BLOB | Large binary objects | Images, PDFs, Videos, Audio |

---

## Memory Tip

> 🧠 **Easy Way to Remember**

```
Fixed Bytes
      │
      ▼
   BINARY

Variable Bytes
      │
      ▼
 VARBINARY

Large Files
      │
      ▼
    BLOB
```

Think of them as:

- **BINARY** → Fixed binary data
- **VARBINARY** → Variable binary data
- **BLOB** → Large binary files

---

# Choosing the Right Data Type

## What is it?

Choosing the right data type means selecting the **most appropriate MySQL data type** for each column based on the kind of data it will store.

A good data type should:

- Store the data correctly.
- Use storage efficiently.
- Improve query performance.
- Maintain data accuracy.
- Support future application requirements.

Selecting the correct data type is an important part of database design.

---

## Why do we need it?

Suppose you are creating an **employees** table.

Different columns store different types of information.

| Column | Example Value | Best Data Type |
|---------|---------------|----------------|
| employee_id | 101 | INT |
| employee_name | Amit Sharma | VARCHAR(100) |
| salary | ₹75,500.50 | DECIMAL(10,2) |
| joining_date | 2024-07-15 | DATE |
| is_active | TRUE | BOOLEAN |
| profile_photo | Employee Image | BLOB |

If incorrect data types are chosen:

- Storage space may be wasted.
- Queries may become slower.
- Invalid data may be stored.
- Calculations may produce incorrect results.
- Future maintenance becomes difficult.

---

## Characteristics

- Improves database performance.
- Reduces storage usage.
- Maintains data accuracy.
- Prevents invalid data.
- Makes future maintenance easier.
- Improves query execution speed.

---

## Guidelines for Choosing the Right Data Type

### 1. Choose the Smallest Suitable Numeric Type

Select the smallest numeric data type that can safely store the expected values.

Instead of always using `BIGINT`, choose:

- `TINYINT` for very small numbers.
- `SMALLINT` for small numbers.
- `INT` for most applications.
- `BIGINT` only when a very large range is required.

Example:

```sql
age TINYINT UNSIGNED
```

### Explanation

Human age never requires an `INT` or `BIGINT`.

`TINYINT UNSIGNED` is sufficient and uses less storage.

---

### 2. Use DECIMAL for Money

Financial values should always use `DECIMAL`.

Examples:

- Salaries
- Product prices
- Tax
- Discounts
- Account balances

Example:

```sql
salary DECIMAL(10,2)
```

### Explanation

`DECIMAL` stores exact values and prevents rounding errors.

---

### 3. Use VARCHAR for Variable-Length Text

Most names, email addresses, and cities have different lengths.

Example:

```sql
employee_name VARCHAR(100)
```

### Explanation

`VARCHAR` stores only the required number of characters, saving storage space.

---

### 4. Use CHAR for Fixed-Length Values

Use `CHAR` when every value has approximately the same length.

Examples:

- Country codes
- Gender
- Grades

Example:

```sql
country_code CHAR(2)
```

### Explanation

Every country code contains exactly two characters.

---

### 5. Use DATE for Calendar Dates

If only the date is needed, use `DATE`.

Example:

```sql
joining_date DATE
```

### Explanation

No time information is required, making `DATE` the appropriate choice.

---

### 6. Use DATETIME or TIMESTAMP Carefully

Use:

- `DATETIME` for scheduled events.
- `TIMESTAMP` for recording when records are created or updated.

Example:

```sql
created_at TIMESTAMP
DEFAULT CURRENT_TIMESTAMP
```

### Explanation

MySQL automatically stores the current date and time when a record is inserted.

---

### 7. Use ENUM for Limited Choices

If a column accepts only a fixed set of values, use `ENUM`.

Example:

```sql
status ENUM(
    'Pending',
    'Approved',
    'Rejected'
)
```

### Explanation

Only the specified values can be stored, improving data consistency.

---

### 8. Use BLOB Only for Binary Files

Store images, PDFs, or videos using `BLOB` only when necessary.

Example:

```sql
profile_photo BLOB
```

### Explanation

The `profile_photo` column stores image data.

In many applications, storing the file in external storage and saving only its path or URL in the database is often preferred.

---

## Complete Example

```sql
CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100),
    age TINYINT UNSIGNED,
    salary DECIMAL(10,2),
    joining_date DATE,
    is_active BOOLEAN,
    profile_photo BLOB
);
```

### Explanation

| Column | Data Type | Reason |
|---------|-----------|--------|
| employee_id | INT | Standard whole-number identifier |
| employee_name | VARCHAR(100) | Variable-length text |
| age | TINYINT UNSIGNED | Small positive whole number |
| salary | DECIMAL(10,2) | Exact monetary value |
| joining_date | DATE | Calendar date only |
| is_active | BOOLEAN | TRUE/FALSE status |
| profile_photo | BLOB | Binary image data |

This design uses an appropriate data type for each column, resulting in an efficient and maintainable table.

---

## Memory Tip

> 🧠 **Choose the Data Type Based on the Data**

```
Whole Numbers
      │
      ▼
INT

Money
      │
      ▼
DECIMAL

Names
      │
      ▼
VARCHAR

Fixed Codes
      │
      ▼
CHAR

Dates
      │
      ▼
DATE

True / False
      │
      ▼
BOOLEAN

Files
      │
      ▼
BLOB
```

Whenever designing a table, first ask:

- **What kind of data will this column store?**
- **What is the expected range or size?**
- **Will calculations be performed on it?**
- **Does it require exact precision or approximate values?**

Choosing the correct data type at the beginning leads to a more efficient, reliable, and scalable database.

---

# Summary

In this chapter, you learned:

- What MySQL Data Types are.
- Why data types are important.
- Characteristics of data types.
- Categories of MySQL data types.
- Numeric data types:
  - TINYINT
  - SMALLINT
  - MEDIUMINT
  - INT / INTEGER
  - BIGINT
  - DECIMAL
  - FLOAT
  - DOUBLE
- String data types:
  - CHAR
  - VARCHAR
  - TEXT
  - ENUM
- Date and Time data types:
  - DATE
  - TIME
  - DATETIME
  - TIMESTAMP
  - YEAR
- Boolean data type.
- Binary data types:
  - BINARY
  - VARBINARY
  - BLOB
- How to choose the appropriate data type for different kinds of data.

Understanding data types is one of the foundations of database design. Choosing the correct data type improves performance, reduces storage usage, and helps maintain data integrity.

---

# Best Practices

- Choose the smallest suitable numeric data type.
- Use `DECIMAL` for financial values.
- Use `VARCHAR` instead of `CHAR` for variable-length text.
- Use `CHAR` only for fixed-length values.
- Use `DATE`, `TIME`, or `DATETIME` based on the information being stored.
- Use `TIMESTAMP` for tracking record creation and updates.
- Use `BOOLEAN` for logical values.
- Use `ENUM` when a column has a limited set of valid values.
- Avoid storing numbers as text.
- Select data types based on current and expected future requirements.

---

# Common Mistakes

- Using `VARCHAR` to store numeric values.
- Using `FLOAT` instead of `DECIMAL` for monetary data.
- Choosing `BIGINT` when `INT` is sufficient.
- Using `CHAR` for long variable-length text.
- Storing dates as plain text.
- Confusing `DATETIME` with `TIMESTAMP`.
- Using `TEXT` when `VARCHAR` is sufficient.
- Selecting data types without considering future growth.

---

# Interview Questions

### Basic

1. What is a data type in MySQL?
2. Why are data types important?
3. Name the main categories of MySQL data types.
4. What is the difference between `CHAR` and `VARCHAR`?
5. What is the difference between `DATE` and `DATETIME`?
6. What is `BOOLEAN` in MySQL?
7. What is `BLOB` used for?
8. What is `ENUM`?
9. Which data type is used for exact decimal values?
10. Which data type is used for storing dates?

### Intermediate

11. What is the difference between `FLOAT` and `DOUBLE`?
12. Why is `DECIMAL` preferred for financial applications?
13. What is the difference between `TEXT` and `VARCHAR`?
14. When should `TIMESTAMP` be used instead of `DATETIME`?
15. What is the purpose of `UNSIGNED` for numeric data types?
16. Which integer data type would you choose for storing age?
17. What are the advantages of using `ENUM`?
18. Why should numbers not be stored as strings?
19. What are binary data types?
20. How does choosing the correct data type improve performance?

### Advanced

21. How do data types affect storage and query performance?
22. How do precision and scale work in `DECIMAL`?
23. What factors should you consider when selecting a data type?
24. Can `BOOLEAN` store values other than `TRUE` and `FALSE`?
25. Why is `TIMESTAMP` commonly used for audit columns?
26. What is the difference between fixed-length and variable-length string data types?
27. What are the consequences of choosing an incorrect data type?
28. How does MySQL internally store `BOOLEAN` values?
29. Explain a real-world schema where different data types are used together.
30. Which data types would you choose for an e-commerce products table and why?

---

# Key Takeaways

- Every table column must have an appropriate data type.
- Numeric data types store numbers with different ranges and precision.
- String data types store text efficiently.
- Date and Time data types support calendar and time-based operations.
- `BOOLEAN` stores logical values as `1` and `0`.
- Binary data types store files and other binary content.
- `DECIMAL` is the preferred choice for financial data.
- `VARCHAR` is the most commonly used string data type.
- Choosing the correct data type improves performance, storage efficiency, and data integrity.

---

# What's Next?

In **Day 05**, you will learn about **DQL (Data Query Language) – SELECT Statement**, including:

- What is DQL?
- SELECT Statement
- SELECT *
- Selecting Specific Columns
- DISTINCT
- Aliases (`AS`)
- Arithmetic Expressions in `SELECT`
- Comments in SQL Queries
- Query Execution Basics

