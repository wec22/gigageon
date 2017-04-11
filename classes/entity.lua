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

local entity = class("entity")

function entity:initialize(x, y, drawOrder)
    self.x = x or 0
    self.y = y or 0
    self.drawOrder = drawOrder or 0

end

function entity:update() end --abstract method

function entity:draw() end --abstract method

return entity
