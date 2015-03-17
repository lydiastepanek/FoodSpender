LsFinalproject.Routers.PostRouter = Backbone.Router.extend({

  initialize: function(options) {
    this.$rootEl= options.$rootEl;
  },

  routes: {
    'posts': 'index',
    'posts/new': 'newPost',
    'posts/:id/edit': 'editPost',
    'posts/users/:id': 'userShow'
  },

  editPost: function (id) {
    var post = LsFinalproject.posts.getOrFetch(id)
    var newView = new LsFinalproject.Views.PostForm({collection: LsFinalproject.posts, model: post})
    this.switchView(newView)
  },

  newPost: function () {
    var post = new LsFinalproject.Models.Post;
    var newView = new LsFinalproject.Views.PostForm({collection: LsFinalproject.posts, model: post})
    this.switchView(newView)
  },

  index: function () {
    var indexView = new LsFinalproject.Views.PostsIndex({collection: LsFinalproject.posts})
    this.switchView(indexView)
  },

  userShow: function (id) {
    var user = LsFinalproject.users.getOrFetch(id)
    var showView = new LsFinalproject.Views.UserShow({model: user, collection: LsFinalproject.posts});
    this.switchView(showView)
  },

  switchView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.append(view.render().$el)
  }

})
