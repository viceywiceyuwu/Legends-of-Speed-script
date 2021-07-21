

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/WetCheezit/Bracket-V2/main/src.lua"))()

-- Window
local Window, MainGUI = Library:CreateWindow("TissueSense | Universal")

-- Tabs
local VisualsTab = Window:CreateTab("Visuals")
local AimTab = Window:CreateTab("Aim")
local MiscTab = Window:CreateTab("Misc")

local VisualsGroupBox = VisualsTab:CreateGroupbox("Visuals", "Left")
local AimGroupBox = AimTab:CreateGroupbox("Aim", "Left")
local MiscGroupBox = MiscTab:CreateGroupbox("Misc", "Left")

local LegendsOfSpeedXP = MiscGroupBox:CreateButton('XP Farm', function()
    while wait() do
        local A_1 = "collectOrb"
        local A_2 = "Red Orb"
        local A_3 = "City"
        local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
        Event:FireServer(A_1, A_2, A_3)

        for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
end)

local LegendsOfSpeedRebirth = MiscGroupBox:CreateButton("Auto Rebirth", function ()
    while wait() do
 
    local A_1 = "rebirthRequest"
    local Event = game:GetService("ReplicatedStorage").rEvents.rebirthEvent
    Event:FireServer(A_1)

    end
end)