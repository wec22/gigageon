--[[




]]
local class = require("lib.middleclass")

local warp = require("classes.warp")
local doorway = class("doorway")

function doorway:initialize(x,y,w,h, targetMap, targetID, sourceID)
    --warp.initialize(self, mapName, targetID, sourceID)
	assert(targetMap,"mapName missing")
    self.mapName = targetMap
	self.targetID = targetID or 0
	self.ID = sourceID or 0
	self.x = x
	self.y = y
	self.w = w
	self.h = h
end

function doorway:loadMap(cache)
	if cache == nil then
		cache = true
	end
	if cache then print("true") else print("false") end
	tiled.changeMap(self.mapName, self.targetID, cache)
end

return doorway
