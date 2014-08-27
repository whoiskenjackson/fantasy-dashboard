newsFeed = 
	feeds: []

loadFeeds = () ->

	for i in [0...config.feeds.length]
	
		$.ajax
			url: 'http://ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=10&callback=?&q=' + encodeURIComponent(config.feeds[i].url)
			dataType: 'json'
			success: (data) ->
				newsFeed.feeds.push(data.responseData.feed);