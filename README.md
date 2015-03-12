# FoodSpender

[Heroku link][heroku]

[heroku]: https://foodspending.herokuapp.com/users/new

## Minimum Viable Product
FoodSpender is a clone of myfitnesspal built on Rails and Backbone, used to track spending on food rather than exercise and weight. Users can:

- [x] Create accounts
- [x] Create sessions (log in)
- [ ] Post to profile wall (public and private)
- [ ] Attach photos to posts
- [ ] View posts (and friends' posts) on newsfeed
- [ ] Comment on friends' food purchase posts
- [ ] Like friends' food purchase posts
- [ ] Add friends
- [ ] View a feed of friend
- [ ] Search for purchases by food type

## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication, Blog Creation (~1 day)
I will implement user authentication in Rails based on the practices learned at App Academy. By the end of this phase, users will be able to create blogs using a simple text form in a Rails view. The most important part of this phase will be pushing the app to Heroku and ensuring that everything works before moving on to phase 2.

[Details][phase-one]

### Phase 2: Viewing Blogs and Posts (~2 days)
I will add API routes to serve post data as JSON, then add Backbone models and collections that fetch data from those routes. By the end of this phase, users will be able to create blogs and view both "Recent Activity" blogs and posts, all inside a single Backbone app.

[Details][phase-two]

### Phase 3: Editing and Displaying Posts (~2 days)
I plan to use third-party libraries to add functionality to the `PostForm` and `PostShow` views in this phase. I also plan to integrate Paperclip for file upload so users can add images to blog posts. I also want to make the post creation form have other JQuery UI features.

### Phase 4: Design (~2 Days)
I want to make it visually appealing using CSS. I would like to add seed data of instagram photos for some of the posts.

### Phase 5: Add Trends Page
I want to make a separate tab away from posts that is more data visualization. I want to find and use a gem that creates cool data visualization.

[Details][phase-three]

### Bonus Features (TBD)
- [ ] View trends in food spending over time/by category
