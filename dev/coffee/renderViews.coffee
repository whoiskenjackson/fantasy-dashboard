renderMain = () ->

	template = config.templates.main

	this.$el.append(template)




renderGuide = () ->

	template = config.templates.guide(teamList)

	this.$el.find(".guide").append(template)




renderFeed = () ->

	template = config.templates.feed(feed)

	this.$el.find(".feed").append(template)




renderBadges = () ->

	console.log("========== Render Badges ==========")

	for i in [0...feed.feeds.length]

		str = feed.feeds[i].content

		for k in [0...teamList.teams.length]

			res = str.match(teamList.teams[k].shortname)

			if res

				res = res[0].toLowerCase()

				item = this.$el.find(".feed li[data-index="+i+"]")
				item.find("img").attr("src", "../images/"+res+"/logo-001.png")




renderMenu = (menu) ->

	$("header").addClass("open")

	$("header").attr("data-nav", menu)




closeMenu = (menu) ->

	$("header").removeClass("open")