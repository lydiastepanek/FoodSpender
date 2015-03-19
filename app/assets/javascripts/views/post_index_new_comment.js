LsFinalproject.Views.PostsIndexNewComment = Backbone.View.extend({

  tagName: 'li',

  template: JST['new_comment'],

  events: {
    'submit': 'addComment'
  },

  render: function() {
    this.$el.html(this.template);
    return this;
  },

  addComment: function(event) {
    event.preventDefault()
    var content = $(event.currentTarget).find("textarea").val()
    this.model.addComment(content)
  }

})
