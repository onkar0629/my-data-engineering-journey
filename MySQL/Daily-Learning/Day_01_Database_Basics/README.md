# Day 01 - Database Basics

> **"Before learning SQL queries, you must first understand what a database is, why it exists, and how data is organized."**

---

# 🎯 Learning Objectives

After completing this chapter, you will be able to:

- Understand what **Data**, **Processed Data**, and **Information** are.
- Explain the complete data lifecycle from raw data to meaningful insights.
- Understand what a **Data Store** is and why it is important.
- Differentiate between **Structured**, **Semi-Structured**, and **Unstructured** data.
- Compare a **File System** with a **Database**.
- Understand the role of databases in modern software applications.
- Explain why SQL is one of the most important skills for a Data Engineer.

---

# 📖 Introduction

Every day, billions of records are created around the world.

Whenever you:

- Order food on Zomato
- Watch a movie on Netflix
- Purchase products on Amazon
- Transfer money using UPI
- Book a cab through Uber

you are generating **data**.

Modern companies collect this data because it helps them understand customer behavior, improve services, detect fraud, generate reports, and make business decisions.

However, raw data alone has very little value.

To make it useful, organizations need to:

1. Store it safely.
2. Organize it efficiently.
3. Retrieve it quickly.
4. Analyze it effectively.

This is where **Databases** and **SQL** become essential.

---

# 💼 Why Should a Data Engineer Learn SQL?

A Data Engineer is responsible for building and maintaining systems that collect, store, transform, and prepare data for analysis.

SQL is used throughout this process.

Typical responsibilities include:

- Extracting data from databases
- Cleaning and transforming data
- Loading data into data warehouses
- Creating ETL/ELT pipelines
- Supporting dashboards and analytics
- Optimizing database queries

Without SQL, it is almost impossible to work effectively as a Data Engineer.

> **Interview Tip**
>
> SQL is one of the most frequently tested skills in Data Engineering interviews. Strong SQL fundamentals are often considered more important than knowing a specific programming language.

---

# 📊 How Data Flows in an Organization

```text
User Activity
      │
      ▼
 Raw Data Generated
      │
      ▼
 Data Storage
(Database)
      │
      ▼
 Data Cleaning
      │
      ▼
 Processed Data
      │
      ▼
 Analysis
      │
      ▼
 Information
      │
      ▼
 Business Decisions
```

Example:

```text
Amazon Customer Places an Order

↓

Order Details Stored in MySQL

↓

Data Cleaned & Validated

↓

Loaded into Data Warehouse

↓

Sales Dashboard Updated

↓

Business Team Makes Decisions
```

---

# 📌 What is Data?

## Definition

**Data** is a collection of raw facts, observations, numbers, characters, or symbols that represent real-world entities or events.

By itself, data has little or no meaning until it is processed and interpreted.

In simple terms:

> **Data is the raw material from which information is created.**

---

## Examples of Data

| Example | Is it Data? | Why? |
|----------|-------------|------|
| 25 | ✅ Yes | A number without context |
| Rahul | ✅ Yes | A name without additional information |
| 98.6 | ✅ Yes | A value without meaning |
| Mumbai | ✅ Yes | A location name |
| 2026-07-22 | ✅ Yes | A date value |

These values become meaningful only when combined with context.

---

## Real-World Example

Suppose a school's database stores the following records:

| Student ID | Name | Marks |
|------------|------|-------|
| 101 | Rahul | 85 |
| 102 | Priya | 91 |
| 103 | Aman | 72 |

These values are **data** because they are stored facts.

---

## Characteristics of Data

- Raw and unprocessed
- Can be stored electronically
- Can be numerical or textual
- May contain errors
- Can exist without meaning until processed

---

## Advantages of Collecting Data

- Helps organizations understand customers.
- Enables reporting and analytics.
- Supports machine learning models.
- Improves business decision-making.
- Forms the foundation of data-driven applications.

---

## Limitations of Raw Data

- Difficult to interpret
- May contain duplicates
- May contain missing values
- May be inconsistent
- Cannot directly support business decisions

---

# 📌 What is Processed Data?

Raw data often contains inconsistencies.

Before it becomes useful, it must be processed.

Processing may involve:

- Removing duplicate records
- Correcting spelling mistakes
- Filling missing values
- Standardizing formats
- Validating data
- Removing invalid records

---

## Example

### Raw Data

| Name | Marks |
|------|------|
| Rahul | 85 |
| Rahul | 85 |
| Priya | NULL |
| Aman | 72 |

Problems:

- Duplicate record
- Missing value

↓

