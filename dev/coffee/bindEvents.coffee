$(document).on "click", "[data-menu]", (e) ->

	e.preventDefault()

	menu = $(this).data("menu")

	renderMenu(menu)