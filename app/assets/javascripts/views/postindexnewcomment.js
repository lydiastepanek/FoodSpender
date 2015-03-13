LsFinalproject.Views.PostsIndexNewComment = Backbone.View.extend({

  tagName: 'form',

  template: JST['newcomment'],

  initilize: function(options) {
    this.parent_view = options.parent_view
    this.listenTo(this.model.comments(), 'add', this.parent_view.render());
  },

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
