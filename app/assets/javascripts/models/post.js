LsFinalproject.Models.Post = Backbone.Model.extend({

  urlRoot: 'api/posts',

  likes: function () {
    if (!this._likes) {
      this._likes = new LsFinalproject.Collections.Likes([], {post: this})
    }
    return this._likes
  },

  comments: function () {
    if (!this._comments) {
      this._comments = new LsFinalproject.Collections.Comments({post: this})
    }
    return this._comments
  },

  parse: function (response) {
  if (response.likes) {
    this.likes().set(response.likes);
    delete response.likes;
  }
  if (response.comments) {
    this.comments().set(response.comments);
    delete response.comments;
  }
    return response
  }

})
