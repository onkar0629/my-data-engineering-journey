-- ==========================================================
-- Day 07 - ORDER BY Clause
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
-- ORDER BY Basics
-- ==========================================================

-- Q1. Display all employees sorted by employee_name in ascending order.

-- Q2. Display all employees sorted by employee_name in descending order.

-- Q3. Display all employees sorted by salary in ascending order.

-- Q4. Display all employees sorted by salary in descending order.

-- Q5. Display all employees sorted by joining_date in ascending order.

-- Q6. Display all employees sorted by joining_date in descending order.

-- Q7. Display all employees sorted by city in ascending order.

-- Q8. Display all employees sorted by department in descending order.

-- ==========================================================
-- ORDER BY Multiple Columns
-- ==========================================================

-- Q9. Display employees sorted by department and then employee_name.

-- Q10. Display employees sorted by department in descending order and employee_name in ascending order.

-- Q11. Display employees sorted by city and salary.

-- Q12. Display employees sorted by city ascending and salary descending.

-- Q13. Display employees sorted by department, designation, and employee_name.

-- Q14. Display employees sorted by salary descending and joining_date ascending.

-- ==========================================================
-- ORDER BY with WHERE
-- ==========================================================

-- Q15. Display IT employees sorted by salary in descending order.

-- Q16. Display HR employees sorted by joining_date.

-- Q17. Display employees from Mumbai sorted by employee_name.

-- Q18. Display Finance employees sorted by salary descending.

-- Q19. Display employees with salary greater than 60000 sorted by salary.

-- Q20. Display employees who joined after '2021-01-01' sorted by joining_date.

-- ==========================================================
-- ORDER BY with Expressions
-- ==========================================================

-- Q21. Display employee_name and annual salary (salary * 12) sorted by annual salary.

-- Q22. Display employee_name and annual salary sorted by annual salary in descending order.

-- Q23. Display employee_name and salary + 5000 sorted by the calculated value.

-- Q24. Display employee_name and salary * 1.10 sorted by the increased salary.

-- ==========================================================
-- ORDER BY using Column Position
-- ==========================================================

-- Q25. Display employee_name and salary sorted using column position.

-- Q26. Display city and department sorted using column numbers.

-- Q27. Display employee_name, department, and salary sorted by the third selected column.

-- ==========================================================
-- ORDER BY with NULL Values
-- ==========================================================

-- Q28. Create a few rows with NULL city values and display employees sorted by city.

-- Q29. Create a few rows with NULL salary values and display employees sorted by salary.

-- ==========================================================
-- Mixed Practice
-- ==========================================================

-- Q30. Display employees sorted by department and salary.

-- Q31. Display employees sorted by city and joining_date.

-- Q32. Display employees sorted by designation alphabetically.

-- Q33. Display employees sorted by salary descending and employee_name ascending.

-- Q34. Display employees sorted by department, city, and employee_name.

-- Q35. Display employees whose salary is less than 70000 sorted by salary descending.

-- Q36. Display employees from Pune sorted by joining_date descending.

-- Q37. Display employees from the IT department sorted by employee_name descending.

-- Q38. Display employees sorted by city descending and salary ascending.

-- Q39. Display employees sorted by joining_date and salary.

-- Q40. Display employees sorted alphabetically by designation and then by employee_name.

-- ==========================================================
-- Mini Challenge
-- ==========================================================

-- Q41. Display the highest-paid employee first.

-- Q42. Display the oldest employee first.

-- Q43. Display employees alphabetically within each department.

-- Q44. Display employees from the same city ordered by salary.

-- Q45. Display employees sorted by department, then by highest salary, then by employee name.

-- Q46. Display employees sorted by the newest joining date and then by highest salary.

-- Q47. Display employees sorted by city alphabetically and joining date descending.

-- Q48. Display employees sorted by salary descending, city ascending, and employee_name ascending.

-- ==========================================================
-- Interview Practice
-- ==========================================================

-- Q49. What is the purpose of the ORDER BY clause?

-- Q50. What is the default sorting order in MySQL?

-- Q51. What is the difference between ASC and DESC?

-- Q52. Can ORDER BY sort multiple columns? Explain.

-- Q53. Can ORDER BY be used with expressions?

-- Q54. Can ORDER BY use column positions? Explain.

-- Q55. How are NULL values handled while sorting?

-- Q56. Write a query to display employees sorted by highest salary.

-- Q57. Write a query to display employees sorted alphabetically by employee name.

-- Q58. Write a query to display employees sorted by department and salary.

-- Q59. Explain the execution order involving ORDER BY.

-- Q60. What is the difference between:
-- ORDER BY salary;
-- and
-- ORDER BY salary DESC;

-- Q61. Can ORDER BY be used with WHERE? Explain with an example.

-- Q62. Can ORDER BY be used without SELECT *? Explain.

-- Q63. Why is ORDER BY important in reports and dashboards?

-- Q64. Write a query to display employees sorted by joining date from newest to oldest.

-- Q65. Write a query to display employees sorted by city and then by employee name.