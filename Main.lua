-- [[ DEKATEAMHUB - OCEAN BLUE 3D + ANTI-FLING HOTFIX ]]

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

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
IntroImage.Image = "rbxassetid://13512300407" 
IntroImage.ScaleType = Enum.ScaleType.Crop

WelcomeText.Parent = IntroFrame
WelcomeText.BackgroundTransparency = 1
WelcomeText.Position = UDim2.new(0.5, -200, 0.4, 0)
WelcomeText.Size = UDim2.new(0, 400, 0, 100)
WelcomeText.Font = Enum.Font.GothamBold
WelcomeText.Text = "SELAMAT DATANG DI DEKATEAMHUB"
WelcomeText.TextColor3 = Color3.fromRGB(255, 255, 255)
WelcomeText.TextSize = 35
WelcomeText.TextWrapped = true

-- [[ 2. MAIN UI (BLUE OCEAN 3D) ]]
local MainFrame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Title = Instance.new("TextLabel")
local GodModeBtn = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0, 260, 0, 190)
MainFrame.Visible = false 
MainFrame.Active = true
MainFrame.Draggable = true 

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 20, 50)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 105, 148)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(127, 255, 212)) 
}
UIGradient.Rotation = 45
UIGradient.Parent = MainFrame

UIStroke.Parent = MainFrame
UIStroke.Thickness = 2.5
UIStroke.Color = Color3.fromRGB(0, 190, 255) 
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = MainFrame

Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0.05, 0)
Title.Size = UDim2.new(1, 0, 0, 35)
Title.Font = Enum.Font.GothamBold
Title.Text = "DEKATEAMHUB - V3 FINAL"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16

GodModeBtn.Name = "GodModeBtn"
GodModeBtn.Parent = MainFrame
GodModeBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GodModeBtn.BackgroundTransparency = 0.8
GodModeBtn.Position = UDim2.new(0.1, 0, 0.45, 0)
GodModeBtn.Size = UDim2.new(0.8, 0, 0, 45)
GodModeBtn.Font = Enum.Font.GothamSemibold
GodModeBtn.Text = "ACTIVATE ANTI-FLING GOD"
GodModeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GodModeBtn.TextSize = 14

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 10)
ButtonCorner.Parent = GodModeBtn

-- [[ 3. INTRO SEQUENCE ]]
task.spawn(function()
    task.wait(2) 
    for i = 0, 1, 0.1 do
        IntroFrame.BackgroundTransparency = i
        IntroImage.ImageTransparency = i
        WelcomeText.TextTransparency = i
        task.wait(0.05)
    end
    IntroFrame:Destroy()
    MainFrame.Visible = true
end)

-- [[ 4. ULTRA GOD + ANTI-FLING LOGIC ]]
local godModeActive = false
GodModeBtn.MouseButton1Click:Connect(function()
    godModeActive = not godModeActive
    if godModeActive then
        GodModeBtn.Text = "GOD MODE: STABLE"
        GodModeBtn.TextColor3 = Color3.fromRGB(0, 255, 255)
        
        task.spawn(function()
            while godModeActive do
                pcall(function()
                    local char = game.Players.LocalPlayer.Character
                    if char and char:FindFirstChild("HumanoidRootPart") then
                        -- Fix Ke Pental (Velocity Reset)
                        char.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                        char.HumanoidRootPart.RotVelocity = Vector3.new(0, 0, 0)
                        
                        -- True God Logic
                        char.Humanoid.Health = char.Humanoid.MaxHealth
                        char.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
                    end
                end)
                task.wait()
            end
        end)
    else
        GodModeBtn.Text = "ACTIVATE ANTI-FLING GOD"
        GodModeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
    end
end)






















