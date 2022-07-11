local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/WetCheezit/Bracket-V2/main/src.lua"))()
local Window, MainGUI = Library:CreateWindow("kittyware  (Public)  |  discord.gg/rotten  | Blind#2665 for help")

local removewallbarriers = false

local MovementTab = Window:CreateTab("Movement")
local MovementTabGroupBox1 = MovementTab:CreateGroupbox("LocalPlayer", "Left")
local WalkspeedSlider = MovementTabGroupBox1:CreateSlider("Walkspeed", 17, 350, 17, function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
local Jumpheightslider = MovementTabGroupBox1:CreateSlider("Jumpheight", 8, 200, 8, function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = value
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

local removewwallbarriers = MovementTabGroupBox3:CreateButton("Remove Wall Barrier", function()
    if removewallbarriers == true then
        local StarterGui = game:GetService("StarterGui")
        StarterGui:SetCore("SendNotification", {
            Title = "Cannot Do That",
            Text = "You already clicked remove wall barriers",
            Duration = 5,
        })
    else
        removewallbarriers = true
        game:GetService("Workspace").box.Part:remove()
        game:GetService("Workspace").box.Part:remove()
        game:GetService("Workspace").box.Part:remove()
        game:GetService("Workspace").box.box:remove()
        game:GetService("Workspace").box.Part:remove()
    end
end)

local MovementTabGroupBox4 = MovementTab:CreateGroupbox("Teleports", "Left")
local winbutton = MovementTabGroupBox4:CreateButton("Win", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-511.140015, 62.0481224, -584.679993, 1, 8.22256183e-08, -1.43949167e-14, -8.22256183e-08, 1, -1.23781909e-08, 1.33771117e-14, 1.23781909e-08, 1)
end)
local spawnbutton = MovementTabGroupBox4:CreateButton("Spawn", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(161.567398, 61.9308853, -583.634277, -0.19964692, 8.80198581e-09, 0.979867876, 6.05666699e-08, 1, 3.35755912e-09, -0.979867876, 6.0017662e-08, -0.19964692)
end)
local viproombutton = MovementTabGroupBox4:CreateButton("VIP Room", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(67099.0078, 21210.3965, 4070.12256, -0.997561932, 0, 0.0697919354, 0, 1, 0, -0.0697919354, 0, -0.997561932)
end)
local abovemapbutton = MovementTabGroupBox4:CreateButton("Above Map", function()
    if removewallbarriers == false then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(37.465271, 170.281647, -580.249756, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    else
        local StarterGui = game:GetService("StarterGui")
        StarterGui:SetCore("SendNotification", {
            Title = "Cannot Do That",
            Text = "You clicked remove wall barriers, which removed the barrier used to stand on top of the map",
            Duration = 5,
        })
    end
end)
local wheeloffourtunebutton = MovementTabGroupBox4:CreateButton("Wheel of Fortune", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(210.555405, 60.49263, -556.323608, -0.392448723, -3.90968289e-08, -0.919773877, -5.44064749e-09, 1, -4.01855864e-08, 0.919773877, -1.07666169e-08, -0.392448723)
end)
local flybutton = MovementTabGroupBox1:CreateButton("Fly [E]", function()
    repeat wait()
    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
    local mouse = game.Players.LocalPlayer:GetMouse()
    repeat wait() until mouse
    local plr = game.Players.LocalPlayer
    local torso = plr.Character.Torso
    local flying = true
    local deb = true
    local ctrl = {f = 0, b = 0, l = 0, r = 0}
    local lastctrl = {f = 0, b = 0, l = 0, r = 0}
    local maxspeed = 50
    local speed = 0
    
    function Fly()
    local bg = Instance.new("BodyGyro", torso)
    bg.P = 9e4
    bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    bg.cframe = torso.CFrame
    local bv = Instance.new("BodyVelocity", torso)
    bv.velocity = Vector3.new(0,0.1,0)
    bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
    repeat wait()
    plr.Character.Humanoid.PlatformStand = true
    if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
    speed = speed+.5+(speed/maxspeed)
    if speed > maxspeed then
    speed = maxspeed
    end
    elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
    speed = speed-1
    if speed < 0 then
    speed = 0
    end
    end
    if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
    elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
    else
    bv.velocity = Vector3.new(0,0.1,0)
    end
    bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
    until not flying
    ctrl = {f = 0, b = 0, l = 0, r = 0}
    lastctrl = {f = 0, b = 0, l = 0, r = 0}
    speed = 0
    bg:Destroy()
    bv:Destroy()
    plr.Character.Humanoid.PlatformStand = false
    end
    mouse.KeyDown:connect(function(key)
    if key:lower() == "e" then
    if flying then flying = false
    else
    flying = true
    Fly()
    end
    elseif key:lower() == "w" then
    ctrl.f = 1
    elseif key:lower() == "s" then
    ctrl.b = -1
    elseif key:lower() == "a" then
    ctrl.l = -1
    elseif key:lower() == "d" then
    ctrl.r = 1
    end
    end)
    mouse.KeyUp:connect(function(key)
    if key:lower() == "w" then
    ctrl.f = 0
    elseif key:lower() == "s" then
    ctrl.b = 0
    elseif key:lower() == "a" then
    ctrl.l = 0
    elseif key:lower() == "d" then
    ctrl.r = 0
    end
    end)
    Fly()
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

local CreditsTab = Window:CreateTab("Credits")
local CreditsTabGroupBox1 = CreditsTab:CreateGroupbox("Credits", "Left")
local developercredits = CreditsTabGroupBox1:CreateButton("Main Developer: Blind", function()
end)
local guicredits = CreditsTabGroupBox1:CreateButton("UI Library: WetCheezit", function()
end)
local somefeaturescredit = CreditsTabGroupBox1:CreateButton("Feature ideas: rush", function()
end)
local CreditsTabGroupBox2 = CreditsTab:CreateGroupbox("Discord", "Right")
local joindiscordbutton = CreditsTabGroupBox2:CreateButton("https://discord.gg/rotten", function()
end)
local text1 = CreditsTabGroupBox2:CreateButton("To suggest features", function()
end)
local text2 = CreditsTabGroupBox2:CreateButton("join our discord and mention @Blind#2665", function()
end)
