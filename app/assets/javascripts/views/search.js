LsFinalproject.Views.Search = Backbone.View.extend({

	initialize: function () {
		// this.bindScroll(); // for infinite scroll
		this.searchResults = new LsFinalproject.Collections.SearchResults();
		this.searchResults.pageNum = 1;
		this.listenTo(this.searchResults, "sync", this.render);
	},

  events: {
		"change .query": "search",
    "submit .query-form": "search",
		"click .next-page": "nextPage",
		"click .prev-page": "prevPage"
	},

	template: JST.search,

  render: function () {
    // console.log(this.searchResults.first())
		var content = this.template({
			results: this.searchResults
		});
		this.$el.find(".search-results").html(content);

		return this;
	},

  search: function (event) {
		event.preventDefault();
    // console.log(this.$el.find(".query").val())
		this.searchResults.pageNum = 1;
		this.searchResults.query = this.$el.find(".query").val();

		this.searchResults.fetch({
			data: {
				query: this.searchResults.query,
				page: 1
			}
      , success: function () {
        // console.log(this.searchResults)
      }
		});
	},

  bindScroll: function () {
		$(window).on("scroll", this.handleScroll.bind(this));
	},

	handleScroll: function (event) {
		var $doc = $(document);
		var scrolledDist = $doc.height() - window.innerHeight - $doc.scrollTop();

		if (scrolledDist < 300) {
			this.nextPageInfiniteScroll();
		}
	},

	nextPage: function (event) {
		this.searchResults.fetch({
			data: {
				query: this.searchResults.query,
				page: this.searchResults.pageNum + 1
			},
			success: function () {
				this.searchResults.pageNum = this.searchResults.pageNum + 1;
			}.bind(this)
		});
	},

  prevPage: function (event) {
    this.searchResults.fetch({
      data: {
        query: this.searchResults.query,
        page: this.searchResults.pageNum - 1
      },
      success: function () {
        this.searchResults.pageNum = this.searchResults.pageNum - 1;
      }.bind(this)
    });
  }

})
