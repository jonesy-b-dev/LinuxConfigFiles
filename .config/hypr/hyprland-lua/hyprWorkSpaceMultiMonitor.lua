-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
local smw = hl.plugin.split_monitor_workspaces

-- Switch workspaces with mainMod + [1-5]
for i = 1, 9 do
	local key = tostring(i)
	hl.bind(MainMod .. " + " .. key, function() return smw.workspace(i) end)
	hl.bind(MainMod .. " + SHIFT + " .. key, function() return smw.move_to_workspace_silent(i) end)
end
