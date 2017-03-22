local class = require("lib.middleclass")
local bump = require("lib.bump")

local collision = class("collision")

function collision:initialize(x, y, w, h)
    self.x = x
    self.y = y
    self.w = w
    self.h = h
    local block = {x=x,y=y,w=w,h=h}
    world:add(block, x,y,w,h)
end

function collision:draw()
  love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
 end

return collision