### Processed Data

| Name | Marks |
|------|------|
| Rahul | 85 |
| Priya | 91 |
| Aman | 72 |

Now the dataset is accurate, consistent, and ready for analysis.

---

## Why Process Data?

Organizations process data to:

- Improve quality
- Remove inconsistencies
- Increase accuracy
- Support analytics
- Prepare for reporting
- Train AI and machine learning models

---

# 📌 What is Information?

## Definition

**Information** is processed data that has context, meaning, and value.

Information answers business questions and helps organizations make decisions.

---

## Example

Processed Data

| Student | Marks |
|----------|------|
| Rahul | 85 |
| Priya | 91 |
| Aman | 72 |

Information derived from this data:

- Highest Marks → Priya
- Average Marks → 82.67
- Pass Percentage → 100%
- Top Performer → Priya

Notice that none of these insights existed until the data was analyzed.

---

# 🔄 Data → Information Lifecycle

```text
Raw Data

↓

Data Cleaning

↓

Processed Data

↓

Analysis

↓

Information

↓

Knowledge

↓

Business Decision
```

---

# 📦 What is a Data Store?

A **Data Store** is any location where data is stored so that it can be accessed and managed later.

Data stores are used to keep information secure, organized, and available whenever needed.

---

## Types of Data Stores

### 1. Temporary Storage

Temporary storage holds data only while the system is running.

Examples:

- RAM (Random Access Memory)
- Cache Memory

Characteristics:

- Very fast
- Volatile
- Data is lost when power is turned off

---

### 2. Permanent Storage

Permanent storage retains data even after the system is shut down.

Examples:

- Hard Disk Drive (HDD)
- Solid State Drive (SSD)
- Database Systems
- Cloud Storage

Characteristics:

- Non-volatile
- Long-term storage
- Suitable for business applications

---

# 📂 Types of Data

Modern organizations generate enormous amounts of data every second. However, not all data is stored in the same format. Depending on its structure and organization, data is broadly classified into three categories:

1. Structured Data
2. Semi-Structured Data
3. Unstructured Data

Understanding these categories is essential because different databases and storage technologies are designed to handle different types of data.

---

# 📊 Structured Data

## Definition

Structured Data is data that follows a predefined format or schema.

It is organized into **rows and columns**, making it easy to store, search, and analyze.

Most **Relational Database Management Systems (RDBMS)** such as MySQL, PostgreSQL, Oracle, and SQL Server work with structured data.

---

## Characteristics

- Organized into tables
- Fixed schema
- Easy to query using SQL
- High data consistency
- Supports relationships between tables

---

## Example

### Employee Table

| Employee ID | Name | Department | Salary |
|-------------|------|------------|--------|
| 101 | Rahul | IT | 50000 |
| 102 | Priya | HR | 60000 |
| 103 | Aman | Finance | 70000 |

Every row follows the same structure.

---

## Real-World Examples

- Banking transactions
- Employee records
- Student databases
- Hospital management systems
- Airline reservation systems

---

## Advantages

- Fast querying
- Easy indexing
- Data consistency
- Supports joins and relationships
- Excellent for reporting

---

## Limitations

- Rigid schema
- Difficult to store changing data formats
- Schema changes can be expensive

---

# 📄 Semi-Structured Data

## Definition

Semi-Structured Data does not follow a strict table format, but it still contains organizational information such as tags or key-value pairs.

Unlike structured data, every record does not need to have exactly the same fields.

---

## Example (JSON)

```json
{
    "employee_id":101,
    "name":"Rahul",
    "department":"IT",
    "skills":[
        "Python",
        "SQL",
        "Azure"
    ]
}
```

---

## Other Examples

- JSON
- XML
- YAML
- HTML

---

## Characteristics

- Flexible schema
- Easy to exchange between applications
- Human-readable
- Suitable for APIs

---

## Real-World Examples

Netflix

```json
{
    "movie":"Inception",
    "genre":"Sci-Fi",
    "rating":9.0
}
```

Amazon Product

```json
{
    "product":"Laptop",
    "brand":"Dell",
    "price":65000
}
```

---

## Advantages

- Flexible
- Easy to extend
- Supports nested objects
- Ideal for web applications

---

## Limitations

- Complex querying
- Less efficient for relational operations
- Validation can be challenging

---

# 🎥 Unstructured Data

## Definition

Unstructured Data has **no predefined format or schema**.

It cannot be stored efficiently in rows and columns.

Most of today's data falls into this category.

---

## Examples

- Images
- Videos
- Audio files
- Emails
- PDF documents
- Social media posts
- CCTV footage

