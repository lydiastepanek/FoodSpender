# FoodSpender

[Heroku link][heroku]

[heroku]: https://foodspender.herokuapp.com/users/new

## About
FoodSpender is a web app that tracks food and grocery spending and allows users to follow and comment on their friend’s discovered deals (inspired by MyFitnessPal). It is built on Rails and Backbone. Users can:

- [x] Create accounts
- [x] Create sessions (log in)
- [x] Post to profile wall (public and private)
- [x] Attach photos to posts
- [x] View posts (and friends' posts) on newsfeed
- [x] Comment on friends' food purchase posts
- [x] Like friends' food purchase posts
- [x] Add friends
- [x] View a feed of friend
- [x] Search for purchases by food type

## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Interesting Features

Search Capability

* pg-search multisearch enables the searching of posts, users, and comments all simultaneously using the upper right search bar

File upload

* Paperclip, Amazon Simple Storage Service (S3), and figaro were used to allow users to upload images for their user account and also for posts

Floating Form Page

* Advanced CSS allows user to write and edit a post while the Postsfeed is still visible

bcrypt

* User passwords stored securely

TDD

* RSpec and factory_girl tests written prior to Rails backend being built to make sure user authentication protected private information properly

Font Awesome

* Used to create 5 star rating

## Libraries Used

* bcrypt
* pg_search
* kaminari
* paperclip
* figaro
* font-awesome
* capybara

## Bonus Features

Trends Page

* Data visualization to show changes in users food spending habits over time
