config =
	scope: $("article")
	feeds: [
		item = 
			title: "CBS"
			url: "http://www.cbssports.com/partners/feeds/rss/nfl_news"
		item =
			title: "NFL"
			url: "http://www.nfl.com/rss/rsslanding?searchString=home"
		item =
			title: "ESPN"
			url: "http://sports.espn.go.com/espn/rss/nfl/news"
		item =
			title: "KFL"
			url: "http://www.kffl.com/printRSS.php/NFL"
		item =
			title: "Rotoworld"
			url: "http://www.rotoworld.com/rss/feed.aspx?sport=nfl&ftype=news&count=12&format=rss"
	]
	templates:
		main: Handlebars.templates["main"]
		feed: Handlebars.templates["feed"]
		guide: Handlebars.templates["guide"]