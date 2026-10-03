/*
=========================================================
 Healthcare Data Analytics Project
 File: 03_create_appointments.sql
 Purpose: Create the APPOINTMENTS table and relationships
=========================================================
*/

CREATE TABLE appointments (
    appointment_id NUMBER PRIMARY KEY,
    patient_id NUMBER NOT NULL,
    doctor_id NUMBER NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_type VARCHAR2(50),
    status VARCHAR2(30),
    reason_for_visit VARCHAR2(200),

    CONSTRAINT fk_appointment_patient
        FOREIGN KEY (patient_id)
        REFERENCES patients(patient_id),

    CONSTRAINT fk_appointment_doctor
        FOREIGN KEY (doctor_id)
        REFERENCES doctors(doctor_id)
);

-- Verify table creation
SELECT *
FROM appointments;