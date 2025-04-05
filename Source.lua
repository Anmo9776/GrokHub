local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({Name = "GrokHub | Blox Fruits", HidePremium = false, SaveConfig = true, ConfigFolder = "GrokHub"})

local Player = game.Players.LocalPlayer
local RunService = game:GetService("RunService")

-- Autofarm
local autofarm = false

function startFarm()
    while autofarm and wait() do
        local nearestEnemy = game:GetService("Workspace").Enemies:GetChildren()[1]
        if nearestEnemy then
            Player.Character.HumanoidRootPart.CFrame = nearestEnemy.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)
            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
        end
    end
end

-- Main Tab
local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

MainTab:AddToggle({
	Name = "AutoFarm (Lv.1-2600)",
	Default = false,
	Callback = function(Value)
		autofarm = Value
		if Value then
			startFarm()
		end
	end    
})

MainTab:AddButton({
	Name = "Auto Race V1-V3",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Anmo9776/Race-Awakener/main/RaceV1V2V3.lua"))()
  	end    
})

MainTab:AddButton({
	Name = "Auto Second Sea Quest (Lv. 700+)",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Anmo9776/SeaTwoQuest/main/SecondSea.lua"))()
  	end    
})

MainTab:AddButton({
	Name = "Auto Third Sea Quest (Lv. 1500+)",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Anmo9776/SeaThreeQuest/main/ThirdSea.lua"))()
  	end    
})

MainTab:AddButton({
	Name = "Auto Sea Events",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Anmo9776/SeaEvents/main/auto.lua"))()
  	end    
})

MainTab:AddButton({
	Name = "Auto Boat Drive + Fly",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Anmo9776/BoatFly/main/script.lua"))()
  	end    
})

MainTab:AddButton({
	Name = "Teleport GUI",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Anmo9776/IslandTP/main/gui.lua"))()
  	end    
})

MainTab:AddButton({
	Name = "Auto Raids + Awaken Fruits",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Anmo9776/RaidAwaken/main/script.lua"))()
  	end    
})

MainTab:AddButton({
	Name = "Auto Unstore Fruits",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Anmo9776/UnstoreFruits/main/script.lua"))()
  	end    
})

-- Credits Tab
local CreditsTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://6031071050",
	PremiumOnly = false
})

CreditsTab:AddParagraph("Made by", "GrokHub - @notyourbicon")

OrionLib:Init()
