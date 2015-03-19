LsFinalproject.Views.PostsIndex = Backbone.View.extend({
  template: JST['post_index'],

  events: {
    'click #write-post': 'postForm'
  },

  postForm: function() {
    event.preventDefault();
    var post = new LsFinalproject.Models.Post;
    var newView = new LsFinalproject.Views.PostForm({collection: LsFinalproject.posts, model: post})
    console.log(newView.render().$el)
    $("body").append(newView.render().$el)
    $("body").find(".modal").addClass("is-open");
  },

  initialize: function (options) {
    this.users = options.users;
    this.users.fetch();
    this.collection.fetch();
    this.listenTo(this.collection, 'sync remove', this.render)
    this.listenTo(this.users, 'sync', this.render)
  },

  render: function() {

    var content = this.template({posts: this.collection, users: this.users});
    this.$el.html(content);

    this.collection.each(function (post) {
      var itemContent = new LsFinalproject.Views.PostsIndexItem({model: post});
      this.$el.find(".content-main").append(itemContent.render().$el);
    }.bind(this))
    return this;
  }

})
