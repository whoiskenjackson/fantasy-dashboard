// Generated by CoffeeScript 1.7.1
this.$el = config.scope;

$(document).ready(function() {
  return loadFeeds();
});

$(window).load(function() {
  assembleFeeds();
  renderMain();
  return renderFeed();
});
