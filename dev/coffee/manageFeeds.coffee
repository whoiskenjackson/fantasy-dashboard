feed = 
	temporary: []
	feeds: []




loadFeeds = () ->

	for i in [0...config.feeds.length]
	
		$.ajax
			url: 'http://ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=10&callback=?&q=' + encodeURIComponent(config.feeds[i].url)
			dataType: 'json'
			success: (data) ->
				feed.temporary.push(data.responseData.feed);




assembleFeeds = () ->

	for i in [0...feed.temporary.length]
	
		parentCategory = feed.temporary[i].title

		for k in [0...feed.temporary[i].entries.length]

			feed.temporary[i].entries[k].parent = parentCategory
			feed.feeds.push(feed.temporary[i].entries[k])

	console.log(feed)