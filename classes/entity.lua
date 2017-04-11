--[[
-- super class of physical objects
-- Members
    - x
    - y
    - drawOrder

-- Methods
    - update (abstract)
    - draw (abstract)

]]
local class = require("lib.middleclass")

local collisionblock = require("classes.collisionBlock")
local entity = class("entity")


function entity:initialize(x, y, drawOrder, h, w)
    self.x = x or 0
    self.y = y or 0
    self.drawOrder = drawOrder or 1
    self.w = w
    self.h = h


    --self.hitbox = collisionblock(self.x,self.y,self.w,self.h)
    --world:add(self, self.hitbox.x, self.hitbox.y, self.hitbox.w, self.hitbox.h)
end

function entity:updateHitbox(x,y,w,h)
    local h = self.hitbox
    h.x = x or h.x
    h.y = y or h.y
    h.w = w or h.w
    h.h = h or h.h

    world:update(self, h.x, h.y, h.w, h.h)
end

function entity:update() end --abstract method

function entity:draw() end --abstract method

return entity
