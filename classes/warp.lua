--[[




]]
local class = require("lib.middleclass")

local warp = class("warp")

function warp:initialize(targetMap, targetID, sourceID)
    assert(mapName,"mapName missing")
    self.mapName = targetMap
	self.targetID = targetID
	self.ID = sourceID
end

function warp:loadMap()

end



return warp
