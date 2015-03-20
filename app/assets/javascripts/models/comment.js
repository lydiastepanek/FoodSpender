LsFinalproject.Models.Comment = Backbone.Model.extend({

  urlRoot: 'api/comments',

  toJSON: function () {
    return {
      comment: _.clone(this.attributes)
    };
  }

})
