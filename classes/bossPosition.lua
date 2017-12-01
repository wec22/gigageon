local class = require("lib.middleclass")

local bossPosition = class("bossPosition")

function bossPosition:initialize(x,y,w,h, ID)
	self.x = x
	self.y = y
	self.w = w
	self.h = h
	self.ID = ID
end

return bossPosition
