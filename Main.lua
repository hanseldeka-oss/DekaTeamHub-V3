local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Delta Executor | BRAINROT SYNC V6",
   LoadingTitle = "DekaTeamHub - Anti-Rotation",
   LoadingSubtitle = "By DekaTeamhub",
   ConfigurationPath = "BrainrotConfig",
   KeySystem = false
})

local MainTab = Window:CreateTab("Inventory Dupe", 4483362458)
local DupeSection = MainTab:CreateSection("Brainrot Dupe 1 to 2 (FIXED)")

MainTab:CreateButton({
   Name = "Execute Linear Brainrot (No Spin)",
   Callback = function()
      local player = game.Players.LocalPlayer
      local tool = player.Character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool")
      
      if tool then
          -- Dupe ke Inventory
          local clonedTool = tool:Clone()
          clonedTool.Name = tool.Name .. " [DUPED]"
          clonedTool.Parent = player.Backpack
          
          -- Logic Animasi Meliuk Tanpa Muter
          local function ApplyLinearBrainrot(item)
              local handle = item:FindFirstChild("Handle") or item:FindFirstChildWhichIsA("BasePart")
              if not handle then return end
              
              local originalGrip = item.Grip
              spawn(function()
                  local t = 0
                  while item and item.Parent do
                      if item.Parent == player.Character then
                          t = t + 0.2 -- Speed tinggi buat vibe brainrot
                          
                          -- PURE POSITION SHIFT (Gak ada rotasi/Angles sama sekali)
                          local offsetX = math.sin(t * 12) * 1.5 -- Meliuk Kiri-Kanan
                          local offsetY = math.cos(t * 15) * 1.8 -- Bouncing Atas-Bawah
                          local offsetZ = math.sin(t * 10) * 0.8 -- Maju-Mundur dikit
                          
                          -- item.Grip cuma diubah posisinya (CFrame.new), bukan rotasinya
                          item.Grip = originalGrip * CFrame.new(offsetX, offsetY, offsetZ)
                      end
                      task.wait(0.01)
                  end
              end)
          end

          ApplyLinearBrainrot(tool)
          ApplyLinearBrainrot(clonedTool)

          Rayfield:Notify({
             Title = "Fixed Logic",
             Content = "Gerakan sekarang linear meliuk tanpa muter-muter!",
             Duration = 3,
             Image = 4483362458,
          })
      else
          Rayfield:Notify({Title = "Error", Content = "Pegang itemnya!", Duration = 3})
      end
   end,
})

Rayfield:LoadConfiguration()



















