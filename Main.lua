-- [[ DEKATEAMHUB V7.5 - ULTIMATE ENVIRONMENT ]]
-- Moon Crimson | Real Snowing Winter | Ocean Blue 3D

local function GetParent()
    local success, coregui = pcall(function() return game:GetService("CoreGui") end)
    if success and coregui then return coregui end
    return game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DekaTeamHub_V7_5"
ScreenGui.Parent = GetParent()
ScreenGui.ResetOnSpawn = false

-- [[ 1. INTRO SYSTEM ]]
local Intro = Instance.new("Frame", ScreenGui)
Intro.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Intro.Size = UDim2.new(1, 0, 1, 0)
Intro.ZIndex = 1000

local Welcome = Instance.new("TextLabel", Intro)
Welcome.BackgroundTransparency = 1
Welcome.Size = UDim2.new(1, 0, 1, 0)
Welcome.Font = Enum.Font.GothamBold
Welcome.Text = "Selamat Datang!\nMakasih udah pake script ini ☺️"
Welcome.TextColor3 = Color3.fromRGB(255, 255, 255)
Welcome.TextSize = 24

-- [[ 2. MAIN UI ]]
local Main = Instance.new("Frame", ScreenGui)
Main.BackgroundColor3 = Color3.fromRGB(0, 50, 120)
Main.Position = UDim2.new(0.5, -140, 0.5, -130)
Main.Size = UDim2.new(0, 280, 0, 280)
Main.Visible = false 
Main.Active = true
Main.Draggable = true 
Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 15)

local Stroke = Instance.new("UIStroke", Main)
Stroke.Thickness = 3
Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
task.spawn(function()
    while task.wait() do Stroke.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1) end
end)

local Title = Instance.new("TextLabel", Main)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, 0, 0, 45)
Title.Font = Enum.Font.GothamBold
Title.Text = "DEKATEAMHUB V7.5"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18

-- [[ ADVANCED SHADER & WEATHER SYSTEM ]]
local Lighting = game:GetService("Lighting")
local PartContainer = nil

local function Clean()
    for _, v in pairs(Lighting:GetChildren()) do
        if v:IsA("PostEffect") or v:IsA("Sky") then v:Destroy() end
    end
    if PartContainer then PartContainer:Destroy() PartContainer = nil end
    Lighting.ClockTime = 14
end

local function CreateSnow()
    PartContainer = Instance.new("Part", workspace)
    PartContainer.Name = "DekaSnow"
    PartContainer.Anchored = true
    PartContainer.CanCollide = false
    PartContainer.Transparency = 1
    
    local Attachment = Instance.new("Attachment", PartContainer)
    local Emitter = Instance.new("ParticleEmitter", Attachment)
    Emitter.Texture = "rbxassetid://242268300" -- Snow Texture
    Emitter.Size = NumberSequence.new(0.5, 1)
    Emitter.Lifetime = NumberRange.new(5, 10)
    Emitter.Rate = 200
    Emitter.Speed = NumberRange.new(10, 25)
    Emitter.VelocityInheritance = 0.5
    Emitter.EmissionDirection = Enum.NormalId.Bottom
    
    task.spawn(function()
        while PartContainer do
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                PartContainer.Position = char.HumanoidRootPart.Position + Vector3.new(0, 50, 0)
            end
            task.wait()
        end
    end)
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

-- Crimson Mode (Blood Moon)
CreateBtn("CRIMSON MOON", UDim2.new(0.075, 0, 0.25, 0), function()
    Clean()
    Lighting.ClockTime = 0 -- Malam
    local s = Instance.new("Sky", Lighting)
    s.MoonTextureId = "rbxassetid://12323631" -- Moon Texture
    s.SkyboxBk = "rbxassetid://14531818241"
    s.SkyboxDn = "rbxassetid://14531818241"
    s.SkyboxFt = "rbxassetid://14531818241"
    s.SkyboxLf = "rbxassetid://14531818241"
    s.SkyboxRt = "rbxassetid://14531818241"
    s.SkyboxUp = "rbxassetid://14531818241"
    
    local cc = Instance.new("ColorCorrectionEffect", Lighting)
    cc.TintColor = Color3.fromRGB(255, 100, 100)
    cc.Contrast = 0.3
    Instance.new("BloomEffect", Lighting).Intensity = 1.5
end)

-- Winter Mode (Snow Fall)
CreateBtn("WINTER SNOWFALL", UDim2.new(0.075, 0, 0.5, 0), function()
    Clean()
    local s = Instance.new("Sky", Lighting)
    s.SkyboxBk = "rbxassetid://131245648"
    s.SkyboxDn = "rbxassetid://131245648"
    s.SkyboxFt = "rbxassetid://131245648"
    s.SkyboxLf = "rbxassetid://131245648"
    s.SkyboxRt = "rbxassetid://131245648"
    s.SkyboxUp = "rbxassetid://131245648"
    
    Lighting.FogEnd = 400
    Lighting.FogColor = Color3.fromRGB(255, 255, 255)
    CreateSnow()
end)

-- Reset
CreateBtn("RESET ALL", UDim2.new(0.075, 0, 0.75, 0), function()
    Clean()
    Lighting.FogEnd = 100000
end)

-- [[ START ]]
task.wait(0.5)
Intro.Visible = true
task.wait(2)
Intro:Destroy()
Main.Visible = true



    





    


