---

## Characteristics

- Large in size
- Difficult to analyze directly
- Requires specialized tools
- Often processed using AI or Machine Learning

---

## Real-World Examples

Healthcare

- MRI Scans
- X-Ray Images

Social Media

- Instagram Photos
- Facebook Videos

E-commerce

- Product Images
- Customer Reviews

---

## Advantages

- Rich information
- Suitable for AI applications
- Useful for sentiment analysis

---

## Limitations

- Difficult to organize
- Requires more storage
- Complex processing
- Cannot be queried using traditional SQL alone

---

# 📊 Comparison of Data Types

| Feature | Structured | Semi-Structured | Unstructured |
|----------|------------|-----------------|--------------|
| Schema | Fixed | Flexible | No Schema |
| Storage | Tables | JSON/XML | Files |
| SQL Support | Excellent | Limited | Very Limited |
| Query Speed | Fast | Moderate | Slow |
| Examples | Employee Table | JSON | Images, Videos |

---

# 📁 File System vs Database

Before databases became popular, organizations stored information inside ordinary files.

For small applications this worked well.

As applications grew, file systems became difficult to manage.

This led to the development of Database Management Systems (DBMS).

---

## File System

A File System stores information inside files and folders.

Example

```text
Employees/

│

├── employee1.txt

├── employee2.txt

├── employee3.txt
```

Every file stores data independently.

---

## Database

A Database stores information in a structured manner.

```text
Database

│

├── Employees Table

├── Departments Table

├── Projects Table

└── Salary Table
```

Different tables can be related using keys.

---

## Comparison

| Feature | File System | Database |
|----------|-------------|----------|
| Data Storage | Files | Tables |
| Searching | Slow | Fast |
| Security | Basic | Advanced |
| Relationships | Not Supported | Supported |
| Redundancy | High | Low |
| Backup | Manual | Automated |
| Scalability | Limited | Excellent |
| Multi-user Support | Poor | Excellent |

---

## Why Companies Use Databases

Imagine Amazon storing millions of orders inside text files.

Finding a customer's order would require scanning thousands of files.

Instead, Amazon stores orders inside relational databases where SQL can locate records within milliseconds.

---

# 🗄 What is DBMS?

## Definition

A **Database Management System (DBMS)** is software that allows users to create, store, retrieve, update, and manage data efficiently.

Think of a DBMS as a bridge between users and the database.

Instead of interacting directly with data files, users communicate with the DBMS using SQL.

---

## Responsibilities of a DBMS

A DBMS performs many important tasks:

- Stores data
- Retrieves data
- Updates records
- Deletes records
- Maintains security
- Controls concurrent access
- Creates backups
- Prevents data corruption

---

## Internal Architecture

```text
User

↓

SQL Query

↓

DBMS

↓

Storage Engine

↓

Database Files

↓

Result Returned
```

---

## Popular DBMS Software

| Software | Type |
|----------|------|
| MySQL | RDBMS |
| PostgreSQL | RDBMS |
| Oracle | RDBMS |
| SQL Server | RDBMS |
| MongoDB | NoSQL |
| Cassandra | NoSQL |
| Redis | NoSQL |

---

# 📚 Types of DBMS

Database systems are broadly classified into two major categories:

1. Relational Database Management System (RDBMS)
2. NoSQL Database

---

# 🏛 Relational Database Management System (RDBMS)

An RDBMS stores data in the form of **tables** consisting of rows and columns.

Relationships between tables are established using **Primary Keys** and **Foreign Keys**.

---

## Characteristics

- Table-based storage
- SQL support
- ACID compliance
- High consistency
- Supports relationships

---

## Examples

- MySQL
- PostgreSQL
- Oracle
- SQL Server

---

## Where It Is Used

- Banking
- Hospitals
- ERP Systems
- Airline Reservation Systems
- College Management Systems

---

# 🌐 NoSQL Database

NoSQL stands for **Not Only SQL**.

Unlike relational databases, NoSQL databases do not require a fixed table structure.

They are designed to store massive volumes of rapidly changing data.

---

## Types of NoSQL Databases

- Document Database
- Key-Value Database
- Column Family Database
- Graph Database

---

## Examples

| Database | Type |
|----------|------|
| MongoDB | Document |
| Redis | Key-Value |
| Cassandra | Column Family |
| Neo4j | Graph |

---

## Where NoSQL Is Used

- Social media
- Real-time analytics
- IoT applications
- Recommendation engines
- Chat applications

---

