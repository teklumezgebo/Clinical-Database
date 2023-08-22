# Clinical Database 

### [Frontend Repository](https://github.com/teklumezgebo/Patient-Database-Frontend)

Welcome to Clinical Database! This comprehensive database serves as a repository for managing information about patients, clinicians, and clinics.

## Overview

The Patient/Clinician/Clinic Database is designed to streamline the management of healthcare-related data. With a focus on patients, clinicians, and clinics, this system provides users with the tools to organize, update, and retrieve essential information efficiently.

## Features

### Patients

- Store patient information, including diagnoses of hypertension and diabetes.
- Manage blood pressure and blood sugar readings associated with each patient.
- Update patient records to reflect changes in diagnoses or other details.
- Delete patient records when necessary.

### Clinicians

- Add clinicians to the database, specifying their titles and expertise.

### Clinics

- Add clinic information, including location details.

## Data Structure

The database is organized around the following relationships:

- Patients and their associated blood pressure and blood sugar readings.

## Technologies Used

The Patient/Clinician/Clinic Database leverages the following technologies:

- **Active Record:** This technology facilitates data persistence in the database, ensuring accurate and reliable storage of information.
- **Sinatra:** The Sinatra framework provides a foundation for building web applications and APIs, enabling seamless communication between the frontend and the database.
- **One-to-Many Relationships:** Through well-defined relationships, the database efficiently manages associations between patients and their readings, as well as between clinics and clinicians.
- **Fetch Requests:** Multiple fetch requests have been implemented to ensure that the frontend receives the necessary data for display and interaction.
