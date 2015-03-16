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
  }


})
