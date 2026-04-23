-- [[ DEKATEAMHUB V6.4 - RAW OCEAN RGB EDITION ]]
-- Created by Samuel (DekaTeam)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "DekaTeamHub_V6_Raw"

-- [[ 1. FAST BEACH INTRO (2 SECONDS) ]]
local IntroFrame = Instance.new("Frame")
local IntroImage = Instance.new("ImageLabel")
local WelcomeText = Instance.new("TextLabel")
local LoadingBar = Instance.new("Frame")
local Progress = Instance.new("Frame")

IntroFrame.Name = "IntroFrame"
IntroFrame.Parent = ScreenGui
IntroFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IntroFrame.Size = UDim2.new(1, 0, 1, 0)
IntroFrame.ZIndex = 10

IntroImage.Parent = IntroFrame
IntroImage.BackgroundTransparency = 1
IntroImage.Size = UDim2.new(1, 0, 1, 0)
IntroImage.Image = "rbxassetid://13512300407" 
IntroImage.ScaleType = Enum.ScaleType.Crop

WelcomeText.Parent = IntroFrame
WelcomeText.BackgroundTransparency = 1
WelcomeText.Position = UDim2.new(0.5, -200, 0.4, 0)
WelcomeText.Size = UDim2.new(0, 400, 0, 50)
WelcomeText.Font = Enum.Font.GothamBold
WelcomeText.Text = "DEKATEAMHUB LOADING..."
WelcomeText.TextColor3 = Color3.fromRGB(255, 255, 255)
WelcomeText.TextSize = 25

LoadingBar.Parent = IntroFrame
LoadingBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
LoadingBar.Position = UDim2.new(0.5, -150, 0.55, 0)
LoadingBar.Size = UDim2.new(0, 300, 0, 8)
Instance.new("UICorner", LoadingBar)

Progress.Parent = LoadingBar
Progress.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
Progress.Size = UDim2.new(0, 0, 1, 0)
Instance.new("UICorner", Progress)

-- [[ 2. OCEAN BLUE 3D MAIN UI ]]
local MainFrame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Title = Instance.new("TextLabel")
local UIStroke = Instance.new("UIStroke")

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 40, 70)
MainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0, 280, 0, 320)
MainFrame.Visible = false 
MainFrame.Active = true
MainFrame.Draggable = true 
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 15)

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 100, 200)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 20, 50))
}
UIGradient.Rotation = 45
UIGradient.Parent = MainFrame

UIStroke.Parent = MainFrame
UIStroke.Thickness = 3
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- RGB Border Logic
task.spawn(function()
    while task.wait() do
        UIStroke.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
    end
end)

Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0.05, 0)
Title.Size = UDim2.new(1, 0, 0, 35)
Title.Font = Enum.Font.GothamBold
Title.Text = "DEKATEAMHUB OCEAN RGB"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16

-- [[ BUTTON SYSTEM ]]
local function CreateButton(text, pos)
    local btn = Instance.new("TextButton")
    btn.Parent = MainFrame
    btn.BackgroundColor3 = Color3.fromRGB(20, 60, 100)
    btn.Position = pos
    btn.Size = UDim2.new(0.85, 0, 0, 45)
    btn.Font = Enum.Font.GothamSemibold
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 13
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 10)
    local bst = Instance.new("UIStroke", btn)
    bst.Color = Color3.fromRGB(0, 200, 255)
    return btn
end

local GodBtn = CreateButton("ACTIVATE GHOST IMMORTAL", UDim2.new(0.075, 0, 0.25, 0))
local CrimsonBtn = CreateButton("CRIMSON VOID SHADER", UDim2.new(0.075, 0, 0.45, 0))
local WinterBtn = CreateButton("NUCLEAR WINTER SHADER", UDim2.new(0.075, 0, 0.65, 0))

-- [[ 3. LOGIC (IMMORTAL & SHADER) ]]
local Lighting = game:GetService("Lighting")

local function CleanShader()
    for _, v in pairs(Lighting:GetChildren()) do
        if v:IsA("PostEffect") then v:Destroy() end
    end
end

CrimsonBtn.MouseButton1Click:Connect(function()
    CleanShader()
    local b = Instance.new("BloomEffect", Lighting) b.Intensity = 1.5
    local c = Instance.new("ColorCorrectionEffect", Lighting)
    c.TintColor = Color3.fromRGB(255, 150, 150)
    c.Saturation = 0.5
    CrimsonBtn.Text = "CRIMSON: ACTIVE"
end)

WinterBtn.MouseButton1Click:Connect(function()
    CleanShader()
    local c = Instance.new("ColorCorrectionEffect", Lighting)
    c.TintColor = Color3.fromRGB(200, 230, 255)
    c.Saturation = -0.4
    local bl = Instance.new("BlurEffect", Lighting) bl.Size = 4
    WinterBtn.Text = "WINTER: ACTIVE"
end)

GodBtn.MouseButton1Click:Connect(function()
    local p = game.Players.LocalPlayer
    local c = p.Character
    if c then
        local h = c:FindFirstChildOfClass("Humanoid")
        local nh = h:Clone()
        nh.Parent = c
        h:Destroy()
        p.Character = c
        task.spawn(function()
            while task.wait() do nh.Health = 100 end
        end)
    end
    GodBtn.Text = "GHOST: ACTIVE"
end)

-- [[ 4. START SEQUENCE ]]
task.spawn(function()
    Progress:TweenSize(UDim2.new(1, 0, 1, 0), "Out", "Quad", 1.5)
    task.wait(1.7)
    IntroFrame:Destroy()
    MainFrame.Visible = true
end)





    


























