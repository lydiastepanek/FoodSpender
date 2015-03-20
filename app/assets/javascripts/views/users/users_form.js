LsFinalproject.Views.UsersForm = Backbone.View.extend({

  initialize: function(options){
    this.listenTo(this.model, "sync change", this.render);
  },

  template: JST['users/form'],

  events: {
    "submit form": "submit",
		"change #input-picture-file": "changePicture"
  },

  render: function(){
    var content = this.template({ user: this.model });
    this.$el.html(content);
    return this;
  },

  submit: function(event){
    event.preventDefault();

    var $form = $(event.currentTarget);
    var userData = $form.serializeJSON().user;
    var that = this;

    this.model.set(userData);
    this.model.save({}, {
      success: function(){
        LsFinalproject.currentUser.fetch();
        that.collection.add(that.model, { merge: true });
        Backbone.history.navigate("", { trigger: true });
      },
      error: function(data){
        alert("Form invalid. Let the user know what went wrong.");
      }
    });
  },

  changePicture: function(event) {
    event.preventDefault();
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
    event.preventDefault();
		this.$("#picture-preview").attr("src", src);
  }

});
