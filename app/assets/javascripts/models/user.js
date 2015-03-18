LsFinalproject.Models.User = Backbone.Model.extend({

  urlRoot: 'api/users',

  allFriends: function () {
    if (!this._allFriends) {
      this._allFriends = new LsFinalproject.Collections.Friends([], {user: this})
    }
    return this._allFriends
  },


  parse: function (response) {
  if (response.all_friends) {
    this.allFriends().set(response.all_friends);
    delete response.all_friends;
  }
    return response
  },

  toJSON: function () {
    return {
      user: _.clone(this.attributes)
    };
  }

});


LsFinalproject.Models.CurrentUser = LsFinalproject.Models.User.extend({

  url: "/api/session",

  initialize: function(options){
    this.listenTo(this, "change", this.fireSessionEvent);
  },

  isSignedIn: function() {
    return !this.isNew()
  },

  signIn: function(options) {
    var model = this;
    var credentials = {
      "user[email]": options.email,
      "user[password]": options.password,
    }
    $.ajax({
      url: this.url,
      type: "POST",
      data: credentials,
      dataType: "json",
      success: function(data){
        model.set(data);
        options.success && options.success();
      },
      error: function(){
        options.error && options.error();
      }
    });
  },

  signOut: function(options){
    var model = this;
    $.ajax({
      url: this.url,
      type: 'DELETE',
      dataType: 'json',
      success: function(data){
        model.clear();
        options.success && options.success();
      }
    });
  },

  fireSessionEvent: function() {
    if (this.isSignedIn()){
      this.trigger("signIn");
    } else {
      this.trigger("signOut");
    }
  }

});
