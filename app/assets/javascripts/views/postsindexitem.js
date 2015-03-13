LsFinalproject.Views.PostsIndexItem = Backbone.View.extend({
  template: JST['postitem'],

  events: {
    'click #like-button': 'likePost',
    'click #unlike-button': 'unlikePost',
    'click #comment-button': 'commentPost',
    'click #uncomment-button': 'uncommentPost'
  },

  initialize: function () {
    this.listenTo(this.model.likes(), 'add remove', this.render);
    this.listenTo(this.model.comments(), 'remove', this.render);
  },

  render: function() {
    var itemContent = this.template({post: this.model});
    this.$el.html(itemContent);
    return this;
  },

  likePost: function(event) {
    this.model.addLike()
  },

  unlikePost: function(event) {
    var like_id = $(event.currentTarget).data("id")
    var like = this.model.likes().get(like_id)
    this.model.removeLike(like)
  },

  uncommentPost: function(event) {
    var comment_id = $(event.currentTarget).data("id")
    var comment = this.model.comments().get(comment_id)
    this.model.removeComment(comment)
  },

  commentPost: function() {
    var commentContent = new LsFinalproject.Views.PostsIndexNewComment({model: this.model, parent_view: this});
    this.$el.append(commentContent.render().$el);
  },

})
