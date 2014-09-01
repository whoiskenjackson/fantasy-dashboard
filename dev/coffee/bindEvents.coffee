$(document).on "click", "[data-menu]", (e) ->

	e.preventDefault()

	menu = $(this).data("menu")

	renderMenu(menu)




$(document).on "click", "[data-button='close']", (e) ->

	e.preventDefault()

	closeMenu()