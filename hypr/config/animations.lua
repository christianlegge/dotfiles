hl.curve("bezier", { type = "bezier", points = { { 0.65, 0 }, { 0.35, 1 } } })
hl.curve("spring", { type = "spring", mass = 1, stiffness = 300, dampening = 20 })

hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 2,
	bezier = "bezier",
	style = "gnomed",
})

hl.animation({
	leaf = "windowsMove",
	enabled = true,
	speed = 2,
	spring = "spring",
})

hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 2,
	bezier = "bezier",
	style = "slidevert",
})
