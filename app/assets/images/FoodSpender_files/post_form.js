(function() { this.JST || (this.JST = {}); this.JST["post_form"] = function(obj){var __p=[],print=function(){__p.push.apply(__p,arguments);};with(obj||{}){__p.push('<h1>New Post</h1>\n\n<form>\n\n  <label for="description">Description</label>\n  <input id="description" type="text" name="description" value="',  post.escape('description') ,'">\n\n  <br>\n  <label for="location">Location</label>\n  <input id="location" type="text" name="location" value="',  post.escape('location') ,'">\n\n  <br>\n\n  <label for="food_id">Food Type</label>\n  <select id="food_id" name="food_id">\n      ');  _.each(LsFinalproject.all_food_types, function(foodType) { ; __p.push('\n          <option value="',  foodType.id ,'">\n            ',  foodType.title ,'\n          </option>\n      ');  }) ; __p.push('\n  </select>\n\n  <br>\n  <label for="price">Price</label>\n  <input id="price" type="decimal" name="price"  value="',  post.escape('price') ,'" pattern="^\\\\$?(([1-9](\\\\d*|\\\\d{0,2}(,\\\\d{3})*))|0)(\\\\.\\\\d{1,2})?$">\n\n  <br>\n  <label for="score_id">Score</label>\n  <div id="score_id" class="rating">\n  <span data-id="5" class="score">☆</span><span data-id="4" class="score">☆</span><span data-id="3" class="score">☆</span><span data-id="2" class="score">☆</span><span data-id="1" class="score">☆</span>\n  </div>\n\n  <br>\n  <label for="qty">Quantity of meals provided</label>\n  <input id="qty" type="number"  value="',  post.escape('num_meals') ,'" name="num_meals">\n\n  <br>\n  <label for="input-picture-file">Picture</label>\n\t<input id="input-picture-file" type="file" name="picture">\n\n    <br>\n  <button>Submit</button>\n\n</form>\n');}return __p.join('');};
}).call(this);