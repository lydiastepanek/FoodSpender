LsFinalproject.Views.PostsIndexItem = Backbone.View.extend({
  template: JST['postitem'],

  events: {
    'click #like-button': 'likePost',
    'click #unlike-button': 'unlikePost',
    'click #comment-button': 'commentPost',
    'click #uncomment-button': 'uncommentPost'
  },

  initialize: function () {
    this.model.fetch();
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function() {
    var itemContent = this.template({post: this.model});
    this.$el.append(itemContent);
    return this;
  },

  likePost: function(event) {
    console.log("likePost")
  },

  unlikePost: function(event) {
    console.log($(event.currentTarget).data("id"))
    var like_id = $(event.currentTarget).data("id")
    // var like = new LsFinalproject.Models.Like({id: like_id})
    // debugger
    // console.log(like.id)
    // like.fetch({
    //   success: function () {
    //     console.log(post)
    //   }
    // })
  },

  commentPost: function(event) {
    console.log("commentPost")
  },

  uncommentPost: function(event) {
    console.log("uncommentPost")
  },

})
