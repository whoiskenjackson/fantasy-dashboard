$(document).on "click", "[data-menu]", (e) ->

	e.preventDefault()

	menu = $(this).data("menu")

	renderMenu(menu)




$(document).on "click", ".navbar [data-view]", (e) ->

	e.preventDefault()

	view = $(this).data("view")

	changeFeedStyle(view)




$(document).on "click", "header [data-button='close']", (e) ->

	e.preventDefault()

	closeMenu()




$(document).on "click", "nav a[data-view]", (e) ->

	e.preventDefault()

	view = $(this).data("view")

	$("nav a[data-view]").removeClass("selected")

	$(this).addClass("selected")

	renderView(view)

	closeMenu()




$(document).on "click", ".feed li", (e) ->

	e.preventDefault()

	index = $(this).data("index")

	renderModal(index)




$(document).on "click", ".modal [data-button='close']", (e) ->

	e.preventDefault()

	closeModal()