window.LsFinalproject = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    LsFinalproject.currentUser = new LsFinalproject.Models.CurrentUser();
    this.currentUser.fetch();

    LsFinalproject.posts = new LsFinalproject.Collections.Posts();
    LsFinalproject.users = new LsFinalproject.Collections.Users();
    new LsFinalproject.Routers.PostRouter({$rootEl: $(".content")});
    Backbone.history.start()
  }
};
