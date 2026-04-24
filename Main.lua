-- [[ DEKATEAMHUB V12 - GODLY ENVIRONMENT FIX ]]
-- High Definition Moon | Real Falling Snow | Optimized Lighting

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DekaTeamHub_V12"
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 999

-- [[ 1. INTRO RAMAH ]]
local Intro = Instance.new("Frame", ScreenGui)
Intro.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Intro.Size = UDim2.new(1, 0, 1, 0)
Intro.ZIndex = 1000

local Welcome = Instance.new("TextLabel", Intro)
Welcome.BackgroundTransparency = 1
Welcome.Size = UDim2.new(1, 0, 1, 0)
Welcome.Font = Enum.Font.GothamBold
Welcome.Text = "Halo, Bos Samuel!\nScript V12 Berhasil Dimuat ☺️"
Welcome.TextColor3 = Color3.fromRGB(0, 200, 255)
Welcome.TextSize = 22

-- [[ 2. MAIN UI ]]
local Main = Instance.new("Frame", ScreenGui)
Main.BackgroundColor3 = Color3.fromRGB(0, 50, 120)
Main.Position = UDim2.new(0.5, -140, 0.5, -130)
Main.Size = UDim2.new(0, 280, 0, 300)
Main.Visible = false 
Main.Active = true
Main.Draggable = true 
Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 15)

local Stroke = Instance.new("UIStroke", Main)
Stroke.Thickness = 3
task.spawn(function()
    while task.wait() do Stroke.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1) end
end)

local function Clean()
    local Light = game:GetService("Lighting")
    for _, v in pairs(Light:GetChildren()) do
        if v:IsA("Sky") or v:IsA("PostEffect") or v:IsA("Atmosphere") or v:IsA("Clouds") then v:Destroy() end
    end
    if workspace:FindFirstChild("DekaWeather") then workspace.DekaWeather:Destroy() end
    Light.ClockTime = 14
    Light.FogEnd = 100000
    Light.Brightness = 2
    Light.Ambient = Color3.fromRGB(127, 127, 127)
    Light.OutdoorAmbient = Color3.fromRGB(127, 127, 127)
end

local function CreateBtn(txt, pos, func)
    local b = Instance.new("TextButton", Main)
    b.BackgroundColor3 = Color3.fromRGB(0, 75, 160)
    b.Position = pos
    b.Size = UDim2.new(0.85, 0, 0, 50)
    b.Font = Enum.Font.GothamSemibold
    b.Text = txt
    b.TextColor3 = Color3.fromRGB(255, 255, 255)
    b.TextSize = 14
    Instance.new("UICorner", b)
    b.MouseButton1Click:Connect(func)
end

-- Crimson (Optimized Brightness & HD Moon)
CreateBtn("GODLY CRIMSON MOON", UDim2.new(0.075, 0, 0.2, 0), function()
    Clean()
    local Light = game:GetService("Lighting")
    Light.ClockTime = 0
    Light.Brightness = 3 -- Biar gak terlalu gelap
    Light.Ambient = Color3.fromRGB(100, 0, 0)
    Light.OutdoorAmbient = Color3.fromRGB(150, 0, 0)
    
    local Sky = Instance.new("Sky", Light)
    Sky.SkyboxBk = "rbxassetid://14531818241"
    Sky.SkyboxDn = "rbxassetid://14531818241"
    Sky.SkyboxFt = "rbxassetid://14531818241"
    Sky.SkyboxLf = "rbxassetid://14531818241"
    Sky.SkyboxRt = "rbxassetid://14531818241"
    Sky.SkyboxUp = "rbxassetid://14531818241"
    Sky.MoonTextureId = "rbxassetid://12323631"
    Sky.MoonAngularSize = 45 -- Bulan Super Gede
    
    local CC = Instance.new("ColorCorrectionEffect", Light)
    CC.TintColor = Color3.fromRGB(255, 150, 150)
    CC.Contrast = 0.2
end)

-- Winter (Real Falling Snowstorm)
CreateBtn("GODLY WINTER STORM", UDim2.new(0.075, 0, 0.45, 0), function()
    Clean()
    local Light = game:GetService("Lighting")
    local Sky = Instance.new("Sky", Light)
    Sky.SkyboxBk = "rbxassetid://131245648"
    Sky.SkyboxDn = "rbxassetid://131245648"
    Sky.SkyboxFt = "rbxassetid://131245648"
    Sky.SkyboxLf = "rbxassetid://131245648"
    Sky.SkyboxRt = "rbxassetid://131245648"
    Sky.SkyboxUp = "rbxassetid://131245648"
    
    Light.FogEnd = 500
    Light.FogColor = Color3.fromRGB(255, 255, 255)

    local Part = Instance.new("Part", workspace)
    Part.Name = "DekaWeather"
    Part.Anchored = true
    Part.CanCollide = false
    Part.Transparency = 1
    
    local Att = Instance.new("Attachment", Part)
    local Emit = Instance.new("ParticleEmitter", Att)
    Emit.Texture = "rbxassetid://242268300"
    Emit.Rate = 4000 -- Badai Deres Banget
    Emit.Speed = NumberRange.new(50, 100)
    Emit.Lifetime = NumberRange.new(5, 10)
    Emit.Size = NumberSequence.new(0.8, 1.8)
    Emit.Acceleration = Vector3.new(0, -15, 0) -- Paksa jatuh ke bawah
    
    task.spawn(function()
        while Part and Part.Parent do
            local Char = game.Players.LocalPlayer.Character
            if Char and Char:FindFirstChild("HumanoidRootPart") then
                Part.Position = Char.HumanoidRootPart.Position + Vector3.new(0, 120, 0)
            end
            task.wait()
        end
    end)
end)

CreateBtn("RESET ALL", UDim2.new(0.075, 0, 0.7, 0), function()
    Clean()
end)

-- [[ START ]]
task.wait(0.5)
Intro.Visible = true
task.wait(2)
Intro:Destroy()
Main.Visible = true








    





    






























    





    


























