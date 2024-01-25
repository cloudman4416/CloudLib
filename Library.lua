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
local CloudLib = {}
function CloudLib:MakeWindow(settings)
  local gui = Instance.new("ScreenGui")
  local Window = Instance.new("Frame")
	Window.Parent = gui
	-- ui round border
  gui.Name = randomstring(10)
	gui.Parent = gethui() or game.CoreGui
end
return CloudLib
