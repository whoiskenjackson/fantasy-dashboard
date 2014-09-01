feed = 
	temporary: []
	feeds: []

k = 0
finished = false



feedLoaded = () ->

	console.log("========== Success ==========")

	k++

	if k == config.feeds.length

		finished = true



loadFeeds = () ->

	console.log("========== Load Feeds ==========")

	for i in [0...config.feeds.length]

		$.ajax
			url: 'http://ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=10&callback=?&q=' + encodeURIComponent(config.feeds[i].url)
			dataType: 'json'
			success: (data, status, request) ->

				feedLoaded()

				feed.temporary.push(data.responseData.feed);

				if finished

					console.log("========== Finished ==========")

					assembleFeeds()





assembleFeeds = () ->

	console.log("========== Assemble Feeds ==========")

	for i in [0...feed.temporary.length]
	
		parentCategory = feed.temporary[i].title

		for k in [0...feed.temporary[i].entries.length]

			feed.temporary[i].entries[k].parent = parentCategory
			feed.feeds.push(feed.temporary[i].entries[k])

	console.log(feed)

	renderFeed()

	setTimer(interval)

	renderBadges()




resetFeeds = () ->

	feed.temporary = []
	feed.feeds = []

	k = 0
	finished = false

	this.$el.find(".feed").empty()