> **💡 Interview Tip**
>
> SQL databases prioritize **consistency** and structured relationships, whereas NoSQL databases prioritize **flexibility**, **horizontal scalability**, and handling large volumes of diverse data. Modern applications often use both, depending on the workload.

# 🔄 OLTP vs OLAP

Data is not always used for the same purpose.

Some databases are designed to **process daily business transactions**, while others are optimized to **analyze large amounts of historical data**.

This is where **OLTP** and **OLAP** come into the picture.

---

#  What is OLTP?

**OLTP** stands for **Online Transaction Processing**.

OLTP systems are designed to handle **large numbers of small, fast, real-time transactions**.

These systems are used in day-to-day business operations where data is continuously inserted, updated, or deleted.

---

## Characteristics

- Handles real-time transactions
- Large number of concurrent users
- Fast response time
- Frequent INSERT, UPDATE and DELETE operations
- Highly normalized database design
- Data is always up-to-date

---

## Real-World Examples

###  Banking

Every time you:

- Withdraw money
- Deposit money
- Transfer funds

a transaction is recorded immediately.

---

###  Amazon

When a customer:

- Places an order
- Cancels an order
- Updates an address
- Makes a payment

the OLTP system records these transactions instantly.

---

###  Uber

When you book a ride:

- Driver assigned
- Ride started
- Ride completed
- Payment processed

Every step is a transaction handled by an OLTP database.

---

#  What is OLAP?

**OLAP** stands for **Online Analytical Processing**.

OLAP systems are designed for **data analysis**, reporting, business intelligence, and decision-making.

Instead of processing individual transactions, OLAP processes **millions or billions of records** to generate insights.

---

## Characteristics

- Read-heavy workload
- Complex analytical queries
- Historical data
- Aggregations
- Reporting
- Dashboard generation

---

## Real-World Examples

### Amazon

Questions answered by OLAP:

- Which products sold the most this month?
- Which city generated the highest revenue?
- Which category is growing the fastest?

---

### Netflix

Questions answered by OLAP:

- Which genre is watched most?
- Which country streams the most content?
- What is the average watch time?

---

### Banking

Questions answered by OLAP:

- Monthly revenue
- Customer growth
- Fraud trends
- Loan approval statistics

---

#  OLTP vs OLAP Comparison

| Feature | OLTP | OLAP |
|----------|------|------|
| Full Form | Online Transaction Processing | Online Analytical Processing |
| Purpose | Daily Transactions | Data Analysis |
| Operations | INSERT, UPDATE, DELETE | SELECT |
| Data | Current | Historical |
| Queries | Simple | Complex |
| Users | Customers, Employees | Analysts, Managers |
| Database Design | Highly Normalized | Denormalized |
| Speed | Milliseconds | Seconds/Minutes |
| Examples | ATM, Amazon Orders | Power BI Dashboard |

---

> ** Interview Tip**
>
> **OLTP stores data**, while **OLAP analyzes data**.
>
> Almost every Data Engineering interview includes this question.

---

#  Row-Oriented vs Column-Oriented Database

Databases store data physically on disk.

The storage method affects query performance.

There are two major storage formats:

1. Row-Oriented Storage
2. Column-Oriented Storage

---

#  Row-Oriented Database

A Row-Oriented Database stores **an entire row together**.

Example:

| ID | Name | Department | Salary |
|----|------|------------|--------|
| 1 | Rahul | IT | 50000 |
| 2 | Priya | HR | 60000 |

Stored internally as:

```text
Row 1

1 Rahul IT 50000

↓

Row 2

2 Priya HR 60000
```

---

## Advantages

- Fast INSERT
- Fast UPDATE
- Fast DELETE
- Excellent for transactional systems

---

## Examples

- MySQL
- PostgreSQL
- SQL Server
- Oracle

---

## Used In

- Banking
- Hospital Management
- Airline Booking
- E-Commerce

---

#  Column-Oriented Database

Instead of storing complete rows, a Column-Oriented Database stores values of the same column together.

Example

```text
ID

1
2
3

---------

Name

Rahul
Priya
Aman

---------

Salary

50000
60000
70000
```

---

## Advantages

- Very fast analytical queries
- Better compression
- Reads only required columns
- Faster aggregation

---

## Examples

- Snowflake
- Amazon Redshift
- Google BigQuery
- ClickHouse

---

## Used In

- Data Warehouses
- Business Intelligence
- Reporting
- Data Analytics

---

#  Row Store vs Column Store

| Feature | Row Store | Column Store |
|----------|-----------|--------------|
| Optimized For | Transactions | Analytics |
| INSERT | Fast | Moderate |
| UPDATE | Fast | Slow |
| Aggregation | Slow | Fast |
| Compression | Low | High |
| Best Choice | OLTP | OLAP |

