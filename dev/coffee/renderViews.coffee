renderMain = () ->

	template = config.templates.main

	this.$el.append(template)




renderFeed = () ->

	template = config.templates.feed(feed)

	this.$el.find(".feed").append(template)