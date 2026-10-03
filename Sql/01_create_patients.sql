/*
=========================================================
 Healthcare Data Analytics Project
 File: 01_create_patients.sql
 Purpose: Create the PATIENTS table
=========================================================
*/

CREATE TABLE patients (
    patient_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    date_of_birth DATE,
    gender VARCHAR2(10),
    phone VARCHAR2(20),
    email VARCHAR2(100),
    city VARCHAR2(50),
    state VARCHAR2(30),
    insurance_provider VARCHAR2(100)
);

-- Verify table creation
SELECT *
FROM patients;