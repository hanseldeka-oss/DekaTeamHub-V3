-- [[ DEKATEAMHUB GALAXY 3D UI ]]
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Title = Instance.new("TextLabel")
local GodModeBtn = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "GalaxyFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0, 250, 0, 180)
MainFrame.Active = true
MainFrame.Draggable = true 

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(15, 0, 45)), 
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(60, 20, 100)), 
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 50, 120)) 
}
UIGradient.Rotation = 45
UIGradient.Parent = MainFrame

UIStroke.Parent = MainFrame
UIStroke.Thickness = 2
UIStroke.Color = Color3.fromRGB(150, 100, 255)
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0.05, 0)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Font = Enum.Font.GothamBold
Title.Text = "DEKATEAMHUB GALAXY"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18

GodModeBtn.Name = "GodModeBtn"
GodModeBtn.Parent = MainFrame
GodModeBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GodModeBtn.BackgroundTransparency = 0.8
GodModeBtn.Position = UDim2.new(0.1, 0, 0.4, 0)
GodModeBtn.Size = UDim2.new(0.8, 0, 0, 40)
GodModeBtn.Font = Enum.Font.GothamSemibold
GodModeBtn.Text = "ACTIVATE GOD MODE"
GodModeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GodModeBtn.TextSize = 14

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 8)
ButtonCorner.Parent = GodModeBtn

local godModeActive = false
GodModeBtn.MouseButton1Click:Connect(function()
    godModeActive = not godModeActive
    if godModeActive then
        GodModeBtn.Text = "GOD MODE: ON"
        GodModeBtn.TextColor3 = Color3.fromRGB(0, 255, 150)
        task.spawn(function()
            while godModeActive do
                pcall(function()
                    local char = game.Players.LocalPlayer.Character
                    if char and char:FindFirstChild("Humanoid") then
                        char.Humanoid.MaxHealth = 9e9
                        char.Humanoid.Health = 9e9
                    end
                end)
                task.wait(0.1)
            end
        end)
    else
        GodModeBtn.Text = "ACTIVATE GOD MODE"
        GodModeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 100
        game.Players.LocalPlayer.Character.Humanoid.Health = 100
    end
end)



















