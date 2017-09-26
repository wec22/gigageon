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


function slime:TakingDamage()
    if self.cooldown == 0 then
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
        if mainPlayer.x < self.x+110 or mainPlayer.x > self.x-110 then
            if mainPlayer.y < self.y+110 or mainPlayer.y > self.x-110 then
                if mainPlayer.x > self.x then
                    dx = speed * dt
                elseif mainPlayer.x < self.x then
                    dx = -speed * dt
                end
                if mainPlayer.y > self.y then
                    dy = speed * dt
                elseif mainPlayer.y < self.y then
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
          for _,v in ipairs(cols) do

          end
        end
    end
    if self.health == 0 then
        self.health = self.health - 1
        world:remove(self)
		drawOrder:remove(self)
    end
  end

function slime:draw()
    if self.hit~=0 then
        love.graphics.setColor(255, 0, 0)
    end
    if self.health > 0 then
        if mainPlayer.x>self.x-10 and mainPlayer.x<self.x+10 then
            walkup_down:draw(self.x, self.y-5)
        else
            if mainPlayer.x>self.x then
                walkright:draw(self.x, self.y-5)
            elseif mainPlayer.x<self.x then
                walkleft:draw(self.x, self.y-5)
            end
        end
    end
    love.graphics.setColor(255, 255, 255, 255)
end

return slime
