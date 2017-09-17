local class = require("lib.middleclass")
local animation = require("classes.animation")

local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")
local zinput = require("lib.zinput")
local det = require("lib.detectors")

local fireball = require("classes.fireball")
local slime = require("classes.slime")
local entity = require("classes.entity")


local character = require("classes.character")
local player = class("player", character):include(zinput)


local spritesheet = love.graphics.newImage("assets/art/Sprites.png")
spritesheet:setFilter("nearest","nearest")

local walkdown = animation(spritesheet, 32, 32, 0.1, 1, 4)
local walkup = animation(spritesheet, 32, 32, 0.1, 13, 16)
local walkleft = animation(spritesheet, 32, 32, 0.1, 5, 8)
local walkright = animation(spritesheet, 32, 32, 0.1, 9, 12)

local standdown = animation(spritesheet, 32, 32, 0.1, 1, 1)
local standup = animation(spritesheet, 32, 32, 0.1, 13, 13)
local standleft = animation(spritesheet, 32, 32, 0.1, 5, 5)
local standright = animation(spritesheet, 32, 32, 0.1, 9, 9)

walkdown:setSpeed(0.5)
walkup:setSpeed(0.5)
walkleft:setSpeed(0.5)
walkright:setSpeed(0.5)


function player:initialize(x,y)
    character.initialize(self, x, y, 1, 8, 10, 10)
    self.speed=60
    self.hit=0

	self.firecooldown = 0
	self.dmgcooldown = 0
    self.fireballs = {}
    self.lastpushed = 's'

    self:newbutton("up", det.button.key("w"))
    self:newbutton("down", det.button.key("s"))
    self:newbutton("left", det.button.key("a"))
    self:newbutton("right", det.button.key("d"))
    self:newbutton("fire", det.button.key("space"))

    self.inputs.up:addDetector(det.button.gamepad("dpup",1))
    self.inputs.down:addDetector(det.button.gamepad("dpdown",1))
    self.inputs.left:addDetector(det.button.gamepad("dpleft",1))
    self.inputs.right:addDetector(det.button.gamepad("dpright",1))
    self.inputs.fire:addDetector(det.button.gamepad("a",1))

    world:add(self, self.x, self.y, self.w, self.h)

    drawOrder:register(self)
end

function player:TakingDamage(x,y,h,w)
	if self.x<x and self.y>=y and self.y<=y+h then
	        self.x = self.x-30
	    elseif self.y>y and self.x>=x and self.x<=x+h then
	        self.y = self.y+30
	    elseif self.x>x and self.y>=y and self.y<=y+h then
	        self.x = self.x+30
	    elseif  self.y<y and self.x>=x and self.x<=x+w then
	        self.y = self.y-30
	    end
	if self.dmgcooldown==0 then
		self.health = self.health - 1
	    self.hit=5
	end
	self.dmgcooldown = 10
end

function player:update(dt)
    self:inputUpdate()

    cols_len=0
    walkright:update(dt)
    walkleft:update(dt)
    walkup:update(dt)
    walkdown:update(dt)

    if self.firecooldown ~= 0 then
        self.firecooldown = self.firecooldown - 1
    end

	if self.dmgcooldown ~= 0 then
        self.dmgcooldown = self.dmgcooldown - 1
    end

    if self.inputs.fire() and self.firecooldown == 0 then
		fireball(self.lastpushed, self.x, self.y)
        self.firecooldown = 20
    end

    local index = 1
    for _,v in pairs(self.fireballs) do
        v:update(dt)
        index = index + 1
    end

    local speed = self.speed

    local dx, dy = 0, 0
    if self.inputs.right() then
      dx = speed * dt
      self.lastpushed = 'd'
	elseif self.inputs.left() then
      dx = -speed * dt
      self.lastpushed = 'a'
    end
    if self.inputs.down() then
      dy = speed * dt
      self.lastpushed = 's'
  elseif self.inputs.up() then
      dy = -speed * dt
      self.lastpushed = 'w'
    end

    if dx ~= 0 or dy ~= 0 then
      local cols
      self.x, self.y, cols, cols_len = world:move(self, self.x + dx, self.y + dy)

	  for _,v in ipairs(cols) do

        local col = v
		if v.other:isInstanceOf(slime) then
			self:TakingDamage(v.other.x,v.other.y,v.other.h,v.other.w)
		end
      end
    end
  end

function player:gameover()
    font = love.graphics.newFont(20)
    love.graphics.setFont(font)
    love.graphics.print("Health : ", love.graphics.getWidth() - 110, 0)
    love.graphics.print(self.health, love.graphics.getWidth() - 30, 0)
    if self.health <= 0 then
        love.graphics.setColor(0, 0, 0)
        love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
        love.graphics.setColor(255, 255, 255)
        love.graphics.print("Game Over", love.graphics.getWidth()/2, love.graphics.getHeight()/2)
	end
end

function player:stand()
    if self.lastpushed == 'd' then
        standright:draw(self.x-10, self.y-20)
    elseif self.lastpushed == 'a' then
        standleft:draw(self.x-10, self.y-20)
    elseif self.lastpushed == 'w' then
        standup:draw(self.x-10, self.y-20)
    elseif self.lastpushed == 's' then
        standdown:draw(self.x-10, self.y-20)
    end
end

function player:draw()

    local index = 1
    for _,v in pairs(self.fireballs) do
        v:draw()
        index = index + 1
    end

    if self.hit~=0 then
        love.graphics.setColor(255, 0, 0)
        self.hit = self.hit-1
    end
    if self.inputs.right() then
        walkright:draw(self.x-10, self.y-20)
        self.lastpushed = 'd'
    elseif self.inputs.left() then
        walkleft:draw(self.x-10, self.y-20)
        self.lastpushed = 'a'
    elseif self.inputs.up() then
       walkup:draw(self.x-10, self.y-20)
        self.lastpushed = 'w'
    elseif self.inputs.down() then
        walkdown:draw(self.x-10, self.y-20)
        self.lastpushed = 's'
    else
        self:stand()
    end
    love.graphics.setColor(255, 255, 255, 255)
end

return player
