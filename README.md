
<div align="center">
# Welcome to make-your-CV app!
</div>

<p align="center">

[![pipeline status](http://gitlab.com/rajanhq/make-your-cv/badges/master/pipeline.svg)](https://gitlab.com/rajanhq/make-your-cv/commits/master) [![Build Status](https://travis-ci.org/cdrrazan/make-your-cv.svg?branch=master)](https://travis-ci.org/cdrrazan/make-your-cv)[ ![Codeship Status for cdrrazan/make-your-cv](https://app.codeship.com/projects/ac1b9850-19f8-0136-f7b5-06b81823cdbd/status?branch=master)](https://app.codeship.com/projects/284183) [![Maintainability](https://api.codeclimate.com/v1/badges/6bc7021d601e1d5f0f73/maintainability)](https://codeclimate.com/github/cdrrazan/make-your-cv/maintainability) [![Open Source Helpers](https://www.codetriage.com/cdrrazan/make-your-cv/badges/users.svg)](https://www.codetriage.com/cdrrazan/make-your-cv)  [![Lice1Millionnse: AGPL v3](https://img.shields.io/badge/License-AGPL%20v3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)

</p>

### make-your-cv : Get info from user and store/generate PDF!

## Setup
I already wrote a script file to automate the setup process.
(_This project uses postgresql, so author assumes postgresql is already configured in your system._)

1. Give permission to the file:
  **``$ chmod +x make-your-cv.sh`` or ``$ chmod 755 make-your-cv.sh``**

2. Run the file as:
**```$ ./make-your-cv.sh```**

This will check and create db and automatically start the server for you!

Don't forget to check ```Dockerfile``` and ```docker-compose.yml``` as well.
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

> Dependency Out-of-date has been clarified here.

~~~
Heroku doesn't recognize 'pg gem version 1.0' so pg gem was rolled back to 'pg gem version 0.21.0'

Jquery-ui-rails has been used with version '5.0.5', which has other dependency.
  ~~~

## Future Work
:heavy_check_mark: ~~Dockerfile and Docker-compose Init~~ <br>
:heavy_check_mark: ~~Scripting and Travis Build Pass.~~

``` Send automatic mail to the user using Sidekiq and Actionmailer```

# Thank you!
