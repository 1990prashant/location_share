# Readme

This application is made under an assignment. In this application user is able to share their locations. I have used OpenLayers for the map. Currently it is having seed users and location details. And when user share their location it just showing shared location. Currently system is not developed to show the name of the location.

You need the following system specification before setup.
 * ruby - 2.7.0
 * rails - 6.0.3.1
 * mysql database

# Setup:

* clone the application

* Go into the project directory

* Run bundle install

* Change database.yml file with your own mysql config

* Run rake db:create

* Run rake db:migrate

* Run rake db:seed

* Run rails s
