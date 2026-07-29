# Day 01 - Database Basics

> Welcome to **Day 01** of my MySQL learning journey.
>
> In this chapter, we will build a strong foundation by understanding what data is, how databases work, and how to perform basic database operations in MySQL.
>
> These concepts are essential before learning SQL queries, database design, and Data Engineering.

---

# 📚 Learning Objectives

By the end of this chapter, you will be able to:

- Understand the difference between **Data**, **Processed Data**, and **Information**
- Learn what a **Data Store** is
- Understand different types of data
- Learn the purpose of a **Database Management System (DBMS)**
- Differentiate between **Relational** and **NoSQL** databases
- Understand **OLTP** and **OLAP**
- Learn the difference between **Row-Oriented** and **Column-Oriented** databases
- Understand MySQL fundamentals
- Learn the difference between **Database** and **Schema**
- Perform basic database operations in MySQL

---

# 📖 Table of Contents

1. Data
2. Processed Data
3. Information
4. Data Store
5. Types of Data
   - Structured Data
   - Semi-Structured Data
   - Unstructured Data
6. Database Management System (DBMS)
7. Types of DBMS
8. Relational Database Management System (RDBMS)
9. NoSQL Database
10. OLTP vs OLAP
11. Row-Oriented vs Column-Oriented Database
12. MySQL Overview
13. MySQL Client-Server Architecture
14. Database vs Schema
15. Basic Database Operations
16. Summary
17. Interview Questions
18. Key Takeaways

---

# 1. Data

## 📖 What is Data?

**Data** is a collection of **raw facts, figures, observations, measurements, or values** that have not yet been processed or organized into meaningful information.

In simple words, data is the **raw input** that computers and applications use to generate useful information.

> [!NOTE]
> Data by itself usually has little meaning. It becomes useful only after it is processed and analyzed.

---

## 🎯 Why Do We Need Data?

Every software application depends on data.

Without data:

- A banking application cannot store transactions.
- An e-commerce website cannot manage products.
- A hospital cannot maintain patient records.
- A social media platform cannot store posts, likes, or comments.

In short:

> **No Data → No Application**

---

## 🌍 Real-World Examples

### Example 1: Student Marks

| Student | Marks |
|----------|------:|
| Rahul | 82 |
| Priya | 95 |
| Amit | 68 |

These numbers are **raw values**.

At this stage, we don't know:

- Who scored the highest?
- What is the average score?
- Who passed or failed?

Therefore, this is **Data**, not Information.

---

### Example 2: Employee Salary

| Employee | Salary |
|-----------|--------:|
| Alice | ₹45,000 |
| Bob | ₹60,000 |
| Charlie | ₹55,000 |

These are simply stored values.

No analysis has been performed yet.

---

### Example 3: Weather Data

| Date | Temperature |
|------|------------:|
| Monday | 30°C |
| Tuesday | 32°C |
| Wednesday | 29°C |

These temperature readings are examples of raw data collected from weather stations.

---

## 💼 Data Engineer Perspective

A Data Engineer collects raw data from multiple sources, such as:

- Databases
- CSV files
- Excel files
- APIs
- JSON files
- Cloud Storage
- Streaming platforms (Kafka)

This raw data is then:

1. Collected
2. Cleaned
3. Validated
4. Transformed
5. Loaded into a Data Warehouse or Data Lake

Business analysts and data scientists use the processed data for reporting and decision-making.

---

## ✨ Characteristics of Data

- Raw
- Unprocessed
- Can be structured or unstructured
- May contain duplicates
- May contain missing values
- Can be stored for future analysis

---

## ✅ Best Practices

- Validate data before using it.
- Preserve the original raw data whenever possible.
- Maintain data quality during ETL processes.
- Remove duplicate and incorrect records before analysis.

---

## ❌ Common Mistakes

- Assuming raw data is always correct.
- Using unclean data for reporting.
- Ignoring missing or duplicate values.
- Deleting original data before creating a backup.

---

## 🎤 Interview Questions

### Q1. What is data?

### Q2. What are the characteristics of data?

### Q3. Why is raw data not useful for business decisions?

### Q4. Give three real-world examples of data.

### Q5. What role does data play in Data Engineering?

---

## 📌 Key Takeaways

- Data is the foundation of every information system.
- Data consists of raw facts and figures.
- Data has little meaning until it is processed.
- Every software application stores and manages data.
- Data Engineers prepare raw data for analytics and reporting.

---