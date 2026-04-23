-- [[ DEKATEAMHUB V7.0 - HIGH GRAPHICS EDITION ]]
-- Realistic Skybox | Ultra Shaders | Ocean Blue 3D

local function GetParent()
    local success, coregui = pcall(function() return game:GetService("CoreGui") end)
    if success and coregui then return coregui end
    return game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DekaTeamHub_V7_Ultra"
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

-- [[ 2. MAIN UI (OCEAN BLUE RGB) ]]
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
Title.Text = "DEKATEAMHUB V7 ULTRA"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18

-- [[ ADVANCED SHADER SYSTEM ]]
local Lighting = game:GetService("Lighting")
local function Clean()
    for _, v in pairs(Lighting:GetChildren()) do
        if v:IsA("PostEffect") or v:IsA("Sky") then v:Destroy() end
    end
end

local function SetSky(id)
    local s = Instance.new("Sky", Lighting)
    s.SkyboxBk = "rbxassetid://"..id
    s.SkyboxDn = "rbxassetid://"..id
    s.SkyboxFt = "rbxassetid://"..id
    s.SkyboxLf = "rbxassetid://"..id
    s.SkyboxRt = "rbxassetid://"..id
    s.SkyboxUp = "rbxassetid://"..id
    s.SunAngularSize = 0
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

-- Crimson Mode (Dark Red Sky + Glow)
CreateBtn("ULTRA CRIMSON", UDim2.new(0.075, 0, 0.25, 0), function()
    Clean()
    SetSky(14531818241) -- Crimson Sky ID
    local cc = Instance.new("ColorCorrectionEffect", Lighting)
    cc.TintColor = Color3.fromRGB(255, 100, 100)
    cc.Contrast = 0.2
    local b = Instance.new("BloomEffect", Lighting)
    b.Intensity = 2
end)

-- Winter Mode (Real Snow Sky + Fog)
CreateBtn("ULTRA WINTER", UDim2.new(0.075, 0, 0.5, 0), function()
    Clean()
    SetSky(131245648) -- Winter/Snow Sky ID
    Lighting.FogEnd = 500
    Lighting.FogColor = Color3.fromRGB(200, 230, 255)
    local cc = Instance.new("ColorCorrectionEffect", Lighting)
    cc.Saturation = -0.5
    local bl = Instance.new("BlurEffect", Lighting) bl.Size = 2
end)

-- Reset Graphics
CreateBtn("RESET GRAPHICS", UDim2.new(0.075, 0, 0.75, 0), function()
    Clean()
    Lighting.FogEnd = 100000
end)

-- [[ START ]]
task.wait(0.5)
Intro.Visible = true
task.wait(2)
Intro:Destroy()
Main.Visible = true


    





    


























