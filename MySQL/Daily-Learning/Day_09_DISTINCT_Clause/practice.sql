-- ==========================================================
-- Day 09 - DISTINCT Clause
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
-- DISTINCT Basics
-- ==========================================================

-- Q1. Display all unique departments.

-- Q2. Display all unique cities.

-- Q3. Display all unique designations.

-- Q4. Display all unique salaries.

-- Q5. Display all unique joining dates.

-- Q6. Display all unique employee cities.

-- Q7. Display all unique department names in alphabetical order.

-- Q8. Display all unique city names in descending order.

-- ==========================================================
-- DISTINCT on Multiple Columns
-- ==========================================================

-- Q9. Display unique department and city combinations.

-- Q10. Display unique department and designation combinations.

-- Q11. Display unique city and designation combinations.

-- Q12. Display unique department, city, and designation combinations.

-- Q13. Display unique department and salary combinations.

-- Q14. Display unique city and salary combinations.

-- Q15. Display unique designation and joining date combinations.

-- ==========================================================
-- DISTINCT with WHERE
-- ==========================================================

-- Q16. Display unique cities where IT employees work.

-- Q17. Display unique departments where salary is greater than 70000.

-- Q18. Display unique designations in Mumbai.

-- Q19. Display unique cities where employees joined after '2021-01-01'.

-- Q20. Display unique departments where employees joined before '2022-01-01'.

-- Q21. Display unique designations in the HR department.

-- Q22. Display unique cities where salary is less than 60000.

-- Q23. Display unique departments from Pune.

-- ==========================================================
-- DISTINCT with ORDER BY
-- ==========================================================

-- Q24. Display all unique departments in ascending order.

-- Q25. Display all unique cities in descending order.

-- Q26. Display all unique designations alphabetically.

-- Q27. Display all unique salaries from highest to lowest.

-- Q28. Display unique department and city combinations ordered by department.

-- Q29. Display unique city and designation combinations ordered by city.

-- Q30. Display unique departments ordered in descending order.

-- ==========================================================
-- DISTINCT with LIMIT
-- ==========================================================

-- Q31. Display the first 3 unique departments.

-- Q32. Display the first 5 unique cities.

-- Q33. Display the first 4 unique designations alphabetically.

-- Q34. Display the first 2 unique salaries from highest to lowest.

-- Q35. Display the first 3 unique department-city combinations.

-- ==========================================================
-- Mixed Practice
-- ==========================================================

-- Q36. Display unique cities of employees whose salary is greater than 65000.

-- Q37. Display unique departments where employees joined after '2020-01-01'.

-- Q38. Display unique designations in the IT department ordered alphabetically.

-- Q39. Display the first 2 unique cities from the Sales department.

-- Q40. Display unique departments having employees from Mumbai.

-- Q41. Display unique cities of Finance employees.

-- Q42. Display unique designations where salary is greater than 60000.

-- Q43. Display unique department and city combinations ordered by city.

-- Q44. Display unique salaries less than 70000 ordered in descending order.

-- Q45. Display the first 5 unique department-designation combinations.

-- ==========================================================
-- Mini Challenge
-- ==========================================================

-- Q46. Display unique cities where employees earn more than 70000.

-- Q47. Display unique departments where employees belong to either Mumbai or Pune.

-- Q48. Display unique department-city combinations for employees who joined after '2021-01-01'.

-- Q49. Display the first 3 unique designations ordered alphabetically.

-- Q50. Display unique departments where salary is between 50000 and 80000.

-- Q51. Display unique cities excluding Mumbai.

-- Q52. Display unique department and salary combinations ordered by salary in descending order.

-- Q53. Display unique cities for employees in the HR and IT departments.

-- Q54. Display the first 4 unique cities ordered alphabetically.

-- Q55. Display unique department-designation combinations where salary is greater than 65000.

-- ==========================================================
-- Interview Practice
-- ==========================================================

-- Q56. What is the purpose of the DISTINCT clause?

-- Q57. What is the difference between SELECT and SELECT DISTINCT?

-- Q58. Can DISTINCT be used on multiple columns? Explain.

-- Q59. Does DISTINCT remove duplicate rows from the table?

-- Q60. What is the difference between DISTINCT and GROUP BY?

-- Q61. Can DISTINCT be used with WHERE? Explain with an example.

-- Q62. Can DISTINCT be used with ORDER BY? Explain.

-- Q63. Write a query to display unique departments.

-- Q64. Write a query to display unique cities of IT employees.

-- Q65. Write a query to display the first 5 unique designations in alphabetical order.

-- Q66. Explain the execution order of:
-- FROM
-- WHERE
-- SELECT
-- DISTINCT
-- ORDER BY
-- LIMIT

-- Q67. Why does DISTINCT on multiple columns return duplicate values in one column?

-- Q68. In which real-world scenarios is DISTINCT commonly used?

-- Q69. Is DISTINCT faster than GROUP BY for removing duplicates? Explain.

-- Q70. When should you avoid using DISTINCT?