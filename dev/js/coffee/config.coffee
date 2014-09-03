config =
	scope: $("article")
	headlines: [
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
			title: "KFFL - Breaking News"
			url: "http://www.kffl.com/printRSS.php/NFL"
		item =
			title: "KFFL - General News"
			url: "http://www.kffl.com/printRSS.php/NFL-NFL"
		item =
			title: "Rotoworld"
			url: "http://www.rotoworld.com/rss/feed.aspx?sport=nfl&ftype=news&count=12&format=rss"
		#item =
			#title: "Google"
			#url: "http://news.google.com/news/feeds?pz=1&cf=all&ned=us&hl=en&q=National+Football+League&output=rss"
	]
	templates:
		main: Handlebars.templates["main"]
		feed: Handlebars.templates["feed"]
		article: Handlebars.templates["article"]
		guide: Handlebars.templates["guide"]