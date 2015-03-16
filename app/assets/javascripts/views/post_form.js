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
      this.model.set('rating',rating.get('score'))
    }
    // console.log(this.model.get('rating')) // using ratings
    // console.log(this.model.get('score_id')) // not using ratings

    var content = this.template({post: this.model});
    this.$el.html(content);
    return this;
  },

  createPost: function(event) {
    event.preventDefault();
    var rating = this.model.ratings().findWhere({user_id: this.model.get("owner_id")})
    $('#user_star').raty({
      score: this.model.get('rating'),
      path: '/assets',
      click: function(score, evt) {
        $.ajax({
          url: '/api/ratings/' + rating.id,
          type: 'PATCH',
          data: { score: score }
        });
      }
    });


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
