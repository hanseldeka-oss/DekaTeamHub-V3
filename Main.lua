-- [[ DEKATEAMHUB V6.7 - ANTI-EXECUTION FAILURE ]]
-- Theme: Ocean Blue 3D RGB | Safe & Stable

local ParentUI
if game:GetService("RunService"):IsStudio() then
    ParentUI = game.Players.LocalPlayer:WaitForChild("PlayerGui")
else
    local success, err = pcall(function()
        ParentUI = game:GetService("CoreGui")
    end)
    if not success then
        ParentUI = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    end
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = ParentUI
ScreenGui.Name = "DekaTeamHub_V6_Ocean"
ScreenGui.ResetOnSpawn = false

-- [[ 1. FAST BEACH INTRO (2 SECONDS) ]]
local IntroFrame = Instance.new("Frame")
local IntroImage = Instance.new("ImageLabel")
local WelcomeText = Instance.new("TextLabel")
local SubText = Instance.new("TextLabel")
local LoadingBar = Instance.new("Frame")
local Progress = Instance.new("Frame")

IntroFrame.Name = "IntroFrame"
IntroFrame.Parent = ScreenGui
IntroFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IntroFrame.Size = UDim2.new(1, 0, 1, 0)
IntroFrame.ZIndex = 100 -- Pastiin paling depan

IntroImage.Parent = IntroFrame
IntroImage.BackgroundTransparency = 1
IntroImage.Size = UDim2.new(1, 0, 1, 0)
IntroImage.Image = "rbxassetid://13512300407" 
IntroImage.ScaleType = Enum.ScaleType.Crop

WelcomeText.Parent = IntroFrame
WelcomeText.BackgroundTransparency = 1
WelcomeText.Position = UDim2.new(0.5, -200, 0.35, 0)
WelcomeText.Size = UDim2.new(0, 400, 0, 50)
WelcomeText.Font = Enum.Font.GothamBold
WelcomeText.Text = "Selamat Datang!"
WelcomeText.TextColor3 = Color3.fromRGB(255, 255, 255)
WelcomeText.TextSize = 30

SubText.Parent = IntroFrame
SubText.BackgroundTransparency = 1
SubText.Position = UDim2.new(0.5, -200, 0.43, 0)
SubText.Size = UDim2.new(0, 400, 0, 30)
SubText.Font = Enum.Font.GothamSemibold
SubText.Text = "Makasih udah pake script ini ☺️"
SubText.TextColor3 = Color3.fromRGB(0, 200, 255)
SubText.TextSize = 18

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
local UIStroke = Instance.new("UIStroke")

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 50, 120) 
MainFrame.Position = UDim2.new(0.5, -140, 0.5, -130)
MainFrame.Size = UDim2.new(0, 280, 0, 260)
MainFrame.Visible = false 
MainFrame.Active = true
MainFrame.Draggable = true 
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 15)

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 120, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 30, 80))
}
UIGradient.Rotation = 45
UIGradient.Parent = MainFrame

UIStroke.Parent = MainFrame
UIStroke.Thickness = 3
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- RGB Logic
task.spawn(function()
    while task.wait() do
        UIStroke.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
    end
end)

local Title = Instance.new("TextLabel", MainFrame)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0.05, 0)
Title.Size = UDim2.new(1, 0, 0, 35)
Title.Font = Enum.Font.GothamBold
Title.Text = "DEKATEAMHUB OCEAN"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16

-- [[ BUTTON CREATOR ]]
local function CreateButton(text, pos)
    local btn = Instance.new("TextButton", MainFrame)
    btn.BackgroundColor3 = Color3.fromRGB(0, 70, 150)
    btn.Position = pos
    btn.Size = UDim2.new(0.85, 0, 0, 50)
    btn.Font = Enum.Font.GothamSemibold
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 13
    Instance.new("UICorner", btn)
    local bst = Instance.new("UIStroke", btn)
    bst.Color = Color3.fromRGB(0, 200, 255)
    return btn
end

local CrimsonBtn = CreateButton("CRIMSON VOID: OFF", UDim2.new(0.075, 0, 0.3, 0))
local WinterBtn = CreateButton("NUCLEAR WINTER: OFF", UDim2.new(0.075, 0, 0.6, 0))

-- [[ 3. SHADER LOGIC ]]
local Lighting = game:GetService("Lighting")
local cAct, wAct = false, false

local function Clean()
    for _, v in pairs(Lighting:GetChildren()) do
        if v:IsA("PostEffect") then v:Destroy() end
    end
end

CrimsonBtn.MouseButton1Click:Connect(function()
    cAct = not cAct
    wAct = false
    Clean()
    if cAct then
        local b = Instance.new("BloomEffect",
                
    





    


























