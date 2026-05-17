hl.curve("bezier", { type = "bezier", points = { { 0.65, 0 }, { 0.35, 1 } } })

hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 2,
	bezier = "bezier",
	style = "slide",
})
