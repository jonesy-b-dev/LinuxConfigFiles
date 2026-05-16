-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(MainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(MainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end
