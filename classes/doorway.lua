--[[




]]
local class = require("lib.middleclass")


local warp = require("classes.warp")
local doorway = class("doorway", warp)

function doorway:initialize(mapName)
    warp.initialize(self,mapName)


end

function doorway:loadMap()
    
end



return doorway
