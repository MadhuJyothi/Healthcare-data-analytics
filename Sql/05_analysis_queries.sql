/*
=========================================================
 Healthcare Data Analytics Project
 File: 05_analysis_queries.sql

 Purpose:
 Demonstrate SQL queries used to explore and analyze
 the healthcare dataset.
=========================================================
*/


/* =====================================================
   DATABASE INFORMATION
   ===================================================== */

-- Display the currently connected Oracle user
SELECT USER
FROM DUAL;

-- Display the current Oracle container
SELECT SYS_CONTEXT('USERENV', 'CON_NAME') AS container_name
FROM DUAL;


/* =====================================================
   BASIC SELECT QUERIES
   ===================================================== */

-- Display all patients
SELECT *
FROM patients;

-- Display selected patient information
SELECT
    first_name,
    last_name,
    city
FROM patients;

-- Display all doctors
SELECT *
FROM doctors;

-- Display doctor contact information
SELECT
    first_name,
    last_name,
    email
FROM doctors;

-- Display all appointments
SELECT *
FROM appointments;


/* =====================================================
   WHERE / FILTERING
   ===================================================== */

-- Patients located in Charlotte
SELECT *
FROM patients
WHERE city = 'Charlotte';

-- Patients with Aetna insurance
SELECT *
FROM patients
WHERE insurance_provider = 'Aetna';

-- Find doctors specializing in Neurology
SELECT *
FROM doctors
WHERE specialization = 'Neurology';


/* =====================================================
   ORDER BY
   ===================================================== */

-- Sort patients by date of birth
SELECT
    patient_id,
    first_name,
    last_name,
    date_of_birth
FROM patients
ORDER BY date_of_birth;

-- Sort doctors by specialization
SELECT
    doctor_id,
    first_name,
    last_name,
    specialization
FROM doctors
ORDER BY specialization;


/* =====================================================
   PATIENT + APPOINTMENT JOIN
   ===================================================== */

-- Display appointments along with patient information
SELECT
    a.appointment_id,
    p.first_name,
    p.last_name,
    a.appointment_date,
    a.status,
    a.reason_for_visit
FROM appointments a
JOIN patients p
    ON a.patient_id = p.patient_id
ORDER BY a.appointment_date;


/* =====================================================
   PATIENT + APPOINTMENT + DOCTOR JOIN
   ===================================================== */

-- Complete appointment details including
-- patient and doctor information

SELECT
    a.appointment_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    d.first_name || ' ' || d.last_name AS doctor_name,
    d.specialization,
    a.appointment_date,
    a.appointment_type,
    a.status,
    a.reason_for_visit
FROM appointments a
JOIN patients p
    ON a.patient_id = p.patient_id
JOIN doctors d
    ON a.doctor_id = d.doctor_id
ORDER BY a.appointment_date;


/* =====================================================
   APPOINTMENT STATUS ANALYSIS
   ===================================================== */

-- Number of appointments by status
SELECT
    status,
    COUNT(*) AS total_appointments
FROM appointments
GROUP BY status
ORDER BY total_appointments DESC;


/* =====================================================
   APPOINTMENTS BY DOCTOR
   ===================================================== */

SELECT
    d.doctor_id,
    d.first_name || ' ' || d.last_name AS doctor_name,
    d.specialization,
    COUNT(a.appointment_id) AS total_appointments
FROM doctors d
LEFT JOIN appointments a
    ON d.doctor_id = a.doctor_id
GROUP BY
    d.doctor_id,
    d.first_name,
    d.last_name,
    d.specialization
ORDER BY total_appointments DESC;


/* =====================================================
   APPOINTMENTS BY TYPE
   ===================================================== */

SELECT
    appointment_type,
    COUNT(*) AS total_appointments
FROM appointments
GROUP BY appointment_type
ORDER BY total_appointments DESC;