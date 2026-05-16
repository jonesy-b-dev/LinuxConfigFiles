-- PLUGINS (TODO: Move to own file)
hl.config({
	plugin = {
		split_monitor_workspaces = {
			count                        = 9,
			keep_focused                 = 0,
			enable_notifications         = 0,
			enable_persistent_workspaces = 1,
			enable_wrapping              = 1,
			link_monitors                = 0,
			-- enable_hy3                = 1,
		},
	},
})
-- Set monitor priority (first entry = lowest workspace numbers)
local smw = hl.plugin.split_monitor_workspaces
smw.monitor_priority({ "HDMI-A-1", "DP-1" })

-- Set max workspaces per monitor (call once per monitor)
--smw.max_workspaces({ monitor = "DP-1", max = 9 })
--smw.max_workspaces({ monitor = "DP-2", max = 5 })
