--[[
-- superclass of all npc, enemies, and players



]]


local class = require("lib.middleclass")

local entity = require("classes.entity")

local character = class("character", entity)

function character:initialize()
    character.super.initialize(self)
    

end




return character
