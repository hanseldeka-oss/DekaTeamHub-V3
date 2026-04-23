-- [[ DEKATEAMHUB V6.1 - STABLE BEACH INTRO & VOID 3D ]]

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "DekaTeamHub_V6"

-- [[ 1. REALISTIC BEACH INTRO SYSTEM ]]
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
IntroImage.Image = "rbxassetid://13512300407" -- Asset Pantai
IntroImage.ScaleType = Enum.ScaleType.Crop

WelcomeText.Parent = IntroFrame
WelcomeText.BackgroundTransparency = 1
WelcomeText.Position = UDim2.new(0.5, -200, 0.4, 0)
WelcomeText.Size = UDim2.new(0, 400, 0, 50)
WelcomeText.Font = Enum.Font.GothamBold
WelcomeText.Text = "LOADING DEKATEAMHUB..."
WelcomeText.TextColor3 = Color3.fromRGB(255, 255, 255)
WelcomeText.TextSize = 25

LoadingBar.Parent = IntroFrame
LoadingBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
LoadingBar.Position = UDim2.new(0.5, -150, 0.55, 0)
LoadingBar.Size = UDim2.new(0, 300, 0, 10)
local lbcr = Instance.new("UICorner")
lbcr.Parent = LoadingBar

Progress.Parent = LoadingBar
Progress.BackgroundColor3 = Color3.fromRGB(0, 200, 255) -- Warna Air Laut
Progress.Size = UDim2.new(0, 0, 1, 0)
local pbcr = Instance.new("UICorner")
pbcr.Parent = Progress

-- [[ 2. MAIN UI (VOID 3D) ]]
local MainFrame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Title = Instance.new("TextLabel")

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0, 280, 0, 320)
MainFrame.Visible = false 
MainFrame.Active = true
MainFrame.Draggable = true 

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 0, 0))
}
UIGradient.Parent = MainFrame

local function CreateButton(name, text, pos, color)
    local btn = Instance.new("TextButton")
    btn.Parent = MainFrame
    btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    btn.Position = pos
    btn.Size = UDim2.new(0.85, 0, 0, 45)
    btn.Font = Enum.Font.GothamSemibold
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 13
    local bcr = Instance.new("UICorner")
    bcr.Parent = btn
    return btn
end

local GodBtn = CreateButton("GodBtn", "ACTIVATE GHOST IMMORTAL", UDim2.new(0.075, 0, 0.25, 0))
local CrimsonBtn = CreateButton("CrimsonBtn", "CRIMSON VOID SHADER", UDim2.new(0.075, 0, 0.45, 0))
local WinterBtn = CreateButton("WinterBtn", "NUCLEAR WINTER SHADER", UDim2.new(0.075, 0, 0.65, 0))

-- [[ 3. LOGIC & INTRO ANIMATION ]]
task.spawn(function()
    -- Animasi Loading Bar
    Progress:TweenSize(UDim2.new(1, 0, 1, 0), "Out", "Linear", 3)
    task.wait(3)
    
    -- Fade Out Intro
    for i = 0, 1, 0.1 do
        IntroFrame.GroupTransparency = i -- Jika pakai CanvasGroup, kalau tidak:
        IntroFrame.BackgroundTransparency = i
        IntroImage.ImageTransparency = i
        WelcomeText.TextTransparency = i
        task.wait(0.05)
    end
    
    IntroFrame:Destroy()
    MainFrame.Visible = true
end)

-- (Logic Immortal & Shader tetap sama seperti sebelumnya biar stabil)

    


























