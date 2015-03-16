window.LsFinalproject = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    LsFinalproject.posts = new LsFinalproject.Collections.Posts();
    LsFinalproject.users = new LsFinalproject.Collections.Users();
    new LsFinalproject.Routers.PostRouter({$rootEl: $("#content")});
    Backbone.history.start()
  }
};
