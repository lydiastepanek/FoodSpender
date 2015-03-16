LsFinalproject.Views.PostsIndex = Backbone.View.extend({
  template: JST['post_index'],

  initialize: function () {
    this.collection.fetch();
    this.listenTo(this.collection, 'sync remove', this.render)
  },

  render: function() {
    var content = this.template({posts: this.collection});
    this.$el.html(content);
    this.collection.each(function (post) {
      var itemContent = new LsFinalproject.Views.PostsIndexItem({model: post});
      this.$el.append(itemContent.render().$el);
    }.bind(this))
    return this;
  }

})
