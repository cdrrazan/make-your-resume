#!/bin/bash
#
#########################################################################################
# Author    :  Rajan Bhattarai                                                          #
# Website   :  https://cdrrazan.com                                                     #
#########################################################################################

#Description
#Script to automate setting up rails project

#Gem installation for rails project
bundle install

#DB start: Uses POSTGRESQL
sudo service postgresql start

# Checking and  Creating rails database for local environment
bundle exec rake db:migrate 2>/dev/null || bundle exec rake db:setup

#Checking if rails default port is used by another application \

touch tmpfile
netstat -tulpn  | grep :3000 > tmpfile

if [ -s proclisten.txt ]
  then
  rails server -p 3535
else
  rails server
fi
#remove tmpfile
rm tmpfile
