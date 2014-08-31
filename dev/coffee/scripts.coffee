this.$el = config.scope

$(document).ready () ->

	loadFeeds()




$(window).load () ->

	assembleFeeds()

	renderMain()

	renderFeed()