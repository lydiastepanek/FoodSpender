LsFinalproject.Views.PostForm = Backbone.View.extend({

  tagName: 'form',

  template: JST['post_form'],

  initialize: function () {
    this.listenTo(this.collection, 'sync', this.render)
  },

  events: {
    'submit': 'createPost'
  },

  render: function() {
    if (this.model.ratings().first()) {
      var rating = this.model.ratings().findWhere({user_id: this.model.get("owner_id")});
      console.log(rating.get('score'))
    }

    var content = this.template({post: this.model});
    this.$el.html(content);
    return this;
  },

  createPost: function(event) {
    event.preventDefault();
    var attrs = this.$el.serializeJSON();
    this.model.set(attrs)
    this.model.set('owner_id', LsFinalproject.current_user_id)
    var that = this;
    this.model.save([], {
      success: function () {
        that.collection.add(that.model)
        Backbone.history.navigate('', {trigger: true})
      }
    })
  }

})
