LsFinalproject.Views.PostsIndex = Backbone.View.extend({
  template: JST['postindex'],

  initialize: function () {
    this.collection.fetch();
    this.listenTo(this.collection, 'sync', this.render)
  },

  render: function() {
    // var json = JSON.parse(LsFinalproject.current_user_friends)
    // console.log(json.first()['email'])
    _.each(LsFinalproject.current_user_friends, function(friend) {
      _.each(friend, function(f) {
        console.log(f.first_name)
      })
    })
    var content = this.template({posts: this.collection});
    this.$el.html(content);
    this.collection.each(function (post) {
      var itemContent = new LsFinalproject.Views.PostsIndexItem({model: post});
      this.$el.append(itemContent.render().$el);
    }.bind(this))
    return this;
  }

})
