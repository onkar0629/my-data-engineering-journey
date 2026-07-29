-- ==========================================================
-- Day 08 - LIMIT Clause
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
-- LIMIT Basics
-- ==========================================================

-- Q1. Display the first 5 employees.

-- Q2. Display the first 3 employee names.

-- Q3. Display the first 7 employee IDs.

-- Q4. Display the first 4 departments.

-- Q5. Display the first 2 cities.

-- Q6. Display the first employee.

-- Q7. Display the first 8 records.

-- Q8. Display the first 6 salaries.

-- ==========================================================
-- LIMIT with WHERE
-- ==========================================================

-- Q9. Display the first 2 employees from the IT department.

-- Q10. Display the first 3 employees from Mumbai.

-- Q11. Display the first employee from HR.

-- Q12. Display the first 2 Finance employees.

-- Q13. Display the first Sales employee.

-- Q14. Display the first 2 employees whose salary is greater than 65000.

-- Q15. Display the first 3 employees who joined after 2021-01-01.

-- ==========================================================
-- LIMIT with ORDER BY
-- ==========================================================

-- Q16. Display the highest-paid employee.

-- Q17. Display the top 3 highest-paid employees.

-- Q18. Display the top 5 highest salaries.

-- Q19. Display the employee with the lowest salary.

-- Q20. Display the 4 employees with the lowest salaries.

-- Q21. Display the newest employee.

-- Q22. Display the oldest employee.

-- Q23. Display the 3 newest employees.

-- Q24. Display the 5 oldest employees.

-- Q25. Display the first 4 employees alphabetically.

-- Q26. Display the last 3 employees alphabetically.

-- Q27. Display the top 2 highest-paid IT employees.

-- Q28. Display the lowest-paid Finance employee.

-- ==========================================================
-- LIMIT with OFFSET
-- ==========================================================

-- Q29. Skip the first 2 employees and display the next 3.

-- Q30. Skip the first 5 employees and display the next 2.

-- Q31. Skip the first employee and display the next 4.

-- Q32. Display 3 employees after skipping the first 4.

-- Q33. Skip the first 3 highest-paid employees and display the next 2.

-- Q34. Skip the first 2 alphabetically sorted employees and display the next 4.

-- Q35. Skip the first 5 newest employees and display the next 2.

-- Q36. Use MySQL's alternative LIMIT syntax to skip 3 rows and display the next 5.

-- ==========================================================
-- Pagination Practice
-- ==========================================================

-- Assume each page contains 3 records.

-- Q37. Display Page 1.

-- Q38. Display Page 2.

-- Q39. Display Page 3.

-- Q40. Display Page 4.

-- Assume each page contains 5 records.

-- Q41. Display Page 1.

-- Q42. Display Page 2.

-- Q43. Display Page 3.

-- ==========================================================
-- Mixed Practice
-- ==========================================================

-- Q44. Display the top 3 highest-paid employees from the IT department.

-- Q45. Display the first 2 employees from Pune ordered by salary.

-- Q46. Display the 3 newest employees from Mumbai.

-- Q47. Display the lowest-paid Sales employee.

-- Q48. Display the second highest-paid employee.

-- Q49. Display employees ranked 4th to 6th by salary.

-- Q50. Display employees ranked 3rd to 5th alphabetically.

-- Q51. Display the oldest two employees from the HR department.

-- Q52. Display the first 3 employees whose salary is less than 70000.

-- Q53. Display the top 2 Finance employees by salary.

-- Q54. Display employees ranked 2nd to 4th based on joining date.

-- ==========================================================
-- Mini Challenge
-- ==========================================================

-- Q55. Display the highest-paid employee in each department (write separate queries).

-- Q56. Display the second newest employee.

-- Q57. Display the third highest-paid employee.

-- Q58. Display employees ranked from 6th to 10th by salary.

-- Q59. Display the first 5 employees after sorting by city and then employee name.

-- Q60. Display the oldest three employees after skipping the oldest employee.

-- ==========================================================
-- Interview Practice
-- ==========================================================

-- Q61. What is the purpose of the LIMIT clause?

-- Q62. What is the difference between LIMIT and OFFSET?

-- Q63. Why is ORDER BY commonly used with LIMIT?

-- Q64. What is the difference between:
-- LIMIT 5
-- and
-- LIMIT 5 OFFSET 5?

-- Q65. Write a query to display the top 5 highest-paid employees.

-- Q66. Write a query to display the newest employee.

-- Q67. Write a query to display the second highest-paid employee.

-- Q68. Write a query to implement Page 4 with 10 records per page.

-- Q69. Explain the execution order when using:
-- WHERE
-- ORDER BY
-- LIMIT

-- Q70. Why is LIMIT without ORDER BY not recommended in many real-world scenarios?