


local class = require("lib.middleclass")

local entity = require("classes.entity")

local enemy = class("enemy", entity)

function enemy:initialize(health)
    assert(health, "an enemy must have a health")
    self.health = health
end

function enemy:takeDamage(amount)
    self.health = self.health - amount
end

return enemy
