LsFinalproject.Routers.PostRouter = Backbone.Router.extend({

  initialize: function(options) {
    this.$rootEl= options.$rootEl;
  },

  routes: {
    '': 'index'
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
