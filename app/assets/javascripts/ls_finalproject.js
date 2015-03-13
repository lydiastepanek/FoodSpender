window.LsFinalproject = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    LsFinalproject.posts = new LsFinalproject.Collections.Posts();
    new LsFinalproject.Routers.PostRouter({$rootEl: $("#content")});
    Backbone.history.start()
  }
};
