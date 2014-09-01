$(document).on "click", "[data-menu]", (e) ->

	e.preventDefault()

	menu = $(this).data("menu")

	renderMenu(menu)




$(document).on "click", "[data-button='close']", (e) ->

	e.preventDefault()

	closeMenu()




$(document).on "click", "nav a[data-view]", (e) ->

	e.preventDefault()

	view = $(this).data("view")

	$("nav a[data-view]").removeClass("selected")

	$(this).addClass("selected")

	renderView(view)

	closeMenu()