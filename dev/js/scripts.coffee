config =
	cbsFeed: "http://www.cbssports.com/partners/feeds/rss/nfl_news";
	nflFeed: "http://www.nfl.com/rss/rsslanding?searchString=home";
	rotoFeed: "http://www.rotoworld.com/rss/feed.aspx?sport=nfl&ftype=news&count=12&format=rss";

feedArray = [config.cbsFeed, config.nflFeed, config.rotoFeed]

newsFeed = 
	feeds: []

getFeeds = (feedArray) ->

	for i in [0...feedArray.length]
	
		$.ajax
			url: 'http://ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=10&callback=?&q=' + encodeURIComponent(feedArray[i])
			dataType: 'json'
			success: (data) ->
				newsFeed.feeds.push(data.responseData.feed);

		


$(document).ready () ->

	getFeeds(feedArray)



$(window).load () ->

	console.log(newsFeed)