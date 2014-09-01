interval = null
timer = null

clearTimer = () ->

	clearTimeout(timer)




setTimer = (interval, timer) ->

	interval = if interval then interval else this.$el.find(".feed").data("interval")

	timer = setTimeout ->
		
		clearTimer()

		resetFeeds()

		loadFeeds()

	, interval