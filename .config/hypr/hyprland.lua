-----------------
-- JONESY CONF --
-----------------

-- PROGRAMS
Terminal = "foot"
FileManager = "nemo"
Menu = "ulauncher"

-- Variables
KillShortcut = false
MoveWindowWithMouse = true
MainMod = "ALT"
SecondMod = "SUPER"


-- MONITORS See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
	output   = "HDMI-A-1",
	mode     = "preferred",
	position = "0x0",
	scale    = "1",
})

hl.monitor({
	output   = "DP-1",
	mode     = "preferred",
	position = "0x0",
	scale    = "1",
})

-- AUTOSTART
hl.on("hyprland.start", function()
	hl.exec_cmd("hyprpaper & hyprsunset & hyprpm reload -n && hyprctl reload") -- Hypr stuff
	hl.exec_cmd("waybar")                                                   -- Rice stuff
	hl.exec_cmd("copyq & openrgb --profile 'Orange' & protonvpn-app")       -- Apps
	hl.exec_cmd("easyeffects & sleep 3 && easyeffects -w")
end)

-- THEMING
hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme \"Adwaita-dark\"")
hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme \"prefer-dark\"")

-- Env variables
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- PERMISSIONS
hl.config({ ecosystem = { enforce_permissions = true } })
hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
hl.permission("/usr/bin/hyprpm", "plugin", "allow")
hl.permission("/usr/(bin|local/bin)", "screencopy", "allow")


-- LOOK AND FEEL
require("hyprland-lua.hyprLookAndFeel")

-- INPUT
require("hyprland-lua.hyprInput")

-- KEYBINDS
require("hyprland-lua.hyprKeybinds")

-- WINDOW RULES
require("hyprland-lua.hyprWindowRules")

-- PLUGINS
require("hyprland-lua.hyprPlugins")

-- OTHER
-- Fix low res apps on higher scaled displays
hl.config({
	xwayland = {
		force_zero_scaling = true
	}
})
