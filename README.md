### Patient/Clinician/Clinic Database

This is a database that holds information about patients, clinicians, and clinics.

# Patients

For each patient a user is able to store whether or not a patient has a diagnosis of hypertension or diabetes.
Blood pressure and blood sugar readings are able to be stored in this database as well. With each reading being assinged to the correct patient. Users are also able to update existing patients in the case that they
aren't hypertensive or diabetic. Patients are also able to be deleted from the database as well.

# Clinicians

Users are able to add clinicians to this database with their proper title and clinic that they are practicing at. 

# Clinics

Similar to clinicians clinics are able to be added to this database and show how many clinicians are on staff and where the clinic is located.


## Technologies Used

Active record and Sinatra are used to persist data into this database along with assigning correct blood pressures/blood sugars to patients and the amount of clinicians in each clinic. Two one-to-many relationships are established one being patients and blood pressures/blood sugars with full CRUD capibilites and clinics and clinicians. Multiple fetch requests were created in order to serve the frontend with the correct need.