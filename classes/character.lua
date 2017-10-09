--[[
-- superclass of all npc, enemies, and players
-- members:
    - health
	- maxhealth
-- methods:
	- takeDamage
		- preforms the damage calculation and exposes damage to outside classes
    -


]]
local class = require("lib.middleclass")

local entity = require("classes.entity")
local character = class("character", entity)

function character:initialize(x,y,h,w,drawOrder, health)
    character.super.initialize(self, x,y,h,w,drawOrder)
    self.health = health
	self.maxHealth = self.health

end

function character:takeDamage(amount)
    self.health = self.health - amount
end


return character
