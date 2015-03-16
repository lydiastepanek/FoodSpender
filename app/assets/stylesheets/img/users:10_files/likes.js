LsFinalproject.Collections.Likes = Backbone.Collection.extend({

  url: 'api/likes',

  model: LsFinalproject.Models.Like,

  initialize: function(options) {
    this.post = options.post
  },


  // getOrFetch: function(id) {
  //   var model = this.get(id);
  //   if (!model) {
  //     model = new LsFinalproject.Models.Like;
  //     model.save({id: id}, {
  //       success: function () {
  //         this.add(model)
  //       }
  //     })
  //   } else {
  //     model.fetch()
  //   }
  //   return model;
  // }

})
;
