--[[




]]
local class = require("lib.middleclass")

local warp = class("warp")

function warp:initialize()
    assert(mapName,"mapName missing")
    self.mapName = mapName
end

function warp:loadMap()

end



return warp
