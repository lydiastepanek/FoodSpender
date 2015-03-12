LsFinalproject.Views.PostsIndex = Backbone.View.extend({
  template: JST['postindex'],

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
  }
})
