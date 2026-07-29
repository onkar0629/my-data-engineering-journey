-- ==========================================================
-- Day 02 - DDL (Data Definition Language)
-- Practice Questions
-- ==========================================================

-- ==========================================================
-- Setup
-- ==========================================================

-- Q1. Create a database named company_db.

-- Q2. Create the company_db database only if it does not already exist.

-- Q3. Select the company_db database.

-- Q4. Display the name of the currently selected database.

-- ==========================================================
-- CREATE TABLE
-- ==========================================================

-- Q5. Create a table named employees with the following columns:
--
-- employee_id      INT
-- employee_name    VARCHAR(100)
-- department       VARCHAR(50)
-- salary           DECIMAL(10,2)

-- Q6. Create a table named departments with the following columns:
--
-- department_id      INT
-- department_name    VARCHAR(50)
-- location           VARCHAR(100)

-- Q7. Create a table named projects with the following columns:
--
-- project_id        INT
-- project_name      VARCHAR(100)
-- budget            DECIMAL(12,2)

-- Q8. Create a table named students with the following columns:
--
-- student_id        INT
-- student_name      VARCHAR(100)
-- course            VARCHAR(50)
-- age               INT

-- ==========================================================
-- DESCRIBE / DESC
-- ==========================================================

-- Q9. Display the structure of the employees table.

-- Q10. Display the structure of the departments table using DESC.

-- Q11. Display the structure of the projects table.

-- ==========================================================
-- SHOW TABLES
-- ==========================================================

-- Q12. Display all tables in the current database.

-- Q13. Verify whether the students table exists.

-- ==========================================================
-- ALTER TABLE - ADD COLUMN
-- ==========================================================

-- Q14. Add an email column of type VARCHAR(100) to the employees table.

-- Q15. Add a phone_number column of type BIGINT to the employees table.

-- Q16. Add a joining_date column of type DATE to the employees table.

-- Q17. Add a manager_name column of type VARCHAR(100) to the departments table.

-- ==========================================================
-- ALTER TABLE - MODIFY COLUMN
-- ==========================================================

-- Q18. Increase the size of employee_name to VARCHAR(150).

-- Q19. Change the salary column to DECIMAL(12,2).

-- Q20. Change the location column in the departments table to VARCHAR(150).

-- ==========================================================
-- ALTER TABLE - CHANGE COLUMN
-- ==========================================================

-- Q21. Rename the email column to official_email using CHANGE COLUMN.

-- Q22. Rename the manager_name column to department_manager using CHANGE COLUMN.

-- ==========================================================
-- ALTER TABLE - RENAME COLUMN
-- ==========================================================

-- Q23. Rename the department column to department_name.

-- Q24. Rename the project_name column to project_title.

-- ==========================================================
-- ALTER TABLE - DROP COLUMN
-- ==========================================================

-- Q25. Remove the phone_number column from the employees table.

-- Q26. Remove the joining_date column from the employees table.

-- Q27. Remove the budget column from the projects table.

-- ==========================================================
-- RENAME TABLE
-- ==========================================================

-- Q28. Rename the students table to college_students.

-- Q29. Rename the projects table to company_projects.

-- ==========================================================
-- TRUNCATE TABLE
-- ==========================================================

-- Q30. Remove all records from the employees table without deleting the table.

-- Q31. Remove all records from the departments table.

-- ==========================================================
-- DROP TABLE
-- ==========================================================

-- Q32. Delete the company_projects table permanently.

-- Q33. Delete the college_students table permanently.

-- ==========================================================
-- Mixed Practice
-- ==========================================================

-- Q34. Create a table named customers with the following columns:
--
-- customer_id      INT
-- customer_name    VARCHAR(100)
-- city             VARCHAR(50)

-- Q35. Add an email column to the customers table.

-- Q36. Increase the size of customer_name to VARCHAR(150).

-- Q37. Rename the city column to customer_city.

-- Q38. Remove the email column.

-- Q39. Rename the customers table to client_details.

-- Q40. Display the structure of the client_details table.

-- Q41. Remove all records from the client_details table.

-- Q42. Delete the client_details table permanently.

-- ==========================================================
-- Mini Challenge
-- ==========================================================

-- Q43. Create a table named products with the following columns:
--
-- product_id        INT
-- product_name      VARCHAR(100)
-- price             DECIMAL(10,2)

-- Q44. Add a category column of type VARCHAR(50).

-- Q45. Increase the size of product_name to VARCHAR(150).

-- Q46. Rename the category column to product_category.

-- Q47. Remove the price column.

-- Q48. Rename the table to inventory.

-- Q49. Display the structure of the inventory table.

-- Q50. Remove all records from the inventory table.

-- Q51. Delete the inventory table.

-- ==========================================================
-- Interview Practice
-- ==========================================================

-- Q52. What is DDL?

-- Q53. Name five DDL commands.

-- Q54. What is the difference between DELETE, TRUNCATE, and DROP?

-- Q55. What is the difference between CHANGE COLUMN and RENAME COLUMN?

-- Q56. What is the purpose of the DESCRIBE command?

-- Q57. Which command displays all tables in the current database?

-- Q58. Which DDL command removes only the table structure?

-- Q59. Which DDL command removes all rows but keeps the table structure?

-- Q60. Can ALTER TABLE perform more than one type of modification? Explain with examples.