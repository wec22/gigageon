--[[




]]
local class = require("lib.middleclass")

local spawn = class("spawn")

function spawn:initialize(x,y,w,h)
	self.x = x
	self.y = y
	self.w = w
	self.h = h
	assert(x, "x is nil")
	assert(x, "y is nil")
	assert(x, "w is nil")
	assert(x, "h is nil")
end

return spawn
