LsFinalproject.Collections.Comments = Backbone.Collection.extend({

  url: 'api/comments',

  model: LsFinalproject.Models.Comment,

  initialize: function(options) {
    this.post = options.post
  }

})
;
