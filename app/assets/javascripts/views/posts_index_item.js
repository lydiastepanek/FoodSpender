LsFinalproject.Views.PostsIndexItem = Backbone.View.extend({
  template: JST['post_item'],

  events: {
    'click #like-button': 'likePost',
    'click #unlike-button': 'unlikePost',
    'click #comment-button': 'commentPost',
    'click #uncomment-button': 'uncommentPost',
    'click #delete-post': 'deletePost'
  },

  deletePost: function () {
    this.model.destroy()
  },

  initialize: function () {
    this.listenTo(this.model.likes(), 'remove add', this.render);
    this.listenTo(this.model.comments(), 'remove add', this.render);
  },

  render: function() {
    var itemContent = this.template({post: this.model});
    this.$el.html(itemContent);
    return this;
  },

  likePost: function(event) {
    this.model.set("is_liked_by_current_user", true)
    this.model.addLike()
  },

  unlikePost: function(event) {
    var like_id = $(event.currentTarget).data("id")
    if (!like_id) {
      var like = this.model.likes().pop()
    } else {
      var like = this.model.likes().get(like_id)
    }
    this.model.set("is_liked_by_current_user", false)
    this.model.removeLike(like)
  },

  uncommentPost: function(event) {
    var comment_id = $(event.currentTarget).data("id")
    var comment = this.model.comments().get(comment_id)
    this.model.removeComment(comment)
  },

  commentPost: function() {
    var commentContent = new LsFinalproject.Views.PostsIndexNewComment({model: this.model});
    this.$el.append(commentContent.render().$el);
  },

})
