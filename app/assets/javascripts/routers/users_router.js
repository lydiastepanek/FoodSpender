LsFinalproject.Routers.Users = Backbone.Router.extend({

  initialize: function(options) {
    this.$rootEl = options.$rootEl;
    this.collection = new LsFinalproject.Collections.Users();
    this.collection.fetch();
  },

  routes: {
    "": "index",
    "users/new": "new",
    "users/:id": "show",
    "session/new": "signIn"
  },

  _goHome: function() {
    Backbone.history.navigate("", {trigger: true});
  },

  _requireSignedOut: function(callback) {
    if (LsFinalproject.currentUser.isSignedIn()) {
      callback = callback || this._goHome.bind(this);
      callback();
      return false;
    }
    return true;
  },

  signIn: function(callback) {
    if (!this._requireSignedOut(callback)) {return;}

    var signInView = new LsFinalproject.Views.SignIn({
      callback: callback
    });
    this._swapView(signInView)
  },

  _requireSignedIn: function(callback) {
    if (!LsFinalproject.currentUser.isSignedIn()) {
      callback = callback || this._goHome.bind(this);
      this.signIn(callback);
      return false;
    }
    return true;
  },

  index: function() {
    var callback = this.index.bind(this);
    if (!this._requireSignedIn(callback)) { return;}
    var indexView = new LsFinalproject.Views.UsersIndex({
      collection: this.collection
    });
    this._swapView(indexView)
  },

  new: function() {
    if (!this._requireSignedOut()) { return; }

    var model = new this.collection.model();
    var formView = new LsFinalproject.Views.UsersForm({
      collection: this.collection,
      model: model
    });
    this._swapView(formView);
  },

  show: function(id) {
    var callback = this.show.bind(this, id);
    if (!this._requireSignedIn(callback)) { return; }

    var model = this.collection.getOrFetch(id);
    var showView = new LsFinalproject.Views.UsersShow({
      model: model
    });
    this._swapView(showView);
  },

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }



})
