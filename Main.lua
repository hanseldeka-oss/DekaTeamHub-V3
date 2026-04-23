-- [[ DEKATEAMHUB V6.2 - FAST BEACH INTRO ]]

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "DekaTeamHub_V6"

-- [[ 1. FAST BEACH INTRO SYSTEM (2 SECONDS) ]]
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
local lbcr = Instance.new("UICorner")
lbcr.Parent = LoadingBar

Progress.Parent = LoadingBar
Progress.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
Progress.Size = UDim2.new(0, 0, 1, 0)
local pbcr = Instance.new("UICorner")
pbcr.Parent = Progress

-- [[ 2. MAIN UI (VOID 3D) ]]
local MainFrame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")

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

-- [[ 3. QUICK LOGIC ]]
task.spawn(function()
    -- Loading Bar dipercepat (1.5 detik)
    Progress:TweenSize(UDim2.new(1, 0, 1, 0), "Out", "Quad", 1.5)
    task.wait(1.5)
    
    -- Fade Out Cepat (0.5 detik)
    for i = 0, 1, 0.2 do
        IntroFrame.BackgroundTransparency = i
        IntroImage.ImageTransparency = i
        WelcomeText.TextTransparency = i
        task.wait(0.05)
    end
    
    IntroFrame:Destroy()
    MainFrame.Visible = true
end)

-- Tombol & Fitur GHOST tetap sama (Copy dari V6.1)


    


























