LsFinalproject.Views.NewPost = Backbone.View.extend({

  tagName: 'form',

  template: JST['newpost'],

  events: {
    'submit': 'createPost'
  },

  render: function() {
    var content = this.template({post: this.model});
    this.$el.html(content);
    return this;
  },

  createPost: function(event) {
    var attrs = this.$el.serializeJSON();
    this.model.set(attrs)
    this.model.set('owner_id', LsFinalproject.current_user_id)
    console.log(this.model)
    var that = this;
    // (:score_id, :food_id, :price, :description)
    this.model.save([], {
      success: function () {
        that.collection.add(that.model)
        Backbone.history.navigate('', {trigger: true})
      }
    })
  }

})
