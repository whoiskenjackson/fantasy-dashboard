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
				item.find("img").attr("src", "images/"+res+"/logo-001.png")




renderMenu = (menu) ->

	$("header").addClass("open")

	$("header").attr("data-view", menu)




closeMenu = (menu) ->

	$("header").removeClass("open")

	$("header").removeAttr("data-view")




changeFeedStyle = (view) ->

	this.$el.find(".feed").attr("data-style", ""+view+"")




renderView = (view) ->

	this.$el.find("[data-view]").removeClass("show")

	this.$el.find("[data-view='"+view+"']").addClass("show")

	$("header").removeAttr("data-view")

	$(".modal").removeClass("open")




renderModal = (index, badge) ->

	$modal = this.$el.find(".modal")

	$modal.addClass("open")

	article = feed.feeds[index]

	template = config.templates.article(article)

	$modal.find(".content").empty()

	$modal.find(".content").append(template)

	$modal.find("img").attr("src", badge)




closeModal = () ->

	$(".modal").removeClass("open")