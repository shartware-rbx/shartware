-- Remember to use locals since they're faster than globals.
-- Also remember the "connect" is deprecated, the "connect" function is now "Connect" (notice the capital C)

-- A function that replaces every sound in workspace with fart reverb
local function fart()
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("Sound") then
			v.SoundId = "rbxassetid://160581284"
		end
	end
end

-- A function that replaces every new sound instance in workspace with the fart reverb
local function shart()
	workspace.DescendantAdded:Connect(function(child)
		if child:IsA("Sound") then
			child.SoundId = "rbxassetid://160581284"
		end
	end)
end

shart()
fart()