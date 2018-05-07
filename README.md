# README
---
---
## Overview
1. Summary
2. Installation
3. Future Updates
4. User Stories
5. Wireframing
6. Workflow Diagram
7. Entity Relationship Diagram
8. Gem List
9. Other Tools
10. Project Plan
11. Assignment Requirements

---
## 1 Summary

This app was designed as part of the CoderAcademy assignment to build a two-sided marketplace.

PROBLEM DEFINITION - Our cars are often one of our largest assets and in most cases they are under-utilised. Their high annual cost and depreciation further reduce asset value, producing poor investment outcomes.


SOLUTION - Sharing platforms such as Airbnb have created market places to address this under-utilisation, offering financial incentive for the asset providers and a more personalised experience for the consumer. After all, if we're not using it, we may as well let it earn us some money. This application seeks to provide such a market place for our cars, thus increasing asset utilisation and value.

VALUE PROPOSITION - There are currently similar applications available but no global market leaders or household names, and they all operate slightly differently. This application aims to provide a more seamless and intuitive solution whilst incorporating the best features of current providers.

---
## 2 Installation

Configuration - you will not have an ENV file as this has been ignored through Git. In order to run the App you will need to create a .env file with your own environment (ENV) variables.

To get started, clone the repo and then from your CLI, in the main application directory, run:

`bundle install`

`rails db:migrate`

Create a .env file in the root of the directory and add ENV variables :

`POSTGRES_PASSWORD=XXXX`

`STRIPE_PUBLISHABLE_KEY=XXXX`

`STRIPE_SECRET_KEY=XXXX`

`GOOGLE_MAPS_KEY=XXXX`

`SEND_GRID_USER=XXXX`

`SEND_GRID_PASSWORD=XXXX`

---
## 3 Future Updates / Bug Fixes


---
## 4 User Stories

single screenshot

---
## 5 Wireframing

multiple screen screenshots

or if time just one linking to others in repo

---
## 6 Workflow Diagram


---
## 7 Entity Relationship Diagram


---
## 8 Gems List

1. Ruby version 2.5.0
2. pg - postgresql Database
3. Devise - authentication
4. Webhosting - Heroku
5. Sendgrid - emails
6. Stripe - payments
7. Carrierwave - image uploads
8. Cloudinary - image storage
9. dotenv-rails - environmental variables
10. geocoder - longitude latitude geocoding
11. Google Maps - map locations

---
## 9 Other Tools

1. Github - Version control
2. Lucidchart - ERD
3. Excel - Gantt chart

---
## 10 Project Plan

gant chart here

---
## 11. Assignment Requirements

1. Create your application using Ruby on Rails
2. Demonstrate knowledge of Rails conventions.
3. Use postgresql database in development.
4. Use an API.
5. Use appropriate gems.
6. Use environmental variables to protect API keys etc.
7. Implement a payment system for your product.
8. Your app must send transactional emails.
9. Your app will have some type of searching, sorting and or filtering capability.
10. Your app will have some type of file uploading capability (eg. images).
11. Your app will have authentication.
12. Your app will have authorisation.
13. Document your application with an appropriate README.md file.
