-- [[ DEKATEAMHUB V9.0 - ULTRA DIRECT LOAD ]]
-- Fixed by Samuel (DekaTeam)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DekaTeamHub_V9"
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 999

-- [[ 1. INTRO (Halo Bos Samuel) ]]
local Intro = Instance.new("Frame", ScreenGui)
Intro.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Intro.Size = UDim2.new(1, 0, 1, 0)
Intro.ZIndex = 1000

local Welcome = Instance.new("TextLabel", Intro)
Welcome.BackgroundTransparency = 1
Welcome.Size = UDim2.new(1, 0, 1, 0)
Welcome.Font = Enum.Font.GothamBold
Welcome.Text = "Halo, Bos Samuel!\nSelamat Datang di DekaTeamHub ☺️"
Welcome.TextColor3 = Color3.fromRGB(0, 200, 255)
Welcome.TextSize = 22

-- [[ 2. MAIN UI ]]
local Main = Instance.new("Frame", ScreenGui)
Main.BackgroundColor3 = Color3.fromRGB(0, 50, 120)
Main.Position = UDim2.new(0.5, -140, 0.5, -130)
Main.Size = UDim2.new(0, 280, 0, 280)
Main.Visible = false 
Main.Active = true
Main.Draggable = true 
Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 15)

local Stroke = Instance.new("UIStroke", Main)
Stroke.Thickness = 3
task.spawn(function()
    while task.wait() do Stroke.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1) end
end)

local function Btn(txt, pos, func)
    local b = Instance.new("TextButton", Main)
    b.BackgroundColor3 = Color3.fromRGB(0, 75, 160)
    b.Position = pos
    b.Size = UDim2.new(0.85, 0, 0, 50)
    b.Font = Enum.Font.GothamSemibold
    b.Text = txt
    b.TextColor3 = Color3.fromRGB(255, 255, 255)
    b.TextSize = 14
    Instance.new("UICorner", b)
    b.MouseButton1Click:Connect(func)
end

-- Blood Moon
Btn("BLOOD MOON", UDim2.new(0.075, 0, 0.25, 0), function()
    game:GetService("Lighting").ClockTime = 0
    local s = Instance.new("Sky", game:GetService("Lighting"))
    s.SkyboxBk = "rbxassetid://14531818241"
    s.MoonTextureId = "rbxassetid://12323631"
end)

-- Badai Salju
Btn("SNOWSTORM ULTRA", UDim2.new(0.075, 0, 0.5, 0), function()
    local p = Instance.new("Part", workspace)
    p.Anchored = true
    p.Transparency = 1
    local att = Instance.new("Attachment", p)
    local emit = Instance.new("ParticleEmitter", att)
    emit.Texture = "rbxassetid://242268300"
    emit.Rate = 2000
    emit.Speed = NumberRange.new(50, 100)
    task.spawn(function()
        while p do
            p.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 100, 0)
            task.wait()
        end
    end)
end)

Btn("RESET ALL", UDim2.new(0.075, 0, 0.75, 0), function()
    for _,v in pairs(game:GetService("Lighting"):GetChildren()) do if v:IsA("Sky") then v:Destroy() end end
end)

-- [[ 3. START ]]
task.wait(0.5)
Main.Visible = true
Intro:Destroy()





    





    






























    





    


























