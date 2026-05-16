-- hyprland-lua keybinds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(MainMod .. " + C", hl.dsp.window.close())
if KillShortcut then
	hl.bind(MainMod .. " + M",
		hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
end
hl.bind(MainMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only
hl.bind(MainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(MainMod .. " + P", hl.dsp.window.pseudo())

-- Application binds
hl.bind("CTRL + SPACE", hl.dsp.exec_cmd(Menu))
hl.bind(MainMod .. " + RETURN", hl.dsp.exec_cmd(Terminal))
hl.bind(MainMod .. " + E", hl.dsp.exec_cmd(FileManager))
hl.bind("CTRL + SHIFT + ESCAPE", hl.dsp.exec_cmd("foot -e btop"))
hl.bind(MainMod .. "+ S", hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind(MainMod .. "+ O", hl.dsp.exec_cmd("foot -e nvim ~"))
hl.bind(SecondMod .. "+ SHIFT + P", hl.dsp.exec_cmd("hyprlock"))
hl.bind(SecondMod .. "+ C", hl.dsp.exec_cmd("hyprpicker -a"))

-- Move windows
hl.bind(MainMod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(MainMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(MainMod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(MainMod .. " + j", hl.dsp.focus({ direction = "down" }))

-- Single monitor shortcuts
--require("hyprland-lua.hyprWorkSpaceSingleMonitor")

-- Multi Monitor shortcuts
require("hyprland-lua.hyprWorkSpaceMultiMonitor")

-- Example special workspace (scratchpad)
hl.bind(MainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(MainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with MainMod + scroll
hl.bind(MainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(MainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with MainMod + LMB/RMB and dragging
if MoveWindowWithMouse then
	hl.bind(MainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
end
hl.bind(MainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Resize windows with keys
hl.bind(MainMod .. " + SHIFT + l", hl.dsp.window.resize({ x = 30, y = 0, relative = true }), { repeating = true })
hl.bind(MainMod .. " + SHIFT + h", hl.dsp.window.resize({ x = -30, y = 0, relative = true }), { repeating = true })
hl.bind(MainMod .. " + SHIFT + k", hl.dsp.window.resize({ x = 0, y = -30, relative = true }), { repeating = true })
hl.bind(MainMod .. " + SHIFT + j", hl.dsp.window.resize({ x = 0, y = 30, relative = true }), { repeating = true })

hl.bind(SecondMod .. " + h", hl.dsp.window.swap({ direction = "l" }))
hl.bind(SecondMod .. " + j", hl.dsp.window.swap({ direction = "d" }))
hl.bind(SecondMod .. " + k", hl.dsp.window.swap({ direction = "u" }))
hl.bind(SecondMod .. " + l", hl.dsp.window.swap({ direction = "r" }))

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 1%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 1%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
