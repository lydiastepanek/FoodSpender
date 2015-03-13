LsFinalproject.Views.PostsIndex = Backbone.View.extend({
  template: JST['postindex'],

  events: {
    'click #like-button': 'likePost',
    'click #unlike-button': 'unlikePost',
    'click #comment-button': 'commentPost',
    'click #uncomment-button': 'uncommentPost'
  },

  initialize: function () {
    this.collection.fetch();
    this.listenTo(this.collection, 'sync', this.render);
  },

  render: function() {
    var content = this.template({posts: this.collection});
    this.$el.html(content);
    this.collection.each(function (post) {
      this.postTemplate = JST['postitem'];
      var itemContent = this.postTemplate({post: post});
      this.$el.append(itemContent);
    }.bind(this))
    return this;
  },

  likePost: function(event) {
    console.log("likePost")
  },

  unlikePost: function(event) {
    var like_id = $(event.currentTarget).data("id")
    var like = new LsFinalproject.Models.Like({id: like_id})
    console.log(like.id)
    like.fetch({
      success: function () {
        console.log(post)
      }
    })
  },

  commentPost: function(event) {
    console.log("commentPost")
  },

  uncommentPost: function(event) {
    console.log("uncommentPost")
  },

})
