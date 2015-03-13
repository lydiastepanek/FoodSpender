LsFinalproject.Routers.PostRouter = Backbone.Router.extend({

  initialize: function(options) {
    this.$rootEl= options.$rootEl;
  },

  routes: {
    '': 'index',
    'api/new': 'new'
  },

  new: function () {
    var post = new LsFinalproject.Models.Post;
    var indexView = new LsFinalproject.Views.NewPost({collection: LsFinalproject.posts, model: post})
    this.switchView(indexView)
  },

  index: function () {
    var indexView = new LsFinalproject.Views.PostsIndex({collection: LsFinalproject.posts})
    this.switchView(indexView)
  },

  switchView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.append(view.render().$el)
  }

})
