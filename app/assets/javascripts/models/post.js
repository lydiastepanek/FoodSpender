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

  ratings: function () {
    if (!this._ratings) {
      this._ratings = new LsFinalproject.Collections.Ratings([], {post: this})
    }
    return this._ratings
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
  if (response.ratings) {
    this.ratings().set(response.ratings);
    delete response.ratings;
  }
    return response
  },

  removeLike: function(like) {
    like.destroy();
  },

  addLike: function() {
    var like = new LsFinalproject.Models.Like({
      owner_id: LsFinalproject.current_user_id,
      post_id: this.id})
    like.save({}, {
      success: function () {
        this.set("like_of_current_user", like.id)
        this.likes().add(like)
      }.bind(this)
    })
  },

  removeComment: function(comment) {
    comment.destroy();
  },

  addComment: function(content) {
    var comment = new LsFinalproject.Models.Comment({
      owner_id: LsFinalproject.current_user_id,
      post_id: this.id,
      content: content
    });
    comment.save({}, {
      success: function () {
        this.comments().add(comment);
      }.bind(this)
    });
  }

})
