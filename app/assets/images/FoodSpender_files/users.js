LsFinalproject.Collections.Users = Backbone.Collection.extend({

  url: 'api/users',

  model: LsFinalproject.Models.User,

  getOrFetch: function(id) {
    var model = this.get(id);
    var collection = this;
    if (!model) {
      model = new LsFinalproject.Models.User({id: id});
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
