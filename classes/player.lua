local class = require("lib.middleclass")
local animation = require("classes.animation")

local bump = require("lib.bump")


local player = class("player")

local spritesheet = love.graphics.newImage("assets/art/PlayerSprites.png")

local walkdown = animation(spritesheet, 64, 64, 0.1, 1, 4)
local walkup = animation(spritesheet, 64, 64, 0.1, 13, 16)
local walkleft = animation(spritesheet, 64, 64, 0.1, 5, 8)
local walkright = animation(spritesheet, 64, 64, 0.1, 9, 12)

local standdown = animation(spritesheet, 64, 64, 0.1, 1, 1)
local standup = animation(spritesheet, 64, 64, 0.1, 13, 13)
local standleft = animation(spritesheet, 64, 64, 0.1, 5, 5)
local standright = animation(spritesheet, 64, 64, 0.1, 9, 9)

walkdown:setSpeed(0.5)
walkup:setSpeed(0.5)
walkleft:setSpeed(0.5)
walkright:setSpeed(0.5)

local cols_len = 0

function player:initialize()
    self.x=50
    self.y=50
    self.h=15
    self.w=20
    self.speed=80
    self.health=3
    self.lastpushed='s'
    world:add(self, self.x, self.y, self.w, self.h)
end

function player:update(dt)
    cols_len=0
    walkright:update(dt)
    walkleft:update(dt)
    walkup:update(dt)
    walkdown:update(dt)
    local speed = self.speed

    local dx, dy = 0, 0
    if love.keyboard.isDown('d') then
      dx = speed * dt
    elseif love.keyboard.isDown('a') then
      dx = -speed * dt
    end
    if love.keyboard.isDown('s') then
      dy = speed * dt
    elseif love.keyboard.isDown('w') then
      dy = -speed * dt
    end

    if dx ~= 0 or dy ~= 0 then
      local cols
      self.x, self.y, cols, cols_len = world:move(self, self.x + dx, self.y + dy)
      for i=1, cols_len do
        local col = cols[i]
      end
    end
  end

function player:stand()
    if(love.keyboard.isDown("d")) then
        self.lastpushed = nil
    elseif(love.keyboard.isDown("a")) then
        self.lastpushed = nil
    elseif(love.keyboard.isDown("w")) then
        self.lastpushed = nil
    elseif(love.keyboard.isDown("s")) then
        self.lastpushed = nil
    end
    if(self.lastpushed == 'd') then
        standright:draw(self.x-20, self.y-45)
    elseif(self.lastpushed == 'a') then
        standleft:draw(self.x-20, self.y-45)
    elseif(self.lastpushed == 'w') then
        standup:draw(self.x-20, self.y-45)
    elseif(self.lastpushed == 's') then
        standdown:draw(self.x-20, self.y-45)
    end
end

function player:draw()
    if(love.keyboard.isDown("d")) then
        walkright:draw(self.x-20, self.y-45)
        self.lastpushed = 'd'
    elseif(love.keyboard.isDown("a")) then
        walkleft:draw(self.x-20, self.y-45)
        self.lastpushed = 'a'
    elseif(love.keyboard.isDown("w")) then
       walkup:draw(self.x-20, self.y-45)
        self.lastpushed = 'w'
    elseif(love.keyboard.isDown("s")) then
        walkdown:draw(self.x-20, self.y-45)
        self.lastpushed = 's'
    end
end

return player
