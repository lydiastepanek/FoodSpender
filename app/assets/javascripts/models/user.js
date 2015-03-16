LsFinalproject.Models.User = Backbone.Model.extend({

  urlRoot: 'api/users',

  // friends: function () {
  //   if (!this._friends) {
  //     this._friends = {} // new LsFinalproject.Collections.Friends([], {user: this})
  //   }
  //   return this._friends
  // },
  //
  // inverseFriends: function () {
  //   if (!this._inverseFriends) {
  //     this._inverseFriends = {} // new LsFinalproject.Collections.Friends([], {user: this})
  //   }
  //   return this._inverseFriends
  // },
  //
  // parse: function (response) {
  //   console.log(response)
  // if (response.friends) {
  //   this.friends().set(response.friends);
  //   delete response.friends;
  // }
  // if (response.inverse_friends) {
  //   this.inverseFriends().set(response.inverse_friends);
  //   delete response.inverse_friends;
  // }
  //   return response
  // },


})
