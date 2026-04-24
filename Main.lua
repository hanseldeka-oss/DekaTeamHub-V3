--[[
    ════════════════════════════════════════════════
    | DEKA OMNI - ULTIMATE MASTER (ALL FEATURES)
    | Theme: Ocean Blue 3D Handmade UI
    | LocalTitle: DekaTeamHub Simple Shader
    ════════════════════════════════════════════════
--]]

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local Title = Instance.new("TextLabel")
local Scroll = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")

-- Parent Setup
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "DekaOmniMaster"

-- Frame Utama (Ocean Blue Aesthetic)
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.Position = UDim2.new(0.5, -110, 0.5, -175)
MainFrame.Size = UDim2.new(0, 230, 0, 350)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 110, 200)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 25, 55))
}
UIGradient.Rotation = 45
UIGradient.Parent = MainFrame

UIStroke.Thickness = 2.5
UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Transparency = 0.6
UIStroke.Parent = MainFrame

-- Title
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, 0, 0, 45)
Title.Font = Enum.Font.GothamBold
Title.Text = "DEKA TEAM HUB"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16

-- Scroll Area (Fixed: All Buttons Visible)
Scroll.Parent = MainFrame
Scroll.BackgroundTransparency = 1
Scroll.Position = UDim2.new(0, 10, 0, 50)
Scroll.Size = UDim2.new(1, -20, 1, -60)
Scroll.ScrollBarThickness = 2
Scroll.CanvasSize = UDim2.new(0, 0, 2, 0) -- Biar bisa scroll kebawah

UIListLayout.Parent = Scroll
UIListLayout.Padding = UDim.new(0, 7)
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

-- Shader Logic
local lighting = game:GetService("Lighting")
local function Clear()
    for _, v in pairs(lighting:GetChildren()) do
        if v:IsA("PostEffect") or v:IsA("Sky") or v:IsA("Atmosphere") then v:Destroy() end
    end
    lighting.FogEnd = 100000
    if game.Workspace.Terrain:FindFirstChildOfClass("Clouds") then game.Workspace.Terrain:FindFirstChildOfClass("Clouds"):Destroy() end
end

local function CreateBtn(name, callback)
    local btn = Instance.new("TextButton")
    local btnCorner = Instance.new("UICorner")
    btn.Parent = Scroll
    btn.Size = UDim2.new(1, -5, 0, 35)
    btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    btn.BackgroundTransparency = 0.85
    btn.Font = Enum.Font.GothamSemibold
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 12
    btnCorner.CornerRadius = UDim.new(0, 6)
    btnCorner.Parent = btn
    btn.MouseButton1Click:Connect(callback)
end

--// LIST FITUR LENGKAP (Video + Request)
CreateBtn("🌊 Ocean Blue (3D Master)", function()
    Clear()
    lighting.ClockTime = 14
    local cc = Instance.new("ColorCorrectionEffect", lighting)
    cc.TintColor = Color3.fromRGB(180, 240, 255)
    cc.Saturation = 0.5
    local atmos = Instance.new("Atmosphere", lighting)
    atmos.Density = 0.3
    atmos.Color = Color3.fromRGB(0, 190, 255)
    Instance.new("Clouds", game.Workspace.Terrain).Density = 0.7
end)

CreateBtn("🌌 The Glowing Sky", function()
    Clear()
    lighting.ClockTime = 0
    lighting.Brightness = 2.5
    local cc = Instance.new("ColorCorrectionEffect", lighting)
    cc.Contrast = 0.45
    cc.Saturation = 0.5
    local bloom = Instance.new("BloomEffect", lighting)
    bloom.Intensity = 1.4
    bloom.Size = 35
    local atmos = Instance.new("Atmosphere", lighting)
    atmos.Density = 0.3
    atmos.Glare = 0.9
    atmos.Color = Color3.fromRGB(0, 100, 255)
end)

CreateBtn("🌙 Blood Moon Eclipse", function()
    Clear()
    lighting.ClockTime = 0
    lighting.Ambient = Color3.fromRGB(120, 0, 0)
    local cc = Instance.new("ColorCorrectionEffect", lighting)
    cc.TintColor = Color3.fromRGB(255, 30, 30)
    cc.Saturation = 0.8
end)

CreateBtn("🌫️ Silent Hill (Horror)", function()
    Clear()
    lighting.ClockTime = 12
    lighting.FogEnd = 130
    lighting.FogColor = Color3.fromRGB(180, 180, 180)
    local cc = Instance.new("ColorCorrectionEffect", lighting)
    cc.Saturation = -0.8
end)

CreateBtn("🤢 Toxic Swamp", function()
    Clear()
    lighting.ClockTime = 15
    local cc = Instance.new("ColorCorrectionEffect", lighting)
    cc.TintColor = Color3.fromRGB(160, 255, 160)
    cc.Saturation = 0.5
    local atmos = Instance.new("Atmosphere", lighting)
    atmos.Density = 0.65
    atmos.Color = Color3.fromRGB(50, 100, 50)
end)

CreateBtn("🎆 Vaporwave Dream", function()
    Clear()
    lighting.ClockTime = 17.6
    local cc = Instance.new("ColorCorrectionEffect", lighting)
    cc.TintColor = Color3.fromRGB(255, 150, 255)
    cc.Saturation = 0.6
    local atmos = Instance.new("Atmosphere", lighting)
    atmos.Color = Color3.fromRGB(180, 100, 255)
end)

CreateBtn("❄️ Night Blizzard", function()
    Clear()
    lighting.ClockTime = 2
    local atmos = Instance.new("Atmosphere", lighting)
    atmos.Density = 0.85
    atmos.Color = Color3.fromRGB(150, 180, 255)
end)

CreateBtn("☀️ Divine Sunrise", function()
    Clear()
    lighting.ClockTime = 6.5
    local rays = Instance.new("SunRaysEffect", lighting)
    rays.Intensity = 0.25
    local cc = Instance.new("ColorCorrectionEffect", lighting)
    cc.TintColor = Color3.fromRGB(255, 230, 200)
end)

CreateBtn("🏔️ Misty Peak", function()
    Clear()
    lighting.ClockTime = 8
    local atmos = Instance.new("Atmosphere", lighting)
    atmos.Density = 0.4
    atmos.Haze = 2
end)

CreateBtn("🔄 Reset Default", function()
    Clear()
    lighting.ClockTime = 14
    lighting.Brightness = 2
end)

-- Animation Launch
MainFrame.Size = UDim2.new(0,0,0,0)
MainFrame:TweenSize(UDim2.new(0, 230, 0, 350), "Out", "Back", 0.5)










    





    






























    





    


























