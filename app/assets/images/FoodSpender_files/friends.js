LsFinalproject.Collections.Friends = Backbone.Collection.extend({

  url: 'api/friends',

  model: LsFinalproject.Models.Friend,

  initialize: function(options) {
    this.user = options.user
  },

})
;
