-- [[ DEKATEAMHUB - OCEAN BLUE 3D + REALISTIC BEACH SHADER ]]

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
local ShaderBtn = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0, 260, 0, 240) -- Tinggi ditambah buat tombol shader
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
Title.Text = "DEKATEAMHUB - V3 SHADER"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16

-- [[ BUTTONS ]]
local function StyleButton(btn, pos)
    btn.Parent = MainFrame
    btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    btn.BackgroundTransparency = 0.8
    btn.Position = pos
    btn.Size = UDim2.new(0.8, 0, 0, 40)
    btn.Font = Enum.Font.GothamSemibold
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 13
    local bcr = Instance.new("UICorner")
    bcr.CornerRadius = UDim.new(0, 10)
    bcr.Parent = btn
end

StyleButton(GodModeBtn, UDim2.new(0.1, 0, 0.3, 0))
GodModeBtn.Text = "ACTIVATE GOD MODE"

StyleButton(ShaderBtn, UDim2.new(0.1, 0, 0.55, 0))
ShaderBtn.Text = "ENABLE BEACH SHADER"

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

-- [[ 4. LOGIC ]]
local godActive = false
GodModeBtn.MouseButton1Click:Connect(function()
    godActive = not godActive
    GodModeBtn.Text = godActive and "GOD: ON (STABLE)" or "ACTIVATE GOD MODE"
    GodModeBtn.TextColor3 = godActive and Color3.fromRGB(0, 255, 150) or Color3.fromRGB(255, 255, 255)
    
    task.spawn(function()
        while godActive do
            pcall(function()
                local char = game.Players.LocalPlayer.Character
                char.Humanoid.Health = char.Humanoid.MaxHealth
                char.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                char.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
            end)
            task.wait()
        end
    end)
end)

local shaderActive = false
ShaderBtn.MouseButton1Click:Connect(function()
    shaderActive = not shaderActive
    ShaderBtn.Text = shaderActive and "SHADER: ON" or "ENABLE BEACH SHADER"
    
    local Light = game:GetService("Lighting")
    if shaderActive then
        -- Inject Realistic Beach Effects
        local bloom = Instance.new("BloomEffect", Light)
        bloom.Intensity = 1
        bloom.Size = 24
        
        local sunRays = Instance.new("SunRaysEffect", Light)
        sunRays.Intensity = 0.1
        sunRays.Spread = 1
        
        local colorCorr = Instance.new("ColorCorrectionEffect", Light)
        colorCorr.Brightness = 0.1
        colorCorr.Contrast = 0.1
        colorCorr.Saturation = 0.2
        colorCorr.TintColor = Color3.fromRGB(255, 245, 230) -- Warm Sand Vibe
    else
        -- Clean Shaders
        for _, v in pairs(Light:GetChildren()) do
            if v:IsA("BloomEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") then
                v:Destroy()
            end
        end
    end
end)























