/*
=========================================================
 Healthcare Data Analytics Project
 File: 04_insert_sample_data.sql
 Purpose: Insert synthetic sample healthcare data

 Note:
 All patient, physician, contact, and appointment
 information in this project is fictional and created
 solely for learning and demonstration purposes.
=========================================================
*/


/* =====================================================
   PATIENT DATA
   ===================================================== */

INSERT INTO patients
VALUES (
    1001,
    'John',
    'Smith',
    DATE '1985-05-15',
    'Male',
    '704-555-1001',
    'john.smith@example.com',
    'Charlotte',
    'NC',
    'Blue Cross'
);

INSERT INTO patients
VALUES (
    1002,
    'Emily',
    'Johnson',
    DATE '1992-08-21',
    'Female',
    '704-555-1002',
    'emily.johnson@example.com',
    'Charlotte',
    'NC',
    'Aetna'
);

INSERT INTO patients
VALUES (
    1003,
    'Michael',
    'Brown',
    DATE '1978-11-10',
    'Male',
    '980-555-1003',
    'michael.brown@example.com',
    'Concord',
    'NC',
    'UnitedHealthcare'
);

INSERT INTO patients
VALUES (
    1004,
    'Sarah',
    'Davis',
    DATE '2000-02-14',
    'Female',
    '704-555-1004',
    'sarah.davis@example.com',
    'Charlotte',
    'NC',
    'Cigna'
);

INSERT INTO patients
VALUES (
    1005,
    'Robert',
    'Wilson',
    DATE '1965-07-30',
    'Male',
    '980-555-1005',
    'robert.wilson@example.com',
    'Huntersville',
    'NC',
    'Medicare'
);


/* =====================================================
   DOCTOR DATA
   ===================================================== */

INSERT INTO doctors
VALUES (
    201,
    'David',
    'Miller',
    'Cardiology',
    '704-555-2001',
    'david.miller@hospital.com',
    'Cardiology'
);

INSERT INTO doctors
VALUES (
    202,
    'Jennifer',
    'Taylor',
    'Primary Care',
    '704-555-2002',
    'jennifer.taylor@hospital.com',
    'Internal Medicine'
);

INSERT INTO doctors
VALUES (
    203,
    'James',
    'Anderson',
    'Orthopedics',
    '704-555-2003',
    'james.anderson@hospital.com',
    'Orthopedics'
);

INSERT INTO doctors
VALUES (
    204,
    'Lisa',
    'Thomas',
    'Pediatrics',
    '704-555-2004',
    'lisa.thomas@hospital.com',
    'Pediatrics'
);

INSERT INTO doctors
VALUES (
    205,
    'Daniel',
    'Jackson',
    'Neurology',
    '704-555-2005',
    'daniel.jackson@hospital.com',
    'Neurology'
);


/* =====================================================
   APPOINTMENT DATA
   ===================================================== */

INSERT INTO appointments
VALUES (
    3001,
    1001,
    201,
    TO_DATE('2026-10-05 09:00', 'YYYY-MM-DD HH24:MI'),
    'Consultation',
    'Scheduled',
    'Chest pain'
);

INSERT INTO appointments
VALUES (
    3002,
    1002,
    202,
    TO_DATE('2026-10-05 10:30', 'YYYY-MM-DD HH24:MI'),
    'Annual Checkup',
    'Completed',
    'Routine physical examination'
);

INSERT INTO appointments
VALUES (
    3003,
    1003,
    203,
    TO_DATE('2026-10-06 11:00', 'YYYY-MM-DD HH24:MI'),
    'Consultation',
    'Scheduled',
    'Knee pain'
);

INSERT INTO appointments
VALUES (
    3004,
    1004,
    202,
    TO_DATE('2026-10-07 14:00', 'YYYY-MM-DD HH24:MI'),
    'Follow-up',
    'Scheduled',
    'Follow-up visit'
);

INSERT INTO appointments
VALUES (
    3005,
    1005,
    205,
    TO_DATE('2026-10-08 15:30', 'YYYY-MM-DD HH24:MI'),
    'Consultation',
    'Completed',
    'Frequent headaches'
);

INSERT INTO appointments
VALUES (
    3006,
    1001,
    201,
    TO_DATE('2026-10-15 09:30', 'YYYY-MM-DD HH24:MI'),
    'Follow-up',
    'Scheduled',
    'Cardiology follow-up'
);

INSERT INTO appointments
VALUES (
    3007,
    1002,
    202,
    TO_DATE('2026-10-20 13:00', 'YYYY-MM-DD HH24:MI'),
    'Follow-up',
    'Cancelled',
    'Review lab results'
);

COMMIT;