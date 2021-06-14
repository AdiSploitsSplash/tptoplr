-- Gui to Lua
-- Version: 3.2

-- Instances:





local tp = Instance.new("ScreenGui")
local gui = Instance.new("Frame")
local title = Instance.new("TextLabel")
local tptotarget = Instance.new("TextButton")
local targetUsername = Instance.new("TextBox")
local urUsername = Instance.new("TextBox")
local nitronadmin = Instance.new("TextButton")

--Properties:

tp.Name = "tp"
tp.Parent = game.CoreGui
tp.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

gui.Name = "gui"
gui.Parent = tp
gui.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
gui.Position = UDim2.new(0.019753091, 0, 0.729729772, 0)
gui.Size = UDim2.new(0, 378, 0, 209)
gui.Active = true
gui.Draggable = true

title.Name = "title"
title.Parent = gui
title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
title.BorderColor3 = Color3.fromRGB(25, 25, 25)
title.Size = UDim2.new(0, 378, 0, 34)
title.Font = Enum.Font.SourceSans
title.Text = "NITRO TP To Player"
title.TextColor3 = Color3.fromRGB(170, 85, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

tptotarget.Name = "tptotarget"
tptotarget.Parent = gui
tptotarget.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
tptotarget.BorderColor3 = Color3.fromRGB(25, 25, 25)
tptotarget.Position = UDim2.new(0.0211640205, 0, 0.535885155, 0)
tptotarget.Size = UDim2.new(0, 362, 0, 43)
tptotarget.Font = Enum.Font.SourceSans
tptotarget.Text = "TP To Player"
tptotarget.TextColor3 = Color3.fromRGB(170, 85, 255)
tptotarget.TextScaled = true
tptotarget.TextSize = 14.000
tptotarget.TextWrapped = true

tptotarget.MouseButton1Click:Connect(function()
    local targetUsername = string.lower(targetUsername.Text)
    local foundChild = false
    local child
    for i,v in pairs(game.Players:GetChildren()) do
        if string.lower(v.Name) == targetUsername then
            foundChild = true
            child = v
        end
        
    end
    if foundChild == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = child.Character.HumanoidRootPart.CFrame
    end
    
    
end)

targetUsername.Name = "targetUsername"
targetUsername.Parent = gui
targetUsername.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
targetUsername.BorderColor3 = Color3.fromRGB(170, 85, 255)
targetUsername.Position = UDim2.new(0.0211640205, 0, 0.220095694, 0)
targetUsername.Size = UDim2.new(0, 362, 0, 25)
targetUsername.Font = Enum.Font.SourceSans
targetUsername.Text = "Target Username"
targetUsername.TextColor3 = Color3.fromRGB(170, 85, 255)
targetUsername.TextScaled = true
targetUsername.TextSize = 14.000
targetUsername.TextWrapped = true

urUsername.Name = "urUsername"
urUsername.Parent = gui
urUsername.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
urUsername.BorderColor3 = Color3.fromRGB(170, 85, 255)
urUsername.Position = UDim2.new(0.0211640205, 0, 0.373205721, 0)
urUsername.Size = UDim2.new(0, 362, 0, 25)
urUsername.Font = Enum.Font.SourceSans
urUsername.Text = "Your Username (Put your username if the GUI is not working)"
urUsername.TextColor3 = Color3.fromRGB(170, 85, 255)
urUsername.TextScaled = true
urUsername.TextSize = 14.000
urUsername.TextWrapped = true

nitronadmin.Name = "nitronadmin"
nitronadmin.Parent = gui
nitronadmin.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
nitronadmin.BorderColor3 = Color3.fromRGB(25, 25, 25)
nitronadmin.Position = UDim2.new(0.0211640205, 0, 0.822966456, 0)
nitronadmin.Size = UDim2.new(0, 362, 0, 29)
nitronadmin.Font = Enum.Font.SourceSans
nitronadmin.Text = "Execute Nitron Admin"
nitronadmin.TextColor3 = Color3.fromRGB(170, 85, 255)
nitronadmin.TextScaled = true
nitronadmin.TextSize = 14.000
nitronadmin.TextWrapped = true
nitronadmin.MouseButton1Down:connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DopeExploits/Nitron/main/README.lua"))() 
end)
