local class = require("lib.middleclass")
local animation = require("classes.animation")

local bump = require("lib.bump")


local fireball = class("player_fireball")

local fireshot = love.graphics.newImage("assets/art/fireball_sprite.png")

function fireball:initialize(player)
    self.x = player.x
    self.y = player.y
    self.w = 20
    self.h = 20
    self.cooldown = 0
end

function fireball:update(dt)
    if(self.cooldown ~= 0) then
        self.cooldown = self.cooldown - 1
    end

    if(self.cooldown == 0 and love.keyboard.isDown("f")) then
        self.x = self.x + 150 * dt
    end

end

function fireball:draw()
    love.graphics.draw(fireshot, self.x, self.y)
end



return fireball
