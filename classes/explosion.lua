--[[
-- a basic explosion that spawns when a fireball explodes

]]
local class = require("lib.middleclass")
local drawOrder = require("lib.drawOrder")

local explosion = class("explosion",entity)

local texture = love.graphics.newImage("assets/art/fireball_sprite.png")
local particle = love.graphics.newParticleSystem(texture, 20)

function explosion:initialize(x, y)
    self.particle = particle:clone()
    self.x = x or 0
    self.y = y or 0


    drawOrder:register(self)
end

function explosion:update(dt)
    self.particle:update(dt)
end

function explosion:draw()
    love.graphics.draw(self.particle, self.x, self.y)
end
return explosion
