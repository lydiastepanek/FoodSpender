LsFinalproject.Views.UserShow = Backbone.View.extend({
  template: JST['user_show'],

  events: {
    'click #add-friend': 'addFriend',
    'click #remove-friend': 'removeFriend'
  },

  initialize: function () {
    this.model.fetch();
    this.collection.fetch();
    this.listenTo(this.model, 'sync', this.render)
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

  addFriend: function(event) {
    var that = this;
    $.ajax({
      url: "api/friendships",
      type: "POST",
      data: {
        user_id: this.model.id
            },
      dataType: "json",
      success: function () {
        that.model.fetch()
      }
    });
  },

  removeFriend: function(event) {
    var that = this;
    $.ajax({
      url: "api/friendships",
      type: "DELETE",
      data: {
        user_id: this.model.id,
        friend_id: LsFinalproject.currentUser.id
            },
      dataType: "json",
      success: function () {
        that.model.fetch()
      }
    });
  }

})
