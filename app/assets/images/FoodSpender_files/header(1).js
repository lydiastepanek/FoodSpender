LsFinalproject.Views.Header = Backbone.View.extend({

  initialize: function(options){
    this.listenTo(LsFinalproject.currentUser, "signIn signOut", this.render);
    this.render();
  },

  events: {
    "click #sign-out-link": "signOut"
  },

  template: JST['shared/header'],

  render: function(){
    var html = this.template({ currentUser: LsFinalproject.currentUser });
    this.$el.html(html);
    return this;
  },

  signOut: function(event){
    LsFinalproject.currentUser.signOut();
  }

});
