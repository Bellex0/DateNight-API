# Date Night

### [App](http://datenight.surge.sh)
### [Demo](https://youtu.be/RtuMEX19Wo0)

A lifestyle app that helps users decide whether they should cook at home or go out to eat. Users can find recipes based on ingredients they already own, search for places to eat, and maintain a meal schedule.

Upon logging on/signing up, users are prompted to the main page


![main page](https://live.staticflickr.com/65535/49347708313_4d0bea6713_k.jpg/200x150) 

Users can choose:
 * **Eat In**
     * Enter ingredients they already have at home.  App generates recipes based on those ingredients.
      * View recipe details including prep & cook time and instructions
    * Add recipe to "Favorite Recipes" and "Events"
* **Go Out**
  * Search for restaurants based by specific keywords, category, and/or location
  * View each restaurant's info including Google Map location, Yelp page, price, rating. Restaurants are sorted by distance.  
  * Add restaurant to "Favorite Places" and "Events"
* **Favorite Recipes**
  * View all favorite recipes & details for each recipe
  * Delete recipe from favorites list
* **Favorite Places**
  * View all favorite places & details for each place
  * Delete restaurant from favorites list
* **Events**
  * Serves as a  schedule for users to organize what recipe they will cook or what restaurant they will go to for the upcoming days  
  * Update date & time for each event
  * Delete event from list
* **Profile**
  * View account information & avatar
  * Delete account

## Frontend Repository
[Date Night Frontend](https://github.com/Bellex0/DateNight_Frontend)

## Ruby Version
ruby '2.6.1'

## Rails Version
rails '~> 6.0.1'

## Database
postgreSQL

pg, '>= 0.18', '< 2.0'

## Gem Dependencies
* bcrypt '~> 3.1.7'
* active_model_serializers '~> 0.10.0'
* rack-cors
* jwt '~> 2.1'
* cloudinary
 
## Installation
1) Fork (optional) and clone or download this repository to local system
2) Use preferred text editor and/or terminal to navigate into `DateNight-API` directory
3) Run `bundle install` (or `bundle i`) in terminal
4) Run `rails db:create` in terminal to create database
5) Run `rails db:migrate` in terminal to initialize database
6) Run `rails db:seed` in terminal to seed database with starter data
7) Run `rails s` in terminal to run server in browser at http://localhost:3000/
8) Install and run [Date Night Frontend](https://github.com/Bellex0/DateNight_Frontend)