---

#  MySQL Overview

## What is MySQL?

MySQL is an **Open-Source Relational Database Management System (RDBMS)** developed to store, manage, and retrieve structured data using SQL.

It is one of the world's most popular database systems because it is:

- Free and open source (Community Edition)
- Reliable
- Fast
- Scalable
- Cross-platform
- Easy to learn

---

## Features

- Relational Database
- Row-Oriented Storage
- SQL Support
- ACID Compliance
- Multi-user Support
- Secure Authentication
- Transaction Support
- Indexing
- Views
- Stored Procedures
- Triggers

---

## Companies Using MySQL

- Facebook (Meta)
- YouTube
- GitHub
- Booking.com
- Uber (certain services)
- Shopify

---

#  MySQL Client–Server Architecture

MySQL follows the **Client–Server Architecture**.

The client sends SQL queries to the server.

The server processes those queries and returns the results.

---

## Architecture Diagram

```text
               Client

        MySQL Workbench
        Command Line
        Python Program
        Java Application

               │

               │ SQL Query

               ▼

        -------------------
        MySQL Server
        -------------------

        Query Parser

        Optimizer

        Execution Engine

        Storage Engine

               │

               ▼

           Database Files
```

---

## Components

### Client

Responsible for:

- Sending SQL queries
- Receiving results
- Displaying output

Examples:

- MySQL Workbench
- DBeaver
- Python (mysql-connector)
- Java JDBC

---

### Server

Responsible for:

- Authentication
- Query Parsing
- Query Optimization
- Executing SQL
- Managing Storage
- Returning Results

---

#  Database vs Schema

One of the most confusing topics for beginners is the difference between a **Database** and a **Schema**.

---

## Database

A database is a collection of related objects such as:

- Tables
- Views
- Stored Procedures
- Functions
- Triggers

Think of a database as a **container**.

---

## Schema

A schema is a logical structure that organizes database objects.

---

### In MySQL

Database = Schema

Both terms mean the same thing.

Example

```sql
CREATE DATABASE company;
```

is equivalent to

```sql
CREATE SCHEMA company;
```

---

### In PostgreSQL

A database can contain **multiple schemas**.

Example

```text
Company Database

│

├── HR Schema

├── Sales Schema

├── Finance Schema

└── Marketing Schema
```

---

> **⚠️ Note**
>
> In interviews, always clarify **which database system** you are referring to before explaining the difference between a database and a schema.

---

#  Basic Database Commands

These are the first SQL commands every beginner should know.

| Command | Purpose |
|----------|---------|
| SHOW DATABASES | Display all databases |
| CREATE DATABASE | Create a new database |
| USE | Select a database |
| SELECT DATABASE() | Display the current database |
| DROP DATABASE | Delete a database |

---

## Example

```sql
-- Display all databases
SHOW DATABASES;

-- Create a database
CREATE DATABASE company;

-- Select the database
USE company;

-- Display the currently selected database
SELECT DATABASE();

-- Delete the database
DROP DATABASE company;
```

---

#  SQL Execution Flow (Where Applicable)

Unlike a `SELECT` query, database management commands such as:

- `CREATE DATABASE`
- `DROP DATABASE`
- `USE`
- `SHOW DATABASES`

are executed directly by the database server.

Example:

```text
User

↓

Writes SQL Command

↓

Client (Workbench / Application)

↓

MySQL Server

↓

Parser

↓

Permission Check

↓

Execute Command

↓

Database Updated

↓

Result Returned
```

Unlike complex `SELECT` statements, these commands do not involve filtering, grouping, or sorting, so the logical execution order (`FROM → WHERE → GROUP BY → SELECT → ORDER BY`) does **not** apply here.

---

#  Data Engineering Perspective

In a modern data platform, databases are the foundation of every data pipeline.

A simplified pipeline looks like this:

```text
Application

↓

MySQL Database (OLTP)

↓

ETL / ELT Pipeline

↓

Azure Data Factory

↓

Azure Data Lake Storage

↓

Azure Synapse / Snowflake

↓

Power BI Dashboard
```

As a Data Engineer, you'll frequently:

- Create and manage databases.
- Design schemas for storing data.
- Extract data from OLTP systems.
- Load data into data warehouses.
- Optimize storage for analytical workloads.
- Support business intelligence teams with clean, reliable data.

Understanding the fundamentals covered in this chapter will make the advanced SQL topics—such as joins, indexing, query optimization, and window functions—much easier to learn.

