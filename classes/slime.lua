local class = require("lib.middleclass")
local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")

local animation = require("classes.animation")

local enemy = require("classes.enemy")
local slime = class("enemy.slime", enemy)

local spritesheet = love.graphics.newImage("assets/art/slime_spritesheet.png")
spritesheet:setFilter("nearest","nearest")

local walkup_down = animation(spritesheet, 16, 16.4, 0.3, 1, 3)
local walkleft = animation(spritesheet, 16, 16.5, 0.3, 13, 15)
local walkright = animation(spritesheet, 16, 16.4, 0.3, 25, 27)

walkup_down:setSpeed(0.35)
walkleft:setSpeed(0.35)
walkright:setSpeed(0.35)

local cooldown = 0
local slimecooldown = 0

local cols_len = 0

function slime:TakingDamage()
    if(self.cooldown==0) then
        self.health = self.health - 1
        self.hit=5
    end
    self.cooldown = 10
end

function slime:initialize(x,y)
    enemy.initialize(self, x,y,1,10,14, 3)

    self.speed = 10
    self.hit = 0
	self.cooldown = 0
    world:add(self, self.x, self.y, self.w, self.h)
    drawOrder:register(self)
end

function slime:update(dt)
    cols_len=0
    walkright:update(dt)
    walkleft:update(dt)
    walkup_down:update(dt)
    local speed = self.speed

    if self.health > 0 then

        local dx, dy = 0, 0
        if player.x < self.x+110 or player.x > self.x-110 then
            if player.y < self.y+110 or player.y > self.x-110 then
                if player.x > self.x then
                    dx = speed * dt
                elseif player.x < self.x then
                    dx = -speed * dt
                end
                if player.y > self.y then
                    dy = speed * dt
                elseif player.y < self.y then
                    dy = -speed * dt
                end
            end
        end

		if self.cooldown ~= 0 then
            self.cooldown = self.cooldown - 1
        end

        if self.hit ~=0 then
            self.hit = self.hit - 1
        end

        if dx ~= 0 or dy ~= 0 then
            local cols
            self.x, self.y, cols, cols_len = world:move(self, self.x + dx, self.y + dy)
        end
    end
    if self.health == 0 then
        self.health = self.health - 1
        world:remove(self)
    end
  end

function slime:draw()
    if self.hit~=0 then
        love.graphics.setColor(255, 0, 0)
    end
    if self.health > 0 then
        if player.x>self.x-10 and player.x<self.x+10 then
            walkup_down:draw(self.x, self.y-5)
        else
            if player.x>self.x then
                walkright:draw(self.x, self.y-5)
            elseif player.x<self.x then
                walkleft:draw(self.x, self.y-5)
            end
        end
    end
    love.graphics.setColor(255, 255, 255, 255)
end

return slime
