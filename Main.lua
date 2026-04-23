-- [[ DEKATEAMHUB BETA - GITHUB LOADER ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "DekaTeamHub Beta version",
   LoadingTitle = "DekaTeamHub Beta",
   LoadingSubtitle = "By DekaTeamhub Beta",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "DekaTeamHub",
      FileName = "BrainrotConfig"
   }
})

local Tab = Window:CreateTab("Auto Farm", 4483362458)

local _G = {
    AutoFarm = false,
    -- URL RAW GITHUB LO (Ganti link di bawah ini dengan link raw script lo)
    ScriptSource = "https://raw.githubusercontent.com/UsernameLo/DekaTeamHub/main/BrainrotEvolution.lua"
}

Tab:CreateToggle({
   Name = "Auto Farm (Level Match)",
   CurrentValue = false,
   Flag = "AutoFarmToggle",
   Callback = function(Value)
      _G.AutoFarm = Value
      
      -- Load script langsung dari Github
      local function ExecuteFarm()
          loadstring(game:HttpGet(_G.ScriptSource))()
      end

      task.spawn(function()
          while _G.AutoFarm do
              pcall(ExecuteFarm) -- Pcall biar gak crash kalau koneksi Github drop
              task.wait(1) -- Delay check per second
          end
      end)
   end,
})

Rayfield:Notify({
   Title = "Github Link Active",
   Content = "Source code sekarang narik langsung dari repository, Boss.",
   Duration = 5,
   Image = 4483362458,
})




















