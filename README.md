# README
---
[View the site](https://floating-plains-94998.herokuapp.com)

[GitHub Repo](https://github.com/revelroestorf/rails_two_sided_marketplace_rent_my_car)

 
---
## Overview
1. Summary
2. Installation
3. User Stories
4. Wireframes
5. User Flow Diagram
6. Entity Relationship Diagram
7. Gems and Tools

9. Project Plan
10. Assumptions
11. Future Updates
12. Assignment Requirements

---
## 1. Summary

This app was designed as part of the CoderAcademy assignment to build a two-sided marketplace.

PROBLEM DEFINITION - Our cars are often one of our largest assets and in most cases they are under-utilised. Their high annual cost and depreciation further reduce asset value, producing poor investment outcomes.


SOLUTION - Sharing platforms such as Airbnb have created market places to address this under-utilisation, offering financial incentive for the asset providers and a more personalised experience for the consumer. After all, if we're not using it, we may as well let it earn us some money. This application seeks to provide such a market place for our cars, thus increasing asset utilisation and value.

VALUE PROPOSITION - There are currently similar applications available but no global market leaders or household names, and they all operate slightly differently. This application aims to provide a more seamless and intuitive solution whilst incorporating the best features of current providers.

---
## 2. Installation

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
## 3. User Stories

screenshot(s) here

![User Stories]()

---
## 4. Wireframes

screenshot(s) here

![Wireframe]()

---
## User Flow Diagram

screenshot here

![User flow diagram]()

---
## Entity Relationship Diagram

screenshot here

![Gantt Chart]()

---
## Gems and Tools

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
12. formtastic - datepicker
13. Heroku - deployment
14. Github - Version control
15. Lucidchart - ERD
16. Excel - Gantt chart
17. Bootstrap - Styling

---
## Project Plan

screenshot here

![Gantt Chart]()

---
## Assumptions

To ensure continual focus on the software development aspects of this 'real world' application, I've made many assumptions. Below are some of these:

* Agreement with a third party insurance provider
* We have the owner's bank details and can make payments in their account.
* We have the guest's credit card information and are authorised to charge the final booking fee, which depends on the number of kilometres travelled.
* Guests will record the condition of the car at pick-up and return, including odometer reading, fuel level and general mechanical condition.
* Owner's will enter the correct odometer readings, specifically to ensure guests are not overcharged.
*   

---
## Design Decisions

DATABASE TABLES - I wanted to keep them and their relationships as simple as possible, without repeating data. The bookings table was the only exception where additional columns were added for pricing so that they could be stored with the booking and not subject to change with pricing updates.

###### Styling
DESIGN APPROACH - Primarily focused on functionality, I decided for the styling to produce something simple and potentially generic but with a professional feel. I choose Bootstrap to achieve these ends.

COLOURS - Following the design approach, I used mainly black, white and greys for the text, table borders, navbar and page backgrounds. I've used some colour (Orange and Bootstrap Info blue) in the 'How it works' section to bring the somewhat boring contents to life a bit.

All the 'back' buttons are dark grey and placed to the bottom left to avoid detracting from any content but also be easily found.

All proceed and submit buttons are Bootstrap Primary blue except for the 'Previous bookings' button (Info blue) and the 'Update' button (Bootstrap Warning yellow).

IMAGES - Following the design approach I've leaned heavily on powerful images to breath life into the very simply styled pages.

---
## Future Updates / Bug Fixes






---
## Assignment Requirements

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
