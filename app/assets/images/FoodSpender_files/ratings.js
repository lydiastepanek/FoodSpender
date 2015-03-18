LsFinalproject.Collections.Ratings = Backbone.Collection.extend({

  url: 'api/ratings',

  model: LsFinalproject.Models.Rating,

  initialize: function(options) {
    this.post = options.post
  },

})
;
