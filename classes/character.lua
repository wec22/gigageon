--[[
-- superclass of all npc, enemies, and players
-- members:
    -
-- methods:
    -


]]
local class = require("lib.middleclass")

local entity = require("classes.entity")
local character = class("character", entity)

function character:initialize(x,y,drawOrder,h,w, health)
    character.super.initialize(self, x,y,drawOrder,h,w)
    self.health = health

end

function character:takeDamage(amount)
    self.health = self.health - amount
end


return character
