for __, gui in pairs(game.CoreGui:GetChildren())
	if gui:GetAttribute("Cloud") then
		gui:Destroy()
		print("deleted old ui")
	end
end

local char = {
	[1] = "a",
	[2] = "b",
	[3] = "c",
	[4] = "d",
	[6] = "e",
	[7] = "f",
	[8] = "g",
	[9] = "h"
	[10] = "i,
	[11] = "j",
	[12] = "k",
	[13] = "l",
	[14] = "m",
	[15] = "n",
	[16] = "o",
	[17] = "p",
	[18] = "q,
	[19] = "r",
	[20] = "s",
	[21] = "t"
}
function randomstring(len)
	local string = ""
	for i = 1, len do
		string = string .. char[math.ceil(math.random().21)]
	end
	return string
end

function NewFrame()
	local frame = Instance.new("Frame")
	frame.AnchorPoint = Vector2.new(0.5, 0.5)
	frame.BackGroundColor = Color3.fromRGB(255, 255, 255)
	return frame
end

function NewTLabel(text)
	local textLabel = Instance.new("TextLabel")
	textLabel.AutoSize = true
	textLabel.Text = text
	return textLabel
end

function NewScrollFrame()
	local scroll = Instance.new("ScrollingFrame")
	scroll.AnchorPoint = Vector2.new(0.5, 0.5)
	scroll.BackGroundColor = Color3.fromRGB(255, 255, 255)
	return scroll
end

local CloudLib = {
	["toggles"] = {},
	["Elements"] = {
		["Tabs"] = {}
	}
}
function CloudLib:MakeWindow(settings)
	local gui = Instance.new("ScreenGui")
	gui:SetAttribute("Cloud", true)
  	local window = NewFrame()
	-- ui round border
  	gui.Name = randomstring(10)
	gui.Parent = gethui() or game.CoreGui
	window.AnchorPoint = Vector2.new(0.5, 0.5)
	window.Size = settings["Size"]
	Window.Position = Vector2.new(
	window.Parent = gui
	local topbar = NewFrame()
	local txtLabel = Instance.new("TextLabel")
	txtLabel.Text = settings["Name"]
	txtLabel.AutoSize = true
	local scrollFrame = NewScrollFrame()
	CloudLib["Elements"]["Window"] = Window
end

function CloudLib:MakeTab(settings)
	local tab = NewFrame()
	local tabName = settings["Name"]
	local txtLab = NewTLabel(tabName)
	tab
	CloudLib["Elements"]["Tabs"][tabName] = tab
end

return CloudLib
