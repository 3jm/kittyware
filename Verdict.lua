local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/WetCheezit/Bracket-V2/main/src.lua"))()
local Window, MainGUI = Library:CreateWindow("kittyware  |  discord.gg/rotten  | Blind#2665 for help")



local MainTab = Window:CreateTab("Main")




local CombatTab = Window:CreateTab("Combat")



local MovementTab = Window:CreateTab("Movement")
local MovementTabGroupBox1 = MovementTab:CreateGroupbox("LocalPlayer", "Left")
local WalkspeedSlider = MovementTabGroupBox1:CreateSlider("Walkspeed", 17, 250, 17, function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
local Jumpheightslider = MovementTabGroupBox1:CreateSlider("Jumpheight", 8, 100, 8, function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = value
 end)

 local MovementTabGroupBox2 = MovementTab:CreateGroupbox("Stats", "Left")
 local winbutton = MovementTabGroupBox2:CreateButton("Win", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-511.14, 62.05, -584.68)
end)



local VisualsTab = Window:CreateTab("Visuals")
local VisualsTabGroupBox1 = VisualsTab:CreateGroupbox("Tiles", "Left")
local RevealTiles = VisualsTabGroupBox1:CreateToggle("Reveal Tiles", function(state)
    if state then
        for i,v in pairs(game:GetService("Workspace").TilePlatform.tiles:GetChildren()) do
            if v:FindFirstChild("TouchInterest") == nil then
                v.Color = Color3.fromRGB(0,255,0)
            else
                v.Color = Color3.fromRGB(255,0,0)
            end
        end
    else
        for i,v in pairs(game:GetService("Workspace").TilePlatform.tiles:GetChildren()) do
            v.Color = Color3.fromRGB(13,105,172)
        end
    end
 end)
 local VisualsTabGroupBox2 = VisualsTab:CreateGroupbox("Customization", "Right")
 local CorrectTileColors = VisualsTabGroupBox2:CreateColorPicker("Correct Tile Color", Color3.fromRGB(13,105,172), function(state)
    for i,v in pairs(game:GetService("Workspace").TilePlatform.tiles:GetChildren()) do
        if v:FindFirstChild("TouchInterest") == nil then
            v.Color = state
        end
    end
 end)
 local IncorrectTileColors = VisualsTabGroupBox2:CreateColorPicker("Incorrect Tile Color", Color3.fromRGB(13,105,172), function(state)
    for i,v in pairs(game:GetService("Workspace").TilePlatform.tiles:GetChildren()) do
        if v:FindFirstChild("TouchInterest") ~= nil then
            v.Color = state
        end
    end
 end)
