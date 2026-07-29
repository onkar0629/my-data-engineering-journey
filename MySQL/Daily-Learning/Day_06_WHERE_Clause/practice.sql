-- ==========================================================
-- Day 06 - WHERE Clause
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
-- Comparison Operators
-- ==========================================================

-- Q1. Display all employees whose salary is greater than ₹70,000.

-- Q2. Display employees whose salary is less than ₹50,000.

-- Q3. Display employees whose salary is greater than or equal to ₹68,000.

-- Q4. Display employees whose salary is less than or equal to ₹52,000.

-- Q5. Display employees working in the IT department.

-- Q6. Display employees who are not in the HR department.

-- Q7. Display employees whose city is Mumbai.

-- Q8. Display employees whose city is not Pune.

-- Q9. Display employees whose designation is 'Sales Manager'.

-- Q10. Display employees who joined after '2021-01-01'.

-- ==========================================================
-- AND Operator
-- ==========================================================

-- Q11. Display IT employees earning more than ₹70,000.

-- Q12. Display employees from Mumbai earning more than ₹50,000.

-- Q13. Display Sales employees earning at least ₹52,000.

-- Q14. Display employees from Pune who joined after '2021-01-01'.

-- Q15. Display Finance employees earning less than ₹65,000.

-- ==========================================================
-- OR Operator
-- ==========================================================

-- Q16. Display employees from Mumbai or Pune.

-- Q17. Display employees belonging to the HR or IT department.

-- Q18. Display employees earning less than ₹50,000 or more than ₹75,000.

-- Q19. Display employees from Delhi or Chennai.

-- Q20. Display employees whose designation is 'Recruiter' or 'Data Analyst'.

-- ==========================================================
-- NOT Operator
-- ==========================================================

-- Q21. Display employees who are not in the Sales department.

-- Q22. Display employees who are not from Mumbai.

-- Q23. Display employees whose salary is not greater than ₹70,000.

-- Q24. Display employees who did not join after '2022-01-01'.

-- Q25. Display employees who are not from the IT department.

-- ==========================================================
-- BETWEEN
-- ==========================================================

-- Q26. Display employees earning between ₹50,000 and ₹70,000.

-- Q27. Display employees whose employee IDs are between 103 and 108.

-- Q28. Display employees who joined between '2021-01-01' and '2022-12-31'.

-- Q29. Display employees earning between ₹60,000 and ₹80,000.

-- Q30. Display employees whose employee IDs are between 101 and 105.

-- ==========================================================
-- NOT BETWEEN
-- ==========================================================

-- Q31. Display employees whose salary is not between ₹50,000 and ₹70,000.

-- Q32. Display employees whose employee IDs are not between 103 and 108.

-- Q33. Display employees who joined outside the year 2022.

-- Q34. Display employees whose salary is not between ₹60,000 and ₹80,000.

-- Q35. Display employees whose employee IDs are not between 101 and 105.

-- ==========================================================
-- IN
-- ==========================================================

-- Q36. Display employees from Mumbai, Pune, and Delhi.

-- Q37. Display employees from the HR, IT, and Finance departments.

-- Q38. Display employees whose employee IDs are 101, 104, 108, and 110.

-- Q39. Display employees whose salaries are 45000, 68000, or 85000.

-- Q40. Display employees who joined on '2022-01-15' or '2023-04-10'.

-- ==========================================================
-- NOT IN
-- ==========================================================

-- Q41. Display employees not from Mumbai, Pune, or Delhi.

-- Q42. Display employees not in the HR or Sales departments.

-- Q43. Display employees whose employee IDs are not 101, 102, or 103.

-- Q44. Display employees whose salaries are not 45000, 62000, or 78000.

-- Q45. Display employees who did not join on '2021-03-20' or '2023-02-01'.

-- ==========================================================
-- LIKE
-- ==========================================================

-- Q46. Display employees whose names start with 'A'.

-- Q47. Display employees whose names end with 'a'.

-- Q48. Display employees whose names contain 'sh'.

-- Q49. Display employees whose city starts with 'P'.

-- Q50. Display employees whose city ends with 'i'.

-- Q51. Display employees whose designation starts with 'Sales'.

-- Q52. Display employees whose designation ends with 'Manager'.

-- Q53. Display employees whose department contains 'Fin'.

-- Q54. Display employee names where the second character is 'm'.

-- Q55. Display cities having exactly five characters.

-- ==========================================================
-- Mixed Practice
-- ==========================================================

-- Q56. Display IT employees earning between ₹65,000 and ₹90,000.

-- Q57. Display employees from Mumbai or Pune whose salary is greater than ₹60,000.

-- Q58. Display employees who joined after '2021-01-01' and are not in the Sales department.

-- Q59. Display employees from the Finance or HR department whose salary is less than ₹70,000.

-- Q60. Display employees whose names start with 'P' and whose city is Pune.

-- Q61. Display employees from Hyderabad, Bengaluru, or Chennai earning more than ₹65,000.

-- Q62. Display employees whose designation ends with 'Executive' and whose salary is below ₹55,000.

-- Q63. Display employees whose employee IDs are between 102 and 108 and who belong to the IT department.

-- Q64. Display employees whose city is not Mumbai and whose salary is between ₹60,000 and ₹80,000.

-- Q65. Display employees who belong to the IT department or whose designation is 'Marketing Manager'.

-- ==========================================================
-- Mini Challenge
-- ==========================================================

-- Q66. Display employees from the IT or Finance department who earn more than ₹65,000.

-- Q67. Display employees whose names contain the letter 'a' and who joined after '2020-01-01'.

-- Q68. Display employees who are not from Mumbai or Pune and whose salary is greater than ₹60,000.

-- Q69. Display employees whose designation contains 'Manager' and who work in Mumbai or Kochi.

-- Q70. Display employees earning between ₹50,000 and ₹80,000 who joined between '2021-01-01' and '2023-12-31'.

-- ==========================================================
-- Interview Practice
-- ==========================================================

-- Q71. Find employees whose salary is greater than the average salary of the sample dataset. (Do not use subqueries yet; calculate the average manually.)

-- Q72. Display employees whose city starts with 'M' or ends with 'i'.

-- Q73. Display employees who are not from the HR department and whose salary is not between ₹45,000 and ₹60,000.

-- Q74. Display employees from the IT department whose designation contains the word 'Data' or 'Software'.

-- Q75. Write a query that uses AND, OR, BETWEEN, IN, and LIKE together in a meaningful way.