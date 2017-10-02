local class = require("lib.middleclass")
local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")

local animation = require("classes.animation")

-- Jumper Dependancies
local Pathfinder = require("lib.jumper.pathfinder")
local Grid = require ("lib.jumper.grid")
-- Collision Map for aStarTest
local map = {
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1},
  {1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1},
  {1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1},
  {1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1},
  {1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1},
  {1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1},
  {1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1},
  {1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1},
  {1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1},
  {1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1},
  {1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1},
  {1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
  {1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1},
  {1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1},
  {1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1},
  {1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1},
  {1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1},
  {1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1},
  {1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1},
  {1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1},
  {1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1},
  {1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
  {1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1},
  {1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
  {1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
}
-- Creates a grid object
local grid = Grid(map)
local walkable = 0
-- Creates a pthfinder object using Jump Point Search
local myFinder = Pathfinder(grid, 'ASTAR', walkable)

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
    if(self.cooldown==0) then
        self.health = self.health - 1
        self.hit=5
    end
    self.cooldown = 10
end

function slime:initialize(x,y)
    enemy.initialize(self, x,y,2,10,14, 3)
    self.speed = 10
    self.hit = 0

	self.cooldown = 0

    world:add(self, self.x, self.y, self.w, self.h)
    drawOrder:register(self)
end

function slime:update(dt)
    -- variables for the slime and player positions
    local startX = math.floor(self.x / 16)
    local startY = math.floor(self.y / 16 + 1)
    local playerx = math.floor(mainPlayer.x / 16)
    local playery = math.floor(mainPlayer.y / 16 + 1)

    -- Calculates the path, and length
    -- rn it doesnt like having it that way, so for now use:
    local path = myFinder:getPath(startX, startY, playerx, playery)
    -- local path, length = myFinder:getPath(startX, startY, playerx, playery)

    local speed = self.speed

    if self.health > 0 then

        local dx, dy = 0, 0
        if path then
            -- print(('Path found! Length: %.2f'):format(path:getLength()))
        	for node, count in path:nodes() do
            -- until node met == true, wait
            -- print(('Step: %d - x: %d - y: %d'):format(count, node:getX(), node:getY()))
                if node:getX()>self.x then
                    if node:getY()>self.y then
                        dy = -speed * dt
                        dx = speed * dt
                    end
                elseif node:getX()>self.x then
                    if node:getY()<self.y then
                        dy = speed * dt
                        dx = speed * dt
                    end
                elseif node:getX()<self.x then
                    if node:getY()>self.y then
                        dy = speed * dt
                        dx = -speed * dt
                    end
                elseif node:getX()<self.x then
                    if node:getY()<self.y then
                        dy = -speed * dt
                        dx = -speed * dt
                    end
                elseif node:getX() > self.x then
                    dx = speed * dt
                elseif node:getX() < self.x then
                    dx = -speed * dt
                end
                if node:getY() > self.y then
                    dy = speed * dt
                elseif node:getY() < self.y then
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
