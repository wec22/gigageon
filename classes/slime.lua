local class = require("lib.middleclass")
local animation = require("classes.animation")

local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")

local entity = require("classes.entity")
local slime = class("slime")

local spritesheet = love.graphics.newImage("assets/art/slime_spritesheet.png")

local walkup_down = animation(spritesheet, 16, 16.4, 0.3, 1, 3)
local walkleft = animation(spritesheet, 16, 16.5, 0.3, 13, 15)
local walkright = animation(spritesheet, 16, 16.4, 0.3, 25, 27)

walkup_down:setSpeed(0.35)
walkleft:setSpeed(0.35)
walkright:setSpeed(0.35)

local cooldown = 0
local slimecooldown = 0

local function IntersectingwithPlayer(x1,y1,w1,h1, x2,y2,w2,h2)
    return x1 < x2+w2 and x2 < x1+w1 and
           y1 < y2+h2 and y2 < y1+h1
end


local function IntersectingwithFire(fireTable, x,y,w,h)
    for _,f in pairs(fireTable) do
        if(f.x < x+w and x < f.x+f.w and
               f.y < y+h and y < f.y+f.h) then
                   return true
               end
    end
    return false
end

function slime:TakingDamage(one, two, x, y, w, h)
    if(one==true and player.x<x and player.y>=y and player.y<=y+h) then
        player.x = player.x-30
    elseif one==true and player.y>y and player.x>=x and player.x<=x+h then
        player.y = player.y+30
    elseif one==true and player.x>x and player.y>=y and player.y<=y+h then
        player.x = player.x+30
    elseif one==true and player.y<y and player.x>=x and player.x<=x+w then
        player.y = player.y-30
    end
    if one == true then
        if cooldown==0 then
            player.health = player.health - 1
            player.hit=5
        end
        cooldown = 10
    end

    if(two==true) then
        if(slimecooldown==0) then
            self.health = self.health - 1
            self.hit=5
        end
        slimecooldown = 10
    end
end

local cols_len = 0

function slime:initialize(x,y)
    self.x=x
    self.y=y
    self.h=10
    self.w=14
    self.speed=10
    self.health=3
    self.hit = 0
    world:add(self, self.x, self.y, self.w, self.h)
    drawOrder:register(self)
end

function slime:update(dt)
    cols_len=0
    walkright:update(dt)
    walkleft:update(dt)
    walkup_down:update(dt)
    local speed = self.speed

    if(self.health > 0) then

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
        if cooldown ~= 0 then
            cooldown = cooldown - 1
        end

        if slimecooldown ~= 0 then
            slimecooldown = slimecooldown - 1
        end

        if self.hit ~=0 then
            self.hit = self.hit - 1
        end

        if dx ~= 0 or dy ~= 0 then
          local cols
          self.x, self.y, cols, cols_len = world:move(self, self.x + dx, self.y + dy)
          for i=1, cols_len do
            local col = cols[i]
          end
        end
        local one = IntersectingwithPlayer(player.x,player.y,player.w,player.h, self.x-1,self.y-1,self.w+2,self.h+2)
        local two = IntersectingwithFire(player.fireballs, self.x-1,self.y-1,self.w+2,self.h+2)
        self:TakingDamage(one, two, self.x-1,self.y-1,self.w+2,self.h+2)
    end
    if(self.health == 0) then
        self.health = self.health - 1
        world:remove(self)
    end
  end

function slime:draw()
    if(self.hit~=0) then
        love.graphics.setColor(255, 0, 0)
    end
    if(self.health > 0) then
        if (player.x>self.x-10 and player.x<self.x+10) then
            walkup_down:draw(self.x, self.y-5)
        else
            if (player.x>self.x) then
                walkright:draw(self.x, self.y-5)
            elseif (player.x<self.x) then
                walkleft:draw(self.x, self.y-5)
            end
        end
    end
    love.graphics.setColor(255, 255, 255, 255)
end

return slime
