local class = require("lib.middleclass")
local bump = require("lib.bump")

local collision = class("collision")

function collision:initialize(x, y, w, h)
    self.x = x
    self.y = y

    if w==0 then w=1 end
    if h==0 then h=1 end

    self.w = w
    self.h = h
    world:add(self, self.x,self.y,self.w,self.h)
end

function collision:remove()
    world:remove(self)
end

function collision:draw()
  love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
end

return collision
