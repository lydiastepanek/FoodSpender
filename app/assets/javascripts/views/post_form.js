LsFinalproject.Views.PostForm = Backbone.View.extend({

  template: JST['post_form'],

  initialize: function () {
    this.listenTo(this.collection, 'sync', this.render)
  },

  events: {
    'submit': 'createPost',
    'click .score': 'saveScore',
		"change #input-picture-file": "changePicture",
    "click .modal-close": 'closeForm'
  },

  closeForm: function () {
    $("body").find(".modal").removeClass("is-open");
  },

  saveScore: function(event) {
    event.preventDefault();
    this.model.set('score_id', $(event.currentTarget).data("id"))
    var numStars = $(event.currentTarget).data("id");
    for (var i = numStars; i > 0; i--) {
      $(".rating").find('[data-id="' + i + '"] .fa').replaceWith('<i class="fa fa-star fa-fw"></i>')
    }
  },

  render: function() {
    var numStars = this.model.escape("score_id");
    var content = this.template({post: this.model, numStars: numStars});
    this.$el.html(content);
    return this;
  },

  createPost: function(event) {
    event.preventDefault();
    $(event.currentTarget).find("button").html("Submitting")
    $(event.currentTarget).find("button").prop("disabled", true)
    var attrs = $(".modal-form").serializeJSON();
    this.model.set(attrs)
    this.model.set('owner_id', LsFinalproject.currentUser.id)
    var that = this;
    this.model.save([], {
      success: function () {
        that.collection.add(that.model)
        Backbone.history.navigate('', {trigger: true})
      }
    })
  },

  changePicture: function (event) {
		var file = event.currentTarget.files[0];

		var fileReader = new FileReader();

		var that = this;
		fileReader.onloadend = function () {
			that.model.set("picture", fileReader.result);
			that.previewPic(fileReader.result);
		};

		fileReader.readAsDataURL(file);
	},

	previewPic: function (src) {
		this.$("#picture-preview").attr("src", src);
	}

})
