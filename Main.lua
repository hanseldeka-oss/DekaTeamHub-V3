
-- [[ FORCE AUDIO BYPASS ]] --
local function ForcePlay(id)
    local s = Instance.new("Sound")
    s.SoundId = "rbxassetid://"..id
    s.Volume = 10
    s.Looped = true
    s.Parent = game:GetService("SoundService")
    s:Play()
    -- Bypass tambahan untuk Mobile Executor
    game:GetService("SoundService"):PlayLocalSound(s)
end

ForcePlay(1636151740) -- Horror
ForcePlay(4637175245) -- Static













