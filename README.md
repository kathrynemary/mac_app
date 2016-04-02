# Midwest Access Coalition Volunteer Management Portal
[![Build Status](https://travis-ci.org/MidwestAccessCoalition/mac_app.svg?branch=master)](https://travis-ci.org/MidwestAccessCoalition/mac_app)

## Project Spec
Read about the details and goals for the app [here](https://docs.google.com/document/d/12kksmdvx_QYvset1-sVcDQbEyCf70-3HfdkIVY58d24/edit?usp=sharing)

## Ruby version
* Ruby 2.2.2
* Rails 4.2.6

## Database
* Postgresql

## Local Development
Clone this repo.  
Bundle with `bundle install`  
Create DB `createdb db/development`  
Run migrations with `rake db:migrate`  
Start the server with `bin/rails s`

## Test DB
Simple setup:
```
rake db:test:prepare
```
Manually reset DB:
```
bundle exec rake db:drop RAILS_ENV=test
bundle exec rake db:create RAILS_ENV=test
bundle exec rake db:schema:load RAILS_ENV=test
```

## How to run the test suite
`rspec` or `rake spec`

## Deploy to Heroku
[http://midwestaccesscoalition.herokuapp.com/](http://midwestaccesscoalition.herokuapp.com/)

##Register the Google Calendar API
Set up a project for the app here:
https://console.developers.google.com/apis/library 
Make sure that google calendar and google+ are enabled.
Google's documentation can be found here:
https://developers.google.com/google-apps/calendar/auth

Create credentials for your project with the type Other (Not Web Application)
Once they generate, click the download link to the right.
Save that file as client_secret.json in the main project directory. It's referenced as CLIENT_SECRETS_PATH in quickstart.rb

Run ruby quickstart.rb, open the url it generates in your browser. Select the email account to use, then paste the resulting code in your terminal and hit enter.

Very helpful:
https://developers.google.com/google-apps/calendar/quickstart/ruby#step_3_set_up_the_sample
http://landonmarder.com/posts/2014/06/04/google-cal-rails/

