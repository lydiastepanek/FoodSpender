# FoodSpender

[Heroku link][heroku]

[heroku]: https://foodspending.herokuapp.com/users/new

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

### Search Capability
pg-search enables the searching of posts, users, and comments
### Floating Form Page
CSS to allow user to write and edit post
### File upload
Used paperclip, figaro to allow users to upload images for their user account and also for posts

## Libraries Used

bcrypt
pg_search
kaminari
paperclip
figaro
font-awesome
capybara

## Bonus Features

### Trends Page
I want to make a separate tab away from posts that is uses data visualization to show changes in users food spending habits over time
