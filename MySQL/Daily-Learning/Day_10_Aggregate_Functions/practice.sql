-- ==========================================================
-- Day 10 - Aggregate Functions
-- Practice Questions
-- ==========================================================

-- ==========================================================
-- Dataset
-- ==========================================================

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    city VARCHAR(50)
);

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

-- ==========================================================
-- COUNT()
-- ==========================================================

-- Q1. Count the total number of employees.

-- Q2. Count the employees in the IT department.

-- Q3. Count the employees from Mumbai.

-- Q4. Count employees whose salary is greater than 70000.

-- Q5. Count employees who joined after '2021-01-01'.

-- Q6. Count the number of unique departments.

-- Q7. Count the number of unique cities.

-- Q8. Count the number of employees in the HR department.

-- ==========================================================
-- SUM()
-- ==========================================================

-- Q9. Find the total salary of all employees.

-- Q10. Find the total salary of IT employees.

-- Q11. Find the total salary of employees from Mumbai.

-- Q12. Find the total salary of employees earning more than 60000.

-- Q13. Find the total salary of Sales employees.

-- Q14. Find the total salary of employees who joined before '2022-01-01'.

-- Q15. Find the total salary of Finance employees.

-- ==========================================================
-- AVG()
-- ==========================================================

-- Q16. Find the average salary of all employees.

-- Q17. Find the average salary of IT employees.

-- Q18. Find the average salary of HR employees.

-- Q19. Find the average salary of employees from Pune.

-- Q20. Find the average salary of employees earning more than 65000.

-- Q21. Find the average salary of employees who joined after '2021-01-01'.

-- ==========================================================
-- MIN()
-- ==========================================================

-- Q22. Find the minimum salary.

-- Q23. Find the minimum salary in the IT department.

-- Q24. Find the earliest joining date.

-- Q25. Find the alphabetically first city.

-- Q26. Find the minimum salary of employees from Mumbai.

-- ==========================================================
-- MAX()
-- ==========================================================

-- Q27. Find the maximum salary.

-- Q28. Find the maximum salary in the Finance department.

-- Q29. Find the latest joining date.

-- Q30. Find the alphabetically last city.

-- Q31. Find the maximum salary of employees from Pune.

-- ==========================================================
-- Aggregate Functions with WHERE
-- ==========================================================

-- Q32. Count employees whose salary is less than 60000.

-- Q33. Find the total salary of employees in Bengaluru.

-- Q34. Find the average salary of Finance employees.

-- Q35. Find the minimum salary of Sales employees.

-- Q36. Find the maximum salary of employees who joined after '2020-01-01'.

-- Q37. Count employees from either Mumbai or Pune.

-- Q38. Find the total salary of employees whose designation is 'Software Engineer'.

-- ==========================================================
-- NULL Handling Practice
-- ==========================================================

-- Q39. Insert an employee with a NULL salary.

-- Q40. Count all rows using COUNT(*).

-- Q41. Count salary values using COUNT(salary).

-- Q42. Find the SUM(salary) after inserting NULL.

-- Q43. Find the AVG(salary) after inserting NULL.

-- Q44. Find the MIN(salary) after inserting NULL.

-- Q45. Find the MAX(salary) after inserting NULL.

-- ==========================================================
-- Mixed Practice
-- ==========================================================

-- Q46. Count employees in each department.

-- Q47. Find the total salary of all employees from Pune.

-- Q48. Find the average salary of employees from Mumbai.

-- Q49. Find the minimum salary among employees earning more than 50000.

-- Q50. Find the maximum salary among employees earning less than 80000.

-- Q51. Count employees who joined before '2021-01-01'.

-- Q52. Find the total salary of employees in the IT department earning more than 70000.

-- Q53. Find the average salary of employees from Hyderabad.

-- Q54. Find the earliest joining date of Finance employees.

-- Q55. Find the latest joining date of HR employees.

-- ==========================================================
-- Mini Challenge
-- ==========================================================

-- Q56. Find the total salary paid to employees who joined after '2020-01-01'.

-- Q57. Count employees earning between 50000 and 80000.

-- Q58. Find the average salary of employees from either Mumbai or Pune.

-- Q59. Find the minimum salary of employees who joined after '2021-01-01'.

-- Q60. Find the maximum salary of Sales employees.

-- Q61. Count the number of employees not belonging to the IT department.

-- Q62. Find the total salary of employees whose designation contains 'Manager'.

-- Q63. Find the average salary of employees whose city starts with 'P'.

-- ==========================================================
-- Interview Practice
-- ==========================================================

-- Q64. What is an Aggregate Function?

-- Q65. What is the difference between COUNT(*) and COUNT(column_name)?

-- Q66. What is the difference between SUM() and AVG()?

-- Q67. How do Aggregate Functions handle NULL values?

-- Q68. Can Aggregate Functions be used with the WHERE clause?

-- Q69. Why can't Aggregate Functions be used directly in the WHERE clause?

-- Q70. What is the difference between WHERE and HAVING?

-- Q71. Write a query to find the total salary of IT employees.

-- Q72. Write a query to find the average salary of employees from Mumbai.

-- Q73. Write a query to count employees earning more than 70000.

-- Q74. Explain the execution order involving Aggregate Functions.

-- Q75. In which real-world scenarios are Aggregate Functions commonly used?