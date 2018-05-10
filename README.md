# README

[View the site](https://rentmycar.herokuapp.com/)

[GitHub Repo](https://github.com/revelroestorf/rails_two_sided_marketplace_rent_my_car)


## Overview

1. Summary
2. Installation
3. User Stories
4. Wireframes
5. User Flow Diagram
6. Entity Relationship Diagram
7. Gems and Tools
8. Project Plan
9. Design Decisions
10. Assumptions
11. Future Updates
12. Assignment Requirements

## 1. Summary

This app was designed as part of the CoderAcademy assignment to build a two-sided marketplace.

PROBLEM DEFINITION - Our cars are often one of our largest assets and in most cases they are under-utilised. Their high annual cost and depreciation further reduce asset value, producing poor investment outcomes.

Renting cars, on the other hand, can be a rigid process of when, where and how, most of which are designed to suit the rental company.

SOLUTION - Sharing platforms such as Airbnb have created market places to address this under-utilisation, offering financial incentive for the asset providers and a more personalised experience for the consumer. This application seeks to provide such a market place for our cars, proving economic incentive to car owners with the available resource, and to consumers we offer flexibility, control, convenience and a more human interaction.

VALUE PROPOSITION - There are currently similar applications available but no global market leaders or household names, and they all operate slightly differently. This application aims to provide a more seamless and intuitive solution whilst incorporating the best features of current providers.

---
## 2. Installation

Configuration - you will not have an ENV file as this has been ignored through Git. In order to run the App you will need to create a .env file with your own environment (ENV) variables.

To get started, clone the repo and then from your CLI, in the main application directory, run:

`bundle install`

`rails db:migrate`

Create an .env file in the root of the directory and add ENV variables :

`POSTGRES_PASSWORD=XXXX`

`STRIPE_PUBLISHABLE_KEY=XXXX`

`STRIPE_SECRET_KEY=XXXX`

`SEND_GRID_USER=XXXX`

`SEND_GRID_PASSWORD=XXXX`

---
## 3. User Stories

![User Stories](/readme_resources/user_stories.png)

[Link to User Stories](https://trello.com/b/Pb84o8vs/rent-my-car-user-stories-as-a-user-isbat)
---
## 4. Wireframes

![Wireframe4](/readme_resources/wireframe_4.jpg)

[Link to all wireframes](https://github.com/revelroestorf/rails_two_sided_marketplace_rent_my_car/tree/master/readme_resources)

---
## 5. User Flow Diagram

![User flow diagram](/readme_resources/user_flow_diagram.jpg)

[Link to User Flow Diagram](https://github.com/revelroestorf/rails_two_sided_marketplace_rent_my_car/blob/master/readme_resources/user_flow_diagram.jpg)

---
## 6. Entity Relationship Diagram

![ERD](/readme_resources/erd.png)

[Link to ERD](https://github.com/revelroestorf/rails_two_sided_marketplace_rent_my_car/blob/master/readme_resources/erd.png)

---
## 7. Gems and Tools

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
## 8. Project Plan

![Gantt Chart](/readme_resources/gantt_chart.png)

[Link to Gantt Chart](https://github.com/revelroestorf/rails_two_sided_marketplace_rent_my_car/blob/master/readme_resources/gantt_chart.png)

---
## 9. Design Decisions

DATABASE TABLES - I wanted to keep them and their relationships as simple as possible, without repeating data. The bookings table was the only exception where additional columns were added for pricing so that they could be stored with the booking and not subject to change with pricing updates.

###### Styling
DESIGN APPROACH - Primarily focused on functionality, I decided for the styling to produce something simple and potentially generic but with a professional feel. I choose Bootstrap to achieve these ends.

COLOURS - Following the design approach, I used mainly black, white and greys for the text, table borders, navbar and page backgrounds. I've used some colour (Orange and Bootstrap Info blue) in the 'How it works' section to bring the somewhat boring contents to life a bit.

All the 'back' buttons are dark grey and placed to the bottom left to avoid detracting from any content but also be easily found.

All proceed and submit buttons are Bootstrap Primary blue except for the 'Previous bookings' button (Info blue) and the 'Update' button (Bootstrap Warning yellow).

IMAGES - Following the design approach I've leaned heavily on powerful images to breath life into the very simply styled pages.

---
## 10. Assumptions

To ensure continual focus on the software development aspects of this 'real world' application, I've made many assumptions. Below are some of these:

* Agreement with a third party insurance provider for comprehensive cover on a per/km basis, at a fixed rate for all cars.
* Agreement with a third party roadside assist provider.
* We have the owner's bank details and can make payments in their account.
* We have the guest's credit card information and are authorised to charge the final booking fee, which depends on the number of kilometres travelled.
* Guests will record the condition of the car at pick-up and return, including odometer reading, fuel level and general mechanical condition.
* Owner's will enter the correct odometer readings, specifically to ensure guests are not overcharged.
---
## 11. Future Updates / Bug Fixes

* Currently car owners have the ability to activate/deactivate their individual cars, making them available/unavailable, bookings aside. They really should have a calendar they can use to manage their car's availability properly. For now I've left the ability to book your own car, which achieves the unavailability but is not reversible.

* Currently users have no way of contacting the company. I would implement a contact form with some subject categories, like 'owner claim', 'guest claim' and 'feedback', which would then route to our appropriate internal email addresses.

* I'd like to implement ratings and reviews, which I have some cool ideas about.

* Currently the only role is :admin which provides a full list view of the cars index, with ability to create, update and destroy. I would like to implement a more appropriate admin interface, perhaps using Active Admin.
---
## 12. Assignment Requirements

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
---
##### Code review

>Like what you did with the bookings controller, nice use of logic to reduce the number of views and forms. I'd suggest some more thorough validations to ensure the data is going into the database in the correct format. That would reduce the need for formatting in views and help sanitise user inputs a bit more.
>
> -- [Shaun Spinelli](https://github.com/ShaunSpinelli/)
