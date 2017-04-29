--[[
-- base class for all enemies
-- members
    -
-- methods
    -
]]
local class = require("lib.middleclass")

local character = require("classes.character")
local enemy = class("enemy", character)

function enemy:initialize(x,y,drawOrder,h,w, health)
    character.initialize(self, x,y,drawOrder,h,w, health)
end

return enemy
