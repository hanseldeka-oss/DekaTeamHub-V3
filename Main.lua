-- [[ DEKATEAMHUB - OCEAN BLUE 3D + INTRO ]]

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

-- Background Pantai (Lo bisa ganti ImageId kalo punya yang lebih bagus)
IntroImage.Parent = IntroFrame
IntroImage.BackgroundTransparency = 1
IntroImage.Size = UDim2.new(1, 0, 1, 0)
IntroImage.Image = "rbxassetid://6015501306" -- ID Background Pantai Tropis
IntroImage.ScaleType = Enum.ScaleType.Crop

WelcomeText.Parent = IntroFrame
WelcomeText.BackgroundTransparency = 1
WelcomeText.Position = UDim2.new(0.5, -150, 0.4, 0)
WelcomeText.Size = UDim2.new(0, 300, 0, 100)
WelcomeText.Font = Enum.Font.GothamBold
WelcomeText.Text = "SELAMAT DATANG DI DEKATEAMHUB"
WelcomeText.TextColor3 = Color3.fromRGB(255, 255, 255)
WelcomeText.TextSize = 30
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
MainFrame.Visible = false -- Sembunyi dulu sampe intro kelar
MainFrame.Active = true
MainFrame.Draggable = true 

-- Gradasi Blue Ocean (Deep Sea to Light Cyan)
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 20, 50)), -- Deep Ocean
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 105, 148)), -- Blue Sea
    ColorSequenceKeypoint.new(1, Color3.fromRGB(127, 255, 212)) -- Aquamarine
}
UIGradient.Rotation = 45
UIGradient.Parent = MainFrame

UIStroke.Parent = MainFrame
UIStroke.Thickness = 2.5
UIStroke.Color = Color3.fromRGB(0, 190, 255) -- Glow Biru Laut
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = MainFrame

Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0.05, 0)
Title.Size = UDim2.new(1, 0, 0, 35)
Title.Font = Enum.Font.GothamBold
Title.Text = "DEKATEAMHUB - OCEAN BLUE"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16

GodModeBtn.Name = "GodModeBtn"
GodModeBtn.Parent = MainFrame
GodModeBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GodModeBtn.BackgroundTransparency = 0.8
GodModeBtn.Position = UDim2.new(0.1, 0, 0.45, 0)
GodModeBtn.Size = UDim2.new(0.8, 0, 0, 45)
GodModeBtn.Font = Enum.Font.GothamSemibold
GodModeBtn.Text = "ACTIVATE TRUE GOD"
GodModeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GodModeBtn.TextSize = 14

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 10)
ButtonCorner.Parent = GodModeBtn

-- [[ 3. INTRO SEQUENCE ]]
task.spawn(function()
    task.wait(2) -- Durasi intro (2 detik)
    for i = 0, 1, 0.1 do
        IntroFrame.BackgroundTransparency = i
        IntroImage.ImageTransparency = i
        WelcomeText.TextTransparency = i
        task.wait(0.05)
    end
    IntroFrame:Destroy()
    MainFrame.Visible = true
end)

-- [[ 4. TRUE GOD LOGIC ]]
local godModeActive = false
GodModeBtn.MouseButton1Click:Connect(function()
    godModeActive = not godModeActive
    if godModeActive then
        GodModeBtn.Text = "TRUE GOD: ON"
        GodModeBtn.TextColor3 = Color3.fromRGB(0, 255, 255)
        task.spawn(function()
            while godModeActive do
                pcall(function()
                    local char = game.Players.LocalPlayer.Character
                    if char and char:FindFirstChild("Humanoid") then
                        char.Humanoid.Health = char.Humanoid.MaxHealth
                        char.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
                    end
                end)
                task.wait()
            end
        end)
    else
        GodModeBtn.Text = "ACTIVATE TRUE GOD"
        GodModeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
    end
end)




















