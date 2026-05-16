hl.config({
	input = {
		kb_layout     = "us",
		kb_variant    = "",
		kb_model      = "",
		kb_options    = "",
		kb_rules      = "",

		follow_mouse  = 1,

		sensitivity   = 0, -- -1.0 - 1.0, 0 means no modification.
		accel_profile = "flat",

		touchpad      = {
			natural_scroll = true,
		},
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace"
})

-- Touchpad settings
hl.device({
	name = "elan1203:00-04f3:307a-touchpad",
	sensitivity = 0,
})

hl.gesture({ fingers = 3, direction = "pinchin", action = "cursorZoom", zoom_level = 1.2, mode = "mult" })
hl.gesture({ fingers = 3, direction = "pinchout", action = "cursorZoom", zoom_level = 0.6, mode = "mult" })
