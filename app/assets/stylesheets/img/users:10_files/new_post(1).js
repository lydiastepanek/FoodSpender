LsFinalproject.Views.NewPost = Backbone.View.extend({

  tagName: 'form',

  template: JST['new_post'],

  events: {
    'submit': 'createPost'
  },

  render: function() {
    var content = this.template({post: this.model});
    this.$el.html(content);
    return this;
  },

  createPost: function(event) {
    event.preventDefault
    var attrs = this.$el.serializeJSON();
    this.model.set(attrs)
    this.model.set('owner_id', LsFinalproject.currentUser.id)
    var that = this;
    this.model.save([], {
      success: function () {
        that.collection.add(that.model)
        Backbone.history.navigate('', {trigger: true})
      }
    })
  }

})
;
