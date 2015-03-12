window.LsFinalproject = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    alert('Hello from Backbone!');
    LsFinalproject.posts = new LsFinalproject.Collections.Posts();
    new LsFinalproject.Routers.PostRouter({$rootEl: $("#content")});
    Backbone.history.start()
  }
};

$(document).ready(function(){
  LsFinalproject.initialize();
});
