-- ==========================================================
-- Day 03 - DML (Data Manipulation Language)
-- Practice Questions
-- ==========================================================

-- ==========================================================
-- Dataset
-- ==========================================================

-- Create the employees table.

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    city VARCHAR(50)
);

-- Insert the following records.

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
-- INSERT Statement
-- ==========================================================

-- Q1. Insert a new employee named "Riya Sharma" into the employees table.

-- Q2. Insert a new employee named "Arjun Mehta" using all columns.

-- Q3. Insert a new employee by specifying only the following columns:
-- employee_id, employee_name, department, designation

-- Q4. Insert three new employees using a single INSERT statement.

-- Q5. Insert an employee whose city is 'Nagpur'.

-- ==========================================================
-- UPDATE Statement
-- ==========================================================

-- Q6. Update the salary of employee_id 101 to 50000.

-- Q7. Change the department of employee_id 103 to 'IT'.

-- Q8. Promote employee_id 102 to 'Senior Software Engineer'.

-- Q9. Update both the designation and salary of employee_id 104.

-- Q10. Increase the salary of every employee in the HR department by ₹5,000.

-- Q11. Change the city of employee_id 107 to 'Pune'.

-- Q12. Update the joining date of employee_id 105.

-- Q13. Change every employee's city to 'Mumbai'.

-- ==========================================================
-- DELETE Statement
-- ==========================================================

-- Q14. Delete the employee whose employee_id is 108.

-- Q15. Delete all employees from the HR department.

-- Q16. Delete employees whose salary is less than 50000.

-- Q17. Delete employees who belong to the city 'Mumbai'.

-- Q18. Delete all records from the employees table.

-- ==========================================================
-- Transactions
-- ==========================================================

-- Q19. Start a transaction.

-- Q20. Insert a new employee and permanently save the transaction.

-- Q21. Start a transaction, update an employee's salary, and undo the changes.

-- Q22. Start a transaction, delete an employee, and roll back the transaction.

-- Q23. Start a transaction, create a savepoint after inserting a new employee.

-- Q24. Update the newly inserted employee's salary and roll back to the savepoint.

-- Q25. Commit the transaction.

-- ==========================================================
-- Mixed Practice
-- ==========================================================

-- Q26. Insert two new employees using a single query.

-- Q27. Increase the salary of all IT employees by ₹10,000.

-- Q28. Change the designation of all Sales employees to 'Senior Sales Executive'.

-- Q29. Delete employees who joined before '2020-01-01'.

-- Q30. Insert a new employee and immediately update their salary.

-- Q31. Insert a new employee and then delete that employee.

-- Q32. Start a transaction, insert two employees, create a savepoint, update one employee, roll back to the savepoint, and commit the transaction.

-- ==========================================================
-- Mini Challenge
-- ==========================================================

-- Q33. Add five new employee records of your choice.

-- Q34. Increase the salary of every Finance employee by ₹8,000.

-- Q35. Change the city of all IT employees to 'Hyderabad'.

-- Q36. Delete every employee whose department is 'Marketing'.

-- Q37. Insert a new HR employee and commit the transaction.

-- ==========================================================
-- Interview Practice
-- ==========================================================

-- Q38. Write a query to insert a single employee record.

-- Q39. Write a query to insert multiple employee records.

-- Q40. Write a query to update the salary of a specific employee.

-- Q41. Write a query to update multiple columns of a specific employee.

-- Q42. Write a query to delete a specific employee.

-- Q43. Write a query to delete all records from a table.

-- Q44. Write the SQL command to start a transaction.

-- Q45. Write the SQL command to permanently save a transaction.

-- Q46. Write the SQL command to undo a transaction.

-- Q47. Write the SQL commands to create and use a SAVEPOINT.