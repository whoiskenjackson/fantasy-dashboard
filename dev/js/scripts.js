// Generated by CoffeeScript 1.7.1
(function() {
  var config, feedArray, getFeeds, newsFeed;

  config = {
    cbsFeed: "http://www.cbssports.com/partners/feeds/rss/nfl_news",
    nflFeed: "http://www.nfl.com/rss/rsslanding?searchString=home",
    rotoFeed: "http://www.rotoworld.com/rss/feed.aspx?sport=nfl&ftype=news&count=12&format=rss"
  };

  feedArray = [config.cbsFeed, config.nflFeed, config.rotoFeed];

  newsFeed = {
    feeds: []
  };

  getFeeds = function(feedArray) {
    var i, _i, _ref, _results;
    _results = [];
    for (i = _i = 0, _ref = feedArray.length; 0 <= _ref ? _i < _ref : _i > _ref; i = 0 <= _ref ? ++_i : --_i) {
      _results.push($.ajax({
        url: 'http://ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=10&callback=?&q=' + encodeURIComponent(feedArray[i]),
        dataType: 'json',
        success: function(data) {
          return newsFeed.feeds.push(data.responseData.feed);
        }
      }));
    }
    return _results;
  };

  $(document).ready(function() {
    return getFeeds(feedArray);
  });

  $(window).load(function() {
    return console.log(newsFeed);
  });

}).call(this);
