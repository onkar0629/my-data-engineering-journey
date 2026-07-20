-- ============================================
-- Assignment 09 - Joins & Aggregation
-- Author: Onkar Jadhav
-- ============================================

-- Show all databases
SHOW DATABASES;

-- Create Database
CREATE DATABASE IF NOT EXISTS clinicdb;

-- Select Database
USE clinicdb;

-- View Tables
SELECT * FROM doctor;
SELECT * FROM patient;
SELECT * FROM visit;

-- ============================================
-- 1. The clinic manager wants to know how many patients each doctor attended every day.
-- Display only those days where a doctor handled at least two visits.
-- ============================================

SELECT
    d.full_name AS doctor_name,
    v.visit_date,
    COUNT(v.patient_id) AS total_patients
FROM doctor d
INNER JOIN visit v
    ON d.id = v.doctor_id
GROUP BY
    d.id,
    d.full_name,
    v.visit_date
HAVING COUNT(v.patient_id) >= 2;

-- ============================================
-- 2. Find the average rating of doctors who have treated at least
-- 5 different patients.
-- ============================================

SELECT AVG(rating) AS average_rating
FROM doctor
WHERE id IN (
    SELECT doctor_id
    FROM visit
    GROUP BY doctor_id
    HAVING COUNT(DISTINCT patient_id) >= 5
);

-- ============================================
-- 3. Identify the doctor who has treated the highest number
-- of unique patients.
-- ============================================

SELECT
    d.id AS doctor_id,
    d.full_name AS doctor_name,
    COUNT(DISTINCT v.patient_id) AS unique_patients
FROM doctor d
INNER JOIN visit v
    ON d.id = v.doctor_id
GROUP BY
    d.id,
    d.full_name
ORDER BY unique_patients DESC
LIMIT 1;

-- ============================================
-- 4. Generate a report showing the total revenue earned by
-- each doctor based on the number of visits and consultation fee.
-- ============================================

SELECT
    d.id,
    d.full_name AS doctor_name,
    COUNT(v.id) AS total_visits,
    d.consultation_fee,
    COUNT(v.id) * d.consultation_fee AS total_revenue
FROM doctor d
LEFT JOIN visit v
    ON d.id = v.doctor_id
GROUP BY
    d.id,
    d.full_name,
    d.consultation_fee
ORDER BY total_revenue DESC;

-- ============================================
-- 5. Find patients who have consulted more than one doctor.
-- ============================================

SELECT
    p.id,
    p.full_name AS patient_name,
    COUNT(DISTINCT v.doctor_id) AS doctors_consulted
FROM patient p
INNER JOIN visit v
    ON p.id = v.patient_id
GROUP BY
    p.id,
    p.full_name
HAVING COUNT(DISTINCT v.doctor_id) > 1;

-- ============================================
-- 6. Find the city where the highest number of doctors
-- are currently practicing.
-- ============================================

SELECT
    city,
    COUNT(*) AS total_doctors
FROM doctor
GROUP BY city
ORDER BY total_doctors DESC
LIMIT 1;

-- ============================================
-- 7. Generate a report of the Top 3 doctors who generated
-- the highest revenue.
-- ============================================

SELECT
    d.id,
    d.full_name,
    COUNT(v.id) * d.consultation_fee AS revenue
FROM doctor d
LEFT JOIN visit v
    ON d.id = v.doctor_id
GROUP BY
    d.id,
    d.full_name,
    d.consultation_fee
ORDER BY revenue DESC
LIMIT 3;

-- ============================================
-- 8. Identify doctors who have never been visited
-- by any patient.
-- ============================================

SELECT
    d.id,
    d.full_name
FROM doctor d
LEFT JOIN visit v
    ON d.id = v.doctor_id
WHERE v.id IS NULL;

-- ============================================
-- 9. Find all patients who have not booked any appointment.
-- ============================================

SELECT
    p.id,
    p.full_name
FROM patient p
LEFT JOIN visit v
    ON p.id = v.patient_id
WHERE v.id IS NULL;

-- ============================================
-- 10. Display every doctor along with the number of
-- unique patients they have treated.
-- ============================================

SELECT
    d.id,
    d.full_name,
    COUNT(DISTINCT v.patient_id) AS unique_patients
FROM doctor d
LEFT JOIN visit v
    ON d.id = v.doctor_id
GROUP BY
    d.id,
    d.full_name
ORDER BY unique_patients DESC;

-- ============================================
-- 11. Classify doctors based on total visits.
-- Excellent (10 or more visits)
-- Good (5–9 visits)
-- Needs Improvement (Less than 5 visits)
-- ============================================

SELECT
    d.id,
    d.full_name,
    COUNT(v.id) AS total_visits,
    CASE
        WHEN COUNT(v.id) >= 10 THEN 'Excellent'
        WHEN COUNT(v.id) BETWEEN 5 AND 9 THEN 'Good'
        ELSE 'Needs Improvement'
    END AS performance
FROM doctor d
LEFT JOIN visit v
    ON d.id = v.doctor_id
GROUP BY
    d.id,
    d.full_name;

-- ============================================
-- 12. Classify patients based on the number of visits.
-- Frequent Patient
-- Regular Patient
-- New Patient
-- ============================================

SELECT
    p.id,
    p.full_name,
    COUNT(v.id) AS total_visits,
    CASE
        WHEN COUNT(v.id) >= 10 THEN 'Frequent Patient'
        WHEN COUNT(v.id) BETWEEN 5 AND 9 THEN 'Regular Patient'
        ELSE 'New Patient'
    END AS patient_type
FROM patient p
LEFT JOIN visit v
    ON p.id = v.patient_id
GROUP BY
    p.id,
    p.full_name;

-- ============================================
-- 13. Find the day when the clinic received the
-- maximum number of patient visits.
-- ============================================

SELECT
    visit_date,
    COUNT(*) AS total_visits
FROM visit
GROUP BY visit_date
ORDER BY total_visits DESC
LIMIT 1;

-- ============================================
-- 14. Find patients who visited the same doctor
-- more than three times.
-- ============================================

SELECT
    p.id,
    p.full_name,
    d.full_name AS doctor_name,
    COUNT(*) AS total_visits
FROM visit v
INNER JOIN patient p
    ON v.patient_id = p.id
INNER JOIN doctor d
    ON v.doctor_id = d.id
GROUP BY
    p.id,
    p.full_name,
    d.id,
    d.full_name
HAVING COUNT(*) > 3;

-- ============================================
-- 15. Build a single SQL query to generate the
-- following KPIs:
-- Total Doctors
-- Total Patients
-- Total Visits
-- Total Revenue
-- Average Doctor Rating
-- Average Revenue Per Visit
-- Highest Revenue Doctor
-- Most Visited Doctor
-- ============================================




-- ============================================
-- Final Output
-- ============================================

SELECT * FROM doctor;
SELECT * FROM patient;
SELECT * FROM visit;
