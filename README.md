# Welcome to CVMS!
**CVMS :** Get info from user and store/generate PDF!

## Setup
1. Clone the repo:
  **``$ git clone git@github.com:cdrrazan/cv.git && cd cv``**
2. Initialize db:
  **`` rails db:create && rails db:migrate  ``**

3.  Start the server:
   **``rails s``**

## Features and Workflow

### Workflow
~~~
1. User Login/SignUp
2. Enter CV Details
3. View CV Details
4. Generate PDF
5. Logout
~~~

__Rails-Admin__ has been mounted to rails-admin-conf.  Please submit
accordingly.


### Features
1. Limit to single submission of CV-details
2. Able to Generate PDF  for CV.

## Limitation and Future Work
Simple PDF layout. Will have extenmsive template for generating the PDF formats with user images as well.
