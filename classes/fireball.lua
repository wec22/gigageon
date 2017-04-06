local class = require("lib.middleclass")
local animation = require("classes.animation")

local bump = require("lib.bump")

local projectile = require("classes.projectile")
local fireball = class("fireball")

local fireshot = love.graphics.newImage("assets/art/fireball_sprite.png")

function fireball:initialize(player)
    self.x = player.x + 3
    self.y = player.y
    self.w = 5
    self.h = 5
    self.fired = 0
    self.lastpushed = player.lastpushed
end

function fireball:update(dt)
    if(fired == 0) then
        self.x = player.x - 5
        self.y = player.y
    end

    if(love.keyboard.isDown("space")) then
        if(self.lastpushed == 'd') then
            self.fired = 1
        elseif(self.lastpushed == 'a') then
            self.fired = 2
        elseif(self.lastpushed == 'w') then
            self.fired = 3
        elseif(self.lastpushed == 's') then
            self.fired = 4
        end
    end

    if(self.fired == 1) then
        self.x = self.x + 300 * dt
        if(love.keyboard.isDown("space")) then
                self.fired = 1
        end
    elseif(self.fired == 2) then
        self.x = self.x - 300 * dt
        if(love.keyboard.isDown("space")) then
                self.fired = 2
        end
    elseif(self.fired == 3) then
        self.y = self.y - 300 * dt
        if(love.keyboard.isDown("space")) then
                self.fired = 3
        end
    elseif(self.fired == 4) then
        self.y = self.y + 300 * dt
        if(love.keyboard.isDown("space")) then
                self.fired = 4
        end
    end

end

function fireball:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
    love.graphics.draw(fireshot, self.x - 7, self.y - 5)
end



return fireball
