-- [[ DEKATEAMHUB V6.5 - TRUE OCEAN RGB ]]
-- Deleted Ghost Mode | Toggleable Shaders | Ocean Blue 3D

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "DekaTeamHub_V6_Ocean"

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
local Title = Instance.new("
    





    


























