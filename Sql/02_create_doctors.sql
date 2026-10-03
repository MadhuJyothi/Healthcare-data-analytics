/*
=========================================================
 Healthcare Data Analytics Project
 File: 02_create_doctors.sql
 Purpose: Create the DOCTORS table
=========================================================
*/

CREATE TABLE doctors (
    doctor_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    specialization VARCHAR2(100),
    phone VARCHAR2(20),
    email VARCHAR2(100),
    department VARCHAR2(100)
);

-- Verify table creation
SELECT *
FROM doctors;