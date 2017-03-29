local class = require("lib.middleclass")
local animation = require("classes.animation")

local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")

local enemy = class("enemy")

local spritesheet = love.graphics.newImage("assets/art/slime_spritesheet.png")

local walkup_down = animation(spritesheet, 32, 32, 0.3, 1, 3)
local walkleft = animation(spritesheet, 32, 32, 0.3, 13, 15)
local walkright = animation(spritesheet, 32, 32, 0.3, 25, 27)

walkup_down:setSpeed(0.35)
walkleft:setSpeed(0.35)
walkright:setSpeed(0.35)

local cols_len = 0

function enemy:initialize(x,y)
    self.x=x
    self.y=y
    self.h=15
    self.w=30
    self.speed=10
    self.health=3

    world:add(self, self.x, self.y, self.w, self.h)

    drawOrder:register(self)
end

function enemy:update(dt)
    cols_len=0
    walkright:update(dt)
    walkleft:update(dt)
    walkup_down:update(dt)
    local speed = self.speed

    local dx, dy = 0, 0
    if (player.x < self.x+110 or player.x > self.x-110) then
        if(player.y < self.y+110 or player.y > self.x-110) then
            if (player.x>self.x) then
              dx = speed * dt
          elseif (player.x<self.x) then
              dx = -speed * dt
            end
            if (player.y>self.y) then
              dy = speed * dt
          elseif (player.y<self.y) then
              dy = -speed * dt
            end
        end
    end
    if dx ~= 0 or dy ~= 0 then
      local cols
      self.x, self.y, cols, cols_len = world:move(self, self.x + dx, self.y + dy)
      for i=1, cols_len do
        local col = cols[i]
      end
    end
  end

function enemy:draw()
    if (player.x > self.x-10 and player.x < self.x+10) then
        walkup_down:draw(self.x, self.y - 15)
    else
        if (player.x>self.x) then
            walkright:draw(self.x, self.y-15)
        elseif (player.x<self.x) then
            walkleft:draw(self.x, self.y-15)
        end
    end
end

return enemy
