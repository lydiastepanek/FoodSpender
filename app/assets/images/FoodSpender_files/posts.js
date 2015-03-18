LsFinalproject.Collections.Posts = Backbone.Collection.extend({

  url: 'api/posts',

  model: LsFinalproject.Models.Post,

  comparator: function(post) {
    return post.get('created_at');
  },

  getOrFetch: function(id) {
    var model = this.get(id);
    var collection = this;
    if (!model) {
      model = new LsFinalproject.Models.Post({id: id});
      model.fetch({
        success: function () {
          collection.add(model)
        }
      })
    } else {
      model.fetch()
    }
    return model;
  }

})
;
