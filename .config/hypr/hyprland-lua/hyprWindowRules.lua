-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name           = "suppress-maximize-events",
	match          = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name     = "fix-xwayland-drags",
	match    = {
		class      = "^$",
		title      = "^$",
		xwayland   = true,
		float      = true,
		fullscreen = false,
		pin        = false,
	},

	no_focus = true,
})

-- Make download/upload windows float in screen center
hl.window_rule({
	name  = "floating-file-picker",
	match = {
		title = "^(.*wants to save|.*wants to open|Open Folder)$"
	},
	float = true,
	size  = { "monitor_w-monitor_w/2+50", "monitor_h-monitor_h/2+100" },
})

hl.window_rule({
	name      = "easyeffects-silent-start",
	match     = { class = "com.github.wwmm.easyeffects" },
	workspace = "special:silent",
})
