local class = require("lib.middleclass")


local player = class("player")

local spritesheet = love.graphics.newImage("Sprites/PlayerSprites.png")
local walkdown = newAnimation(spritesheet, 64, 64, 0.1, 1, 4)
local walkup = newAnimation(spritesheet, 64, 64, 0.1, 13, 16)
local walkleft = newAnimation(spritesheet, 64, 64, 0.1, 5, 8)
local walkright = newAnimation(spritesheet, 64, 64, 0.1, 9, 12)
walkdown:setSpeed(0.5)
walkup:setSpeed(0.5)
walkleft:setSpeed(0.5)
walkright:setSpeed(0.5)

function player:initialize()
    self.x=0
    self.y=0
    self.h=30
    self.w=30
    self.speed=80
end

function player:update(dt)
    walkright:update(dt)
    walkleft:update(dt)
    walkup:update(dt)
    walkdown:update(dt)
    if(love.keyboard.isDown("d")) then
        self.x=self.x+self.speed*dt
    end
    if(love.keyboard.isDown("a")) then
        self.x=self.x-self.speed*dt
    end
    if(love.keyboard.isDown("w")) then
        self.y=self.y-self.speed*dt
    end
    if(love.keyboard.isDown("s")) then
        self.y=self.y+self.speed*dt
    end
  end

function player:draw()
    if(love.keyboard.isDown("d")) then
        walkright:draw(self.x, self.y)
    elseif(love.keyboard.isDown("a")) then
        walkleft:draw(self.x, self.y)
    elseif(love.keyboard.isDown("w")) then
        walkup:draw(self.x, self.y)
    elseif(love.keyboard.isDown("s")) then
        walkdown:draw(self.x, self.y)
    end
end

return player
