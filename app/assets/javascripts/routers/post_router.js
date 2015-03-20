LsFinalproject.Routers.PostRouter = Backbone.Router.extend({

  initialize: function(options) {
    this.$rootEl= options.$rootEl;
  },

  routes: {
    '': 'index',
    'posts/users/:id': 'userShow',
    'search': 'search'
  },

  search: function () {
    var searchView = new LsFinalproject.Views.Search({el: $(".header")})
    this.switchView(searchView)
  },

  index: function () {
    var indexView = new LsFinalproject.Views.PostsIndex({collection: LsFinalproject.posts, users: LsFinalproject.users})
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
