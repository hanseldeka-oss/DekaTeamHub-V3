-- [[ DEKATEAMHUB V5 - THE GHOST PROTOCOL (FINAL) ]]

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

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
WelcomeText.Text = "DEKATEAMHUB V5: GHOST MODE"
WelcomeText.TextColor3 = Color3.fromRGB(255, 255, 255)
WelcomeText.TextSize = 30
WelcomeText.TextWrapped = true

-- [[ 2. MAIN UI (BLUE OCEAN 3D) ]]
local MainFrame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local GodModeBtn = Instance.new("TextButton")
local ShaderBtn = Instance.new("TextButton")

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0, 260, 0, 240)
MainFrame.Visible = false 
MainFrame.Active = true
MainFrame.Draggable = true 

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 20, 50)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 105, 148)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(127, 255, 212)) 
}
UIGradient.Parent = MainFrame

local function StyleButton(btn, pos)
    btn.Parent = MainFrame
    btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    btn.BackgroundTransparency = 0.8
    btn.Position = pos
    btn.Size = UDim2.new(0.8, 0, 0, 45)
    btn.Font = Enum.Font.GothamSemibold
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 13
    local bcr = Instance.new("UICorner")
    bcr.Parent = btn
end

StyleButton(GodModeBtn, UDim2.new(0.1, 0, 0.3, 0))
GodModeBtn.Text = "ACTIVATE GHOST IMMORTAL"

StyleButton(ShaderBtn, UDim2.new(0.1, 0, 0.6, 0))
ShaderBtn.Text = "ENABLE BEACH SHADER"

-- [[ 3. INTRO SEQUENCE ]]
task.spawn(function()
    task.wait(2) 
    IntroFrame:Destroy()
    MainFrame.Visible = true
end)

-- [[ 4. V5 GHOST LOGIC (SERVER-SIDE BYPASS) ]]
local godActive = false
GodModeBtn.MouseButton1Click:Connect(function()
    godActive = not godActive
    GodModeBtn.Text = godActive and "GHOST: ACTIVE" or "ACTIVATE GHOST IMMORTAL"
    
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    
    if godActive then
        -- TEKNIK GHOST: Hapus Humanoid asli, bikin replika lokal
        local oldHum = char:FindFirstChildOfClass("Humanoid")
        local newHum = oldHum:Clone()
        
        newHum.Parent = char
        oldHum:Destroy() -- Server bakal kehilangan "Target" buat dibunuh
        
        player.Character = char
        newHum.MaxHealth = 100
        newHum.Health = 100 -- Pake angka normal biar server gak curiga
        
        task.spawn(function()
            while godActive do
                pcall(function()
                    if newHum.Health < 100 then
                        newHum.Health = 100 -- Refill instan secara lokal
                    end
                    -- Anti-Fling + Jump Fix
                    if newHum:GetState() ~= Enum.HumanoidStateType.Jumping then
                        char.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                    end
                end)
                task.wait()
            end
        end)
    end
end)

-- Shader Logic
ShaderBtn.MouseButton1Click:Connect(function()
    local Light = game:GetService("Lighting")
    local b = Instance.new("BloomEffect", Light) b.Intensity = 0.5
    local c = Instance.new("ColorCorrectionEffect", Light) c.Saturation = 0.2
    ShaderBtn.Text = "SHADER: ON"
end)


























