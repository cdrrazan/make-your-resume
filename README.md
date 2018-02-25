# Welcome to make-your-CV app! [![Build Status](https://travis-ci.org/cdrrazan/make-your-cv.svg?branch=master)](https://travis-ci.org/cdrrazan/make-your-cv)  [![Maintainability](https://api.codeclimate.com/v1/badges/6bc7021d601e1d5f0f73/maintainability)](https://codeclimate.com/github/cdrrazan/make-your-cv/maintainability)

**make-your-cv :** Get info from user and store/generate PDF!

## Setup
I already wrote a script file to automate the setup process.

1. Give permission to the file:
  **``$ chmod +x make-your-cv.sh`` or ``$ chmod 755 make-your-cv.sh``**

2. Run the file as:
**```$ ./make-your-cv.sh```**

This will check and create db and automatically start the server for you!

Don't forget to check Dockerfile and docker-compose.yml as well.
<br>

## Features and Workflow

  ### Workflow
  ~~~
  1. User Login/SignUp
  2. Enter CV Details
  3. View CV Details
  4. Generate PDF
  5. Logout
  ~~~


  ### Features
  1. Limit to single submission of CV-details
  2. Able to Generate PDF  for CV.

## Limitation

> Simple PDF layout. Will have extensive template for generating the PDF formats with user images as well.

## Future Work
:heavy_check_mark: ~~Dockerfile and Docker-compose Init~~ <br>
:heavy_check_mark: ~~Scripting and Travis Build Pass.~~

``` Send automatic mail to the user using Sidekiq and Actionmailer```

# Thank you!
