-- [[ DEKATEAMHUB V6.8 - ULTRA FORCE APPEAR ]]
-- Theme: Ocean Blue 3D RGB | Fixed Parent Logic

local ScreenGui = Instance.new("ScreenGui")
local success, err = pcall(function()
    ScreenGui.Parent = game:GetService("CoreGui")
end)
if not success then
    ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
end

ScreenGui.Name = "DekaTeamHub_V6_Fixed"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

-- [[ 1. INTRO SYSTEM ]]
local IntroFrame = Instance.new("Frame", ScreenGui)
IntroFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IntroFrame.Size = UDim2.new(1, 0, 1, 0)
IntroFrame.ZIndex = 999 -- Paksa paling depan

local WelcomeText = Instance.new("TextLabel", IntroFrame)
WelcomeText.BackgroundTransparency = 1
WelcomeText.Position = UDim2.new(0.5, -200, 0.4, 0)
WelcomeText.Size = UDim2.new(0, 400, 0, 50)
WelcomeText.Font = Enum.Font.GothamBold
WelcomeText.Text = "Selamat Datang!\nMakasih udah pake script ini ☺️"
WelcomeText.TextColor3 = Color3.fromRGB(255, 255, 255)
WelcomeText.TextSize = 22
WelcomeText.ZIndex = 1000

-- [[ 2. MAIN UI ]]
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 50, 120)
MainFrame.Position = UDim2.new(0.5, -140, 0.5, -130)
MainFrame.Size = UDim2.new(0, 280, 0, 260)
MainFrame.Visible = false 
MainFrame.Active = true
MainFrame.Draggable = true 
MainFrame.ZIndex = 5

local UIStroke = Instance.new("UIStroke", MainFrame)
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
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Font = Enum.Font.GothamBold
Title.Text = "DEKATEAMHUB OCEAN"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18

-- [[ SHADER BUTTONS ]]
local function CreateBtn(text, pos)
    local btn = Instance.new("TextButton", MainFrame)
    btn.BackgroundColor3 = Color3.fromRGB(0, 70, 150)
    btn.Position = pos
    btn.Size = UDim2.new(0.85, 0, 0, 50)
    btn.Font = Enum.Font.GothamSemibold
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 14
    Instance.new("UICorner", btn)
    return btn
end

local CrimsonBtn = CreateBtn("CRIMSON: OFF", UDim2.new(0.075, 0, 0.3, 0))
local WinterBtn = CreateBtn("WINTER: OFF", UDim2.new(0.075, 0, 0.6, 0))

-- SHADER LOGIC
local Lighting = game:GetService("Lighting")
local cA, wA = false, false
local function Clean() for _, v in pairs(Lighting:GetChildren()) do if v:IsA("PostEffect") then v:Destroy() end end end

CrimsonBtn.MouseButton1Click:Connect(function()
    cA = not cA; wA = false; Clean()
    if cA then
        Instance.new("ColorCorrectionEffect", Lighting).TintColor = Color3.fromRGB(255, 150, 150)
        CrimsonBtn.Text = "CRIMSON: ON"
        WinterBtn.Text = "WINTER: OFF"
    else CrimsonBtn.Text = "CRIMSON: OFF" end
end)

WinterBtn.MouseButton1Click:Connect(function()
    wA = not wA; cA = false; Clean()
    if wA then
        Instance.new("BlurEffect", Lighting).Size = 10
        WinterBtn.Text = "WINTER: ON"
        CrimsonBtn.Text = "CRIMSON: OFF"
    else WinterBtn.Text = "WINTER: OFF" end
end)

-- [[ 3. FORCE APPEAR SEQUENCE ]]
task.wait(0.1) -- Jeda dikit biar engine roblox gak kaget
IntroFrame.Visible = true
task.wait(2) -- Intro 2 detik
IntroFrame:Destroy()
MainFrame.Visible = true
print("DekaTeamHub Loaded Successfully!")

    





    


























