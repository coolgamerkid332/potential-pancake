-- ripped from inf yield
local humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
    local backpack = speaker:FindFirstChildWhichIsA("Backpack")
    if not humanoid or not backpack then return end

    local tool = Instance.new("Tool")
    tool.Name = "Jerk Off"
    tool.ToolTip = "in the stripped club. straight up \"jorking it\" . and by \"it\" , haha, well. let's justr say. My peanits."
    tool.RequiresHandle = false
    tool.Parent = backpack

    local jorkin = false
    local track = nil

    local function stopTomfoolery()
        jorkin = false
        if track then
            track:Stop()
            track = nil
        end
    end

    tool.Equipped:Connect(function() jorkin = true end)
    tool.Unequipped:Connect(stopTomfoolery)
    humanoid.Died:Connect(stopTomfoolery)

    while task.wait() do
        if not jorkin then continue end

        local isR15 = r15(speaker)
        if not track then
            local anim = Instance.new("Animation")
            anim.AnimationId = not isR15 and "rbxassetid://72042024" or "rbxassetid://698251653"
            track = humanoid:LoadAnimation(anim)
        end

        track:Play()
        track:AdjustSpeed(isR15 and 0.7 or 0.65)
        track.TimePosition = 0.6
        task.wait(0.1)
        while track and track.TimePosition < (not isR15 and 0.65 or 0.7) do task.wait(0.1) end
        if track then
            track:Stop()
            track = nil
        end
    end
end)

addcmd("guiscale", {}, function(args, speaker)
    if args[1] and isNumber(args[1]) then
        local scale = tonumber(args[1])
        if scale % 1 == 0 then scale = scale / 100 end
        -- me when i divide and it explodes
        if scale == 0.01 then scale = 1 end
        if scale == 0.02 then scale = 2 end

        if scale >= 0.4 and scale <= 2 then
            guiScale = scale
        end
    else
        guiScale = defaultGuiScale
    end

    Scale.Scale = math.max(Holder.AbsoluteSize.X / 1920, guiScale)
    updatesaves()
