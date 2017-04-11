--[[
-- the primitive of all objects that fly across the screen
-- members:
    - range     - how far the projectile lasts before it is destroyed
    - velocity  - the speed of the projectile
    - angle     - the angle in which the projectile moves
-- methods:
    - inRange() - returns a boolean if the object should still be kept

]]

local class = require("lib.middleclass")


local entity = require("classes.entity")
local projectile = class("projectile", entity)

function projectile:initialize(x,y,drawOrder,h,w, velocity, angle, range)
    entity.initialize(self,x,y,drawOrder,h,w)

    self.velocity = velocity or 300
    self.angle = angle
    self.range = range or 0

    self.startx = x
    self.starty = y
end

function projectile:inRange()
    if self.range>0 then
        local dx = x1 - x2
        local dy = y1 - y2
        return math.sqrt( dx * dx + dy * dy )<self.range
    end
end
return projectile
