LsFinalproject.Collections.SearchResults = Backbone.Collection.extend({

	url: "api/search",

	parse: function (resp) {
		if (resp.total_count) {
			this.total_count = resp.total_count;
		}

		return resp.results;
	},

	model: function (attrs) {
		var type = attrs._type;
		delete attrs._type;

		return new LsFinalproject.Models[type](attrs);

		// if (type === "User") {
		// 	return new LsFinalproject.Models.User(attrs);
		// } else if (type === "Post") {
		// 	return new LsFinalproject.Models.Post(attrs);
		// }
	}

});
