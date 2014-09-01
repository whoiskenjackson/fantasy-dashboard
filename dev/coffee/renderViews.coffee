renderMain = () ->

	template = config.templates.main

	this.$el.append(template)




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

				console.log(res)

				item = this.$el.find("li[data-index="+i+"]")
				item.find("img").attr("src", "../images/"+res+"/logo-001.png")