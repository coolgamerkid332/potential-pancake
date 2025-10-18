local api = getfenv().api or {} -- allows compatibility with UE environment

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

local respawnEnabled = true
local toggleKey = Enum.KeyCode.RightShift -- changeable keybind
local lastDeathCFrame, lastCameraRotationCFrame

--------------------------------------------------------------------
-- GUI setup
--------------------------------------------------------------------
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "RespawnControlGUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 180, 0, 60)
frame.Position = UDim2.new(0.5, -90, 0.75, 0) -- moved upward
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.BackgroundTransparency = 0.2
frame.Active = true
frame.Draggable = true -- make GUI draggable
frame.Parent = screenGui

-- title label
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -20, 0.5, 0)
title.Position = UDim2.new(0, 20, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Respawn Save: ON"
title.Font = Enum.Font.GothamBold
title.TextColor3 = Color3.fromRGB(0, 255, 0)
title.TextScaled = true
title.Parent = frame

-- toggle button
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(1, -20, 0.5, 0)
toggleButton.Position = UDim2.new(0, 20, 0.5, 0)
toggleButton.Text = "Click to Toggle"
toggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
toggleButton.TextColor3 = Color3.new(1, 1, 1)
toggleButton.Font = Enum.Font.Gotham
toggleButton.TextScaled = true
toggleButton.Parent = frame

-- close button ("X")
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Position = UDim2.new(0, 0, 0, 0)
closeButton.Text = "X"
closeButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
closeButton.TextColor3 = Color3.new(1,1,1)
closeButton.Font = Enum.Font.GothamBold
closeButton.TextScaled = true
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
	frame.Visible = false
end)

local function updateGUI()
	title.Text = "Respawn Save: " .. (respawnEnabled and "ON" or "OFF")
	title.TextColor3 = respawnEnabled and Color3.fromRGB(0,255,0) or Color3.fromRGB(255,0,0)
end

toggleButton.MouseButton1Click:Connect(function()
	respawnEnabled = not respawnEnabled
	updateGUI()
end)

UserInputService.InputBegan:Connect(function(input, gp)
	if not gp and input.KeyCode == toggleKey then
		frame.Visible = not frame.Visible
	end
end)

--------------------------------------------------------------------
-- death / respawn handling
--------------------------------------------------------------------
local function onLocalPlayerDied()
	local char = player.Character
	if char then
		local root = char:FindFirstChild("HumanoidRootPart")
		if root then
			lastDeathCFrame = root.CFrame
			lastCameraRotationCFrame = CFrame.new(Vector3.new(0,0,0), (camera.CFrame.LookVector)) -- store rotation only
		end
	end
end

-- hook custom API if exists
if api.on_event then
	api:on_event("localplayer_died", onLocalPlayerDied)
else
	-- fallback for normal Roblox environment
	player.CharacterAdded:Connect(function(character)
		local humanoid = character:WaitForChild("Humanoid")
		humanoid.Died:Connect(onLocalPlayerDied)
	end)
end

player.CharacterAdded:Connect(function(character)
	task.spawn(function()
		local root = character:WaitForChild("HumanoidRootPart")
		task.wait(0.2)

		if respawnEnabled and lastDeathCFrame then
			root.CFrame = lastDeathCFrame -- teleport exactly where died
		end

		if respawnEnabled and lastCameraRotationCFrame then
			-- preserve rotation
			camera.CameraType = Enum.CameraType.Scriptable
			camera.CFrame = CFrame.new(camera.CFrame.Position, camera.CFrame.Position + lastCameraRotationCFrame.LookVector)
			task.wait(0.3)
			camera.CameraType = Enum.CameraType.Custom
		end
	end)
end)

-- handle mid-game script insertion
if player.Character then
	local char = player.Character
	local humanoid = char:FindFirstChildOfClass("Humanoid")
	if humanoid then
		humanoid.Died:Connect(onLocalPlayerDied)
	end
end
