# Description:
#   Get LGTM images from shinchokudodesuka.tumblr.com
#
# Dependencies:
#   "tumblrbot": "0.1.0"
#
# Configuration:
#   None
#
# Commands:
#   hubot shinchoku - Get a randome image from shinchokudodesuka.tumblr.com
#
# Author:
#   silvers

tumblr = require 'tumblrbot'
blog = 'shinchokudodesuka.tumblr.com'

module.exports = (robot) ->
  robot.respond /sh?in(ch|ty)oku$/i, (msg) ->
    tumblr.photos(blog).random (post) ->
      msg.send post.photos[0].original_size.url
