# Cinophile
> An application that allows users to view movie details, read comments from other users about a specific movie and add comments of their own.  Users can create named watchlists and add movies to their watchlists.

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Status](#status)
* [Inspiration](#inspiration)
* [Contact](#contact)

## General info
This application was built as my Ruby on Rails project for Flatiron School.

## Technologies
* Ruby on Rails
* Ruby OmniAuth gems for user authentication via Facebook and Google

## Setup

### Clone the Repository
```
git clone git@github.com:swellpf/cinophile.git
cd cinophile
```
### Check your Ruby Version
```
ruby -v
```
Cinophile was developed using Ruby v2.6.1 and Rails v5.2.5.  Update your Ruby installation as necessary.

### Install dependencies
```
bundle
```

### Initialize the database
```
rails db:create db:migrate db:seed
```
### Start Rails server
```
rails s
```
And now you can visit the site with the URL http://localhost:3000

## Features
List of features ready and TODOs for future development
* Users can manually create an account in the app or use Facebook or Google authentication
* View list of movies and filter by genre and/or "new releases"
* View movie details and comments from other users
* Add their own comments about a movie
* Create an unlimited number of named watchlists
* Users can add movies to any of their watchlists

To-do list:
* Provide the ability for users to remove movies from a watchlist (most likely after watching the movie!)
* Add a "4-star" rating system for users to grade a movie and list the average cumulative rating
* Additional filters (such as most commented, highest rating, most watchlisted)

## Status
Project is: Completed as of 4/9/2021.

## Inspiration
This application is my class project for Flatiron School to demonstrate my proficiency developing in Ruby on Rails.

## Contact
Created by Paul Cinoman. You can contact me by email at [swellpf@gmail.com](mailto:swellpf@gmail.com). Check out my [Blog](http://www.pconthepc.com) - feel free to contact me!

