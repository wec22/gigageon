--[[
-- a basic explosion that spawns when a fireball explodes

]]
local class = require("lib.middleclass")
local drawOrder = require("lib.drawOrder")

local entity = require("classes.entity")
local explosion = class("explosion", entity)

local texture = love.graphics.newImage("assets/art/fireball_sprite.png")
--local texture = love.graphics.newImage("plus.png")
local particle = love.graphics.newParticleSystem(texture, 100000)

particle:setColors(222,128,32,0, 222,128,64,32, 32,32,32,32, 16,16,16,28, 12,12,12,92, 32,32,32,0)
particle:setInsertMode("bottom")
particle:setSizes(1, 1, 1, 1, 0.75, 0.5, 0.25, 0)
particle:setLinearAcceleration(0,0,0,0)
particle:setParticleLifetime(1, .5)
particle:setAreaSpread("uniform",0,0)
particle:setSpeed(0,50)
particle:setSpread(360)
--particle:setEmitterLifetime(.5)
--particle:setEmissionRate(500)


function explosion:initialize(x, y)
    self.particle = particle:clone()
    self.x = x or 0
    self.y = y or 0

    self.particle:start()
    self.particle:emit(200)
    drawOrder:register(self)
    world:add(self, self.x-10, self.y-10, 20,20)
end

function explosion:update(dt)
    self.particle:update(dt)

    if self.particle:getCount() == 0 then
        drawOrder:remove(self)
        world:remove(self)
        self = nil
    end

end

function explosion:draw()
    love.graphics.draw(self.particle, 256, 256)
end



return explosion
