LsFinalproject.Views.UserShow = Backbone.View.extend({
  template: JST['user_show'],

  initialize: function () {
    this.model.fetch();
    this.collection.fetch();
    this.listenTo(this.collection, 'sync', this.render)
  },

  render: function() {
    var showContent = this.template({user: this.model});
    this.$el.html(showContent);
    var userPosts = this.collection.where({owner_id: this.model.id});
    _.each(userPosts, function (post) {
      var itemContent = new LsFinalproject.Views.PostsIndexItem({model: post});
      this.$el.append(itemContent.render().$el);
    }.bind(this))
    return this;
  },

})
