LsFinalproject.Routers.PostRouter = Backbone.Router.extend({

  initialize: function(options) {
    this.$rootEl= options.$rootEl;
  },

  routes: {
    '': 'index',
    'api/new': 'newPost',
    'users/:id': 'userShow'
  },

  newPost: function () {
    var post = new LsFinalproject.Models.Post;
    var newView = new LsFinalproject.Views.NewPost({collection: LsFinalproject.posts, model: post})
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
;
