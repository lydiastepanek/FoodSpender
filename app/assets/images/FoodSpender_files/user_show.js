(function() { this.JST || (this.JST = {}); this.JST["user_show"] = function(obj){var __p=[],print=function(){__p.push.apply(__p,arguments);};with(obj||{}){__p.push('<h1>',  user.escape('first_name') ,' Posts</h1>\n\n<h2>Menu</h2>\n<ul>\n\n  <li>\n    <a href="',  '' ,'">Newsfeed</a>\n  </li>\n\n  <li>\n    <a href="',  '#' ,'">Trends</a>\n  </li>\n\n  <li>\n  Friends<br>\n  ',  user.escape('all_friends') ,'<br>\n\n    <ul>\n\n    ');  user.allFriends().each( function(friend) { ; __p.push('\n        <li>\n          <a href="#users/', friend.id,'">',  friend.get("first_name") + ' ' + friend.get("last_name") ,'</a>\n          <img src="',  friend.escape('picture_url') ,'"/>\n        </li>\n    ');  }) ; __p.push('\n\n    </ul>\n  </li>\n\n</ul>\n');}return __p.join('');};
}).call(this);