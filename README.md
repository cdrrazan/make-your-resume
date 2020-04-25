# Welcome to make-your-resume app!

[![Build Status](https://travis-ci.com/cdrrazan/make-your-cv.svg?branch=master)](https://travis-ci.com/cdrrazan/make-your-Resume) [![Lice1Millionnse: AGPL v3](https://img.shields.io/badge/License-AGPL%20v3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)

### make-your-resume : Get info from user and store/generate PDF!

## Setup
I already wrote a script file to automate the setup process.
(_This project uses postgresql, so author assumes postgresql is already configured in your system._)

1. Give permission to the file:
  **``$ chmod +x make-your-resume.sh`` or ``$ chmod 755 make-your-resume.sh``**

2. Run the file as:
**```$ ./make-your-resume.sh```**

This will check and create db and automatically start the server for you!

Don't forget to check ```Dockerfile``` and ```docker-compose.yml``` as well.
<br>

## Features and Workflow

  ### Workflow
  ~~~
  1. User Login/SignUp
  2. Enter Resume Details
  3. View Resume Details
  4. Generate PDF
  5. Logout
  ~~~


  ### Features
  1. Limit to single submission of Resume-details
  2. Able to Generate PDF for Resume.

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

## Resume update list
> Profile Picture Upload <br>
> User authentication refactoring  <br>
> Mulitple Resume <br>
 ....( Add your own features in Resume )

``` Send automatic mail to the user using Sidekiq and Actionmailer```