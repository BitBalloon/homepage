var _ = require("underscore");
var path = require("path");

var helper_utils = require("punch").Utils.Helper;
var blog_content_handler = require("punch-blog-content-handler");


var read_next_posts = [];


var fetch_content = function(basepath,callback) {

  read_next_posts = [];
  blog_content_handler.allPosts = {};

  blog_content_handler.getPosts('', function(err, posts_obj) {
    if (!err) {
      var recent_posts_list = posts_obj.posts.slice(0,3);

      var path_sections = basepath.split("/");
      if (path_sections[path_sections.length - 1] === "index") {
        path_sections.pop();
      }
      var current_path = path_sections.join("/").toLowerCase();
      var read_next_posts_list = recent_posts_list.filter(function(obj) {
          return (obj.permalink !== current_path);
      });

      var fetch_full_posts = function() {
        if (read_next_posts_list.length) {
          console.log("fetch " + read_next_posts_list );

          blog_content_handler.getPost(path.join(read_next_posts_list.shift().permalink, "index"), function(err, post_contents) {

            if (!err) {
              read_next_posts.push(post_contents);
            }

            return fetch_full_posts()

          });
        } else {
          return callback();
        }
      }

      return fetch_full_posts();

    } else {
      console.log(err);
      return callback();
    }
  });
};

var tag_helpers = {

  read_next_posts: function() {
    return read_next_posts;
  }

};


module.exports = {

  setup: function(config) {
  },

  directAccess: function(){
    return { "tag_helpers": tag_helpers };
  },

  get: function(basepath, file_extension, options, callback){
    var self = this;

    fetch_content(basepath, function() {
      return callback(null, {"tag": tag_helpers}, {});
    });
  }

};
