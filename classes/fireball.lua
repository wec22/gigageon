local class = require("lib.middleclass")
local animation = require("classes.animation")

local bump = require("lib.bump")

local projectile = require("classes.projectile")
local fireball = class("fireball")

local fireshot = love.graphics.newImage("assets/art/fireball_sprite.png")

function fireball:initialize(lastpushed, x, y)
    self.x = x + 3
    self.y = y
    self.w = 5
    self.h = 5
    self.fired = 0
    self.lastpushed = lastpushed

    if self.lastpushed == 'd' then
        self.fired = 1
        self.x = self.x + self.w
    elseif self.lastpushed == 'a' then
        self.fired = 2
        self.x = self.x - self.w
    elseif self.lastpushed == 'w' then
        self.fired = 3
        self.y = self.y - self.h
    elseif self.lastpushed == 's' then
        self.fired = 4
        self.y = self.y + self.h
    end




end

function fireball:update(dt)
    if self.fired == 1 then
        self.x = self.x + 300 * dt
    elseif self.fired == 2 then
        self.x = self.x - 300 * dt
    elseif self.fired == 3 then
        self.y = self.y - 300 * dt
    elseif self.fired == 4 then
        self.y = self.y + 300 * dt
    end

end

function fireball:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
    love.graphics.draw(fireshot, self.x - 7, self.y - 5)
end



return fireball
