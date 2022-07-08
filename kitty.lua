local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/WetCheezit/Bracket-V2/main/src.lua"))()
local Window, MainGUI = Library:CreateWindow("kittyware  |  discord.gg/rotten  | Blind#2665 for help")



local MovementTab = Window:CreateTab("Movement")
local MovementTabGroupBox1 = MovementTab:CreateGroupbox("LocalPlayer", "Left")
local WalkspeedSlider = MovementTabGroupBox1:CreateSlider("Walkspeed", 17, 350, 17, function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
local Jumpheightslider = MovementTabGroupBox1:CreateSlider("Jumpheight", 8, 200, 8, function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = value
 end)

 local MovementTabGroupBox2 = MovementTab:CreateGroupbox("Stats", "Left")
 local winbutton = MovementTabGroupBox2:CreateButton("Win", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-511.14, 62.05, -584.68)
end)
local MovementTabGroupBox3 = MovementTab:CreateGroupbox("Barriers", "Left")
local removedeathbarrier = MovementTabGroupBox3:CreateToggle("Remove Death Barrier", function(state)
    if state then
        local kittywaredeathbarriercockblocker9000 = Instance.new("Part")
        kittywaredeathbarriercockblocker9000.Name = "kittywaredeathbarriercockblocker9000"
        kittywaredeathbarriercockblocker9000.Transparency = 1
        kittywaredeathbarriercockblocker9000.Anchored = true
        
        kittywaredeathbarriercockblocker9000.Position = Vector3.new(37.465271, 46.6432571, -580.249756, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        kittywaredeathbarriercockblocker9000.Size = Vector3.new(1250, 13, 185)
        kittywaredeathbarriercockblocker9000.Parent = game.Workspace
    else
        game.Workspace.kittywaredeathbarriercockblocker9000:remove()
    end
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
 end)local incorrecttiletransparency = VisualsTabGroupBox1:CreateToggle("Incorrect Tile Transparency",  function(state)
    if state then
        for i,v in pairs(game:GetService("Workspace").TilePlatform.tiles:GetChildren()) do
            if v:FindFirstChild("TouchInterest") ~= nil then
                v.Transparency = 1
            end
        end
    else
        for i,v in pairs(game:GetService("Workspace").TilePlatform.tiles:GetChildren()) do
            if v:FindFirstChild("TouchInterest") ~= nil then
                v.Transparency = 0.4
            end
        end
    end
 end)
 local destroyincorrecttiles = VisualsTabGroupBox1:CreateButton("Remove Incorrect Tiles", function()
    for i,v in pairs(game:GetService("Workspace").TilePlatform.tiles:GetChildren()) do
        if v:FindFirstChild("TouchInterest") ~= nil then
            v:remove()
        end
    end
end)
local MovementTabGroupBox3 = MovementTab:CreateGroupbox("Trolling", "Right")
local Trolling = MovementTabGroupBox3:CreateToggle("Trolling [Coming Soon]", function(state)
    if state then
        print("Coming soon...")
    else
        print("Coming soon...")
    end
end)
