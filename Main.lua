-- [[ DEKATEAMHUB V6 - UNIVERSAL VOID 3D EDITION ]]

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "DekaTeamHub_V6"

-- [[ 1. INTRO SYSTEM ]]
local IntroFrame = Instance.new("Frame")
local IntroImage = Instance.new("ImageLabel")
local WelcomeText = Instance.new("TextLabel")

IntroFrame.Name = "IntroFrame"
IntroFrame.Parent = ScreenGui
IntroFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IntroFrame.Size = UDim2.new(1, 0, 1, 0)
IntroFrame.ZIndex = 10

IntroImage.Parent = IntroFrame
IntroImage.BackgroundTransparency = 1
IntroImage.Size = UDim2.new(1, 0, 1, 0)
IntroImage.Image = "rbxassetid://13512300407" -- Tetap pake pantai buat intro (liburan sebelum bantai)
IntroImage.ScaleType = Enum.ScaleType.Crop

WelcomeText.Parent = IntroFrame
WelcomeText.BackgroundTransparency = 1
WelcomeText.Position = UDim2.new(0.5, -200, 0.4, 0)
WelcomeText.Size = UDim2.new(0, 400, 0, 100)
WelcomeText.Font = Enum.Font.GothamBold
WelcomeText.Text = "DEKATEAMHUB V6: UNIVERSAL VOID"
WelcomeText.TextColor3 = Color3.fromRGB(255, 255, 255)
WelcomeText.TextSize = 30
WelcomeText.TextWrapped = true

-- [[ 2. MAIN UI (VOID 3D DESIGN) ]]
local MainFrame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Title = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15) -- Void Base
MainFrame.BackgroundTransparency = 0.1
MainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0, 280, 0, 320)
MainFrame.Visible = false 
MainFrame.Active = true
MainFrame.Draggable = true 

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 0, 0)) -- Dark Crimson Tint
}
UIGradient.Rotation = 45
UIGradient.Parent = MainFrame

UIStroke.Parent = MainFrame
UIStroke.Thickness = 3
UIStroke.Color = Color3.fromRGB(255, 0, 0) -- Neon Red Glow
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = MainFrame

Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0.05, 0)
Title.Size = UDim2.new(1, 0, 0, 35)
Title.Font = Enum.Font.GothamBold
Title.Text = "DEKATEAMHUB UNIVERSAL"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16

-- [[ BUTTON CREATOR ]]
local function CreateButton(name, text, pos, color)
    local btn = Instance.new("TextButton")
    btn.Name = name
    btn.Parent = MainFrame
    btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    btn.Position = pos
    btn.Size = UDim2.new(0.85, 0, 0, 45)
    btn.Font = Enum.Font.GothamSemibold
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 13
    
    local bcr = Instance.new("UICorner")
    bcr.CornerRadius = UDim.new(0, 10)
    bcr.Parent = btn
    
    local bst = Instance.new("UIStroke")
    bst.Color = color
    bst.Thickness = 1.5
    bst.Parent = btn
    
    return btn
end

local GodBtn = CreateButton("GodBtn", "ACTIVATE GHOST IMMORTAL", UDim2.new(0.075, 0, 0.25, 0), Color3.fromRGB(0, 255, 0))
local CrimsonBtn = CreateButton("CrimsonBtn", "SHADER: CRIMSON VOID", UDim2.new(0.075, 0, 0.45, 0), Color3.fromRGB(255, 0, 0))
local WinterBtn = CreateButton("Winter
    


























