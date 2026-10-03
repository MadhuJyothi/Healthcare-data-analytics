# Healthcare Data Analytics Project

## Project Overview

This is a hands-on Health Informatics project I created to improve my understanding of healthcare data, SQL, relational databases, and Power BI.

My goal with this project is to learn how healthcare data can be stored in a relational database, queried using SQL, and transformed into meaningful reports and interactive dashboards using Power BI.

For the first phase of the project, I created a simple healthcare appointment management dataset containing patients, doctors, and appointments.

The project will continue to grow as I add additional healthcare concepts such as diagnoses, treatments, billing, and insurance claims.

---

## Technologies Used

- Oracle Database
- Oracle SQL
- Power BI
- DAX
- Git
- GitHub

---

## Project Architecture

```text
Healthcare Data
      ↓
Oracle Database
      ↓
SQL Queries
      ↓
Relational Data Model
      ↓
Power BI
      ↓
Interactive Healthcare Dashboard
```

---

## Database Design

The current database contains three main tables:

### Patients

Stores basic patient information including:

- Patient ID
- First Name
- Last Name
- Date of Birth
- Gender
- Phone
- Email
- City
- State
- Insurance Provider

### Doctors

Stores provider information including:

- Doctor ID
- First Name
- Last Name
- Specialization
- Department
- Phone
- Email

### Appointments

Stores appointment information including:

- Appointment ID
- Patient ID
- Doctor ID
- Appointment Date
- Appointment Type
- Appointment Status
- Reason for Visit

---

## Database Relationships

The `APPOINTMENTS` table connects patients and doctors using foreign keys.

```text
PATIENTS
   1
   |
   | Patient