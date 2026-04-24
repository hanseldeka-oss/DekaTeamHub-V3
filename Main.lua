-- [[ DEKATEAMHUB V13 - THE REAL VISUAL FIX ]]
-- Not Too Dark | Fixed Moon | Real Snow Gravity

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DekaTeamHub_V13"
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 999

-- [[ 1. INTRO ]]
local Intro = Instance.new("Frame", ScreenGui)
Intro.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Intro.Size = UDim2.new(1, 0, 1, 0)
Intro.ZIndex = 1000

local Welcome = Instance.new("TextLabel", Intro)
Welcome.BackgroundTransparency = 1
Welcome.Size = UDim2.new(1, 0, 1, 0)
Welcome.Font = Enum.Font.GothamBold
Welcome.Text = "Halo, Bos Samuel!\nV13 Udah Fix, Jangan Pusing Lagi ☺️"
Welcome.TextColor3 = Color3.fromRGB(0, 200, 255)
Welcome.TextSize = 20

-- [[ 2. MAIN UI ]]
local Main = Instance.new("Frame", ScreenGui)
Main.BackgroundColor3 = Color3.fromRGB(0, 50, 120)
Main.Position = UDim2.new(0.5, -140, 0.5, -130)
Main.Size = UDim2.new(0, 280, 0, 300)
Main.Visible = false 
Main.Active = true
Main.Draggable = true 
Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 15)

local function Clean()
    local Light = game:GetService("Lighting")
    for _, v in pairs(Light:GetChildren()) do
        if v:IsA("Sky") or v:IsA("PostEffect") or v:IsA("Atmosphere") then v:Destroy() end
    end
    if workspace:FindFirstChild("DekaWeather") then workspace.DekaWeather:Destroy() end
    Light.ClockTime = 14
    Light.Brightness = 2
end

local function CreateBtn(txt, pos, func)
    local b = Instance.new("TextButton", Main)
    b.BackgroundColor3 = Color3.fromRGB(0, 75, 160)
    b.Position = pos
    b.Size = UDim2.new(0.85, 0, 0, 50)
    b.Text = txt
    b.TextColor3 = Color3.fromRGB(255, 255, 255)
    b.MouseButton1Click:Connect(func)
    Instance.new("UICorner", b)
end

-- Crimson (Optimized: Not Too Dark + HD Moon)
CreateBtn("GODLY CRIMSON MOON", UDim2.new(0.075, 0, 0.2, 0), function()
    Clean()
    local Light = game:GetService("Lighting")
    Light.ClockTime = 0
    Light.Brightness = 2.5 -- Terang tapi malem
    
    local Sky = Instance.new("Sky", Light)
    Sky.SkyboxBk = "rbxassetid://150153831" -- Skybox luar angkasa merah transparan
    Sky.SkyboxDn = "rbxassetid://150153831"
    Sky.SkyboxFt = "rbxassetid://150153831"
    Sky.SkyboxLf = "rbxassetid://150153831"
    Sky.SkyboxRt = "rbxassetid://150153831"
    Sky.SkyboxUp = "rbxassetid://150153831"
    Sky.MoonTextureId = "rbxassetid://12323631" -- Bulan Purnama
    Sky.MoonAngularSize = 50
    
    local CC = Instance.new("ColorCorrectionEffect", Light)
    CC.TintColor = Color3.fromRGB(255, 120, 120) -- Merah lembut
end)

-- Winter (Real Falling Snow)
CreateBtn("GODLY WINTER STORM", UDim2.new(0.075, 0, 0.45, 0), function()
    Clean()
    local Light = game:GetService("Lighting")
    Light.FogEnd = 400
    
    local Part = Instance.new("Part", workspace)
    Part.Name = "DekaWeather"
    Part.Anchored = true
    Part.Transparency = 1
    
    local Att = Instance.new("Attachment", Part)
    local Emit = Instance.new("ParticleEmitter", Att)
    Emit.Texture = "rbxassetid://242268300"
    Emit.Rate = 3500
    Emit.Speed = NumberRange.new(40, 90)
    Emit.Acceleration = Vector3.new(0, -20, 0) -- Paksa jatuh ke tanah
    
    task.spawn(function()
        while Part and Part.Parent do
            local Char = game.Players.LocalPlayer.Character
            if Char and Char:FindFirstChild("HumanoidRootPart") then
                Part.Position = Char.HumanoidRootPart.Position + Vector3.new(0, 100, 0)
            end
            task.wait()
        end
    end)
end)

CreateBtn("RESET ALL", UDim2.new(0.075, 0, 0.7, 0), function() Clean() end)

task.wait(0.5)
Intro.Visible = true
task.wait(2)
Intro:Destroy()
Main.Visible = true









    





    






























    





    


























