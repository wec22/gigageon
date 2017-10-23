local class = require("lib.middleclass")
local animation = require("classes.animation")

local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")
local zinput = require("lib.zinput")
local det = require("lib.detectors")

local fireball = require("classes.fireball")
local slime = require("classes.slime")
local entity = require("classes.entity")
local sword = require("classes.sword")


local character = require("classes.character")
local player = class("player", character):include(zinput)

--Setting up player spritesheet for walking/idle
local spritesheet = love.graphics.newImage("assets/art/SpriteSheet(WIP).png")
spritesheet:setFilter("nearest","nearest")

--Walking animations set up from spritesheet
local walkdown = animation(spritesheet, 32, 32, 0.1, 1, 4)
local walkup = animation(spritesheet, 32, 32, 0.1, 13, 16)
local walkleft = animation(spritesheet, 32, 32, 0.1, 5, 8)
local walkright = animation(spritesheet, 32, 32, 0.1, 9, 12)

--Idle animation set uo from spritesheet
local standdown = animation(spritesheet, 32, 32, 0.1, 1, 1)
local standup = animation(spritesheet, 32, 32, 0.1, 13, 13)
local standleft = animation(spritesheet, 32, 32, 0.1, 5, 5)
local standright = animation(spritesheet, 32, 32, 0.1, 9, 9)

--Speed of walking animations
walkdown:setSpeed(0.5)
walkup:setSpeed(0.5)
walkleft:setSpeed(0.5)
walkright:setSpeed(0.5)


function player:initialize(x,y)
    character.initialize(self, x, y, 1, 8, 10, 10)
	self.sword = sword(0,0,0,0)
	self.EnergyMax = 10
	self.EnergyBar = 10
    self.speed=60
    self.hit=0

	self.firecooldown = 0
	self.dmgcooldown = 0
	--Table that holds all fireballs shot from the player
    self.fireballs = {}
	--Storing the last movement key pressed
    self.lastpushed = 's'

	--Setting up gamepad controls
    self:newbutton("up", det.button.key("w"))
    self:newbutton("down", det.button.key("s"))
    self:newbutton("left", det.button.key("a"))
    self:newbutton("right", det.button.key("d"))
    self:newbutton("fire", det.button.key("space"))
	self:newbutton("sword", det.button.key("f"))

    self.inputs.up:addDetector(det.button.gamepad("dpup", 1))
    self.inputs.down:addDetector(det.button.gamepad("dpdown", 1))
    self.inputs.left:addDetector(det.button.gamepad("dpleft", 1))
    self.inputs.right:addDetector(det.button.gamepad("dpright", 1))

	self.inputs.up:addDetector(det.button.axis("lefty","-", 1))
    self.inputs.down:addDetector(det.button.axis("lefty","+", 1))
    self.inputs.left:addDetector(det.button.axis("leftx","-", 1))
    self.inputs.right:addDetector(det.button.axis("leftx","+", 1))

    self.inputs.fire:addDetector(det.button.gamepad("a", 1))

	--Adding player to the physics world and the drawing registery
    world:add(self, self.x, self.y, self.w, self.h)
    drawOrder:register(self)
end

--Function called whenever player should lose health
function player:TakingDamage(x,y,h,w)

	--Player knockback when taking damage
	if self.x < x and self.y >= y and self.y <= y+h then
	        self.x = self.x-30
	    elseif self.y > y and self.x >= x and self.x <= x+h then
	        self.y = self.y+30
	    elseif self.x > x and self.y >= y and self.y <= y+h then
	        self.x = self.x+30
	    elseif  self.y < y and self.x >= x and self.x <= x+w then
	        self.y = self.y-30
	    end

	if self.dmgcooldown==0 then
		self.health = self.health - 1
	    self.hit = 5
	end
	self.dmgcooldown = 10
end

function player:update(dt)
    self:inputUpdate()

	--Counting the amount of collisions on the player
    cols_len=0

	--Update for walking animations
    walkright:update(dt)
    walkleft:update(dt)
    walkup:update(dt)
    walkdown:update(dt)

	--Updating all cooldowns needed from player
    if self.firecooldown ~= 0 then
        self.firecooldown = self.firecooldown - 1
    end

	if self.dmgcooldown ~= 0 then
        self.dmgcooldown = self.dmgcooldown - 1
    end

	self.sword:update(dt, self.lastpushed, self.x, self.y)

	--Replenishes Special Bar
	if self.EnergyBar ~= self.EnergyMax then
		if self.EnergyBar + 0.005 > self.EnergyMax then
			self.EnergyBar = self.EnergyBar + (self.EnergyMax - self.EnergyBar)
		else
			self.EnergyBar = self.EnergyBar + 0.005
		end
	end

	--Energy and Firing mechanics
    if self.inputs.fire() and self.firecooldown == 0 and self.EnergyBar - 1 >= 0 then
		fireball(self.lastpushed, self.x, self.y)
		self.EnergyBar = self.EnergyBar - 1
        self.firecooldown = 20
	end

	--Updating fireballs from fireball table
    local index = 1
    for _,v in pairs(self.fireballs) do
        v:update(dt)
        index = index + 1
    end

    local speed = self.speed

	--Initializing dx and dy to change player hitbox location with player movement
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

	if self.inputs.sword("pressed") then

		if self.lastpushed == 'w' then
			self.sword.x = self.x + self.w - 2
			self.sword.y = self.y - (32 - self.h) - 4
			self.sword.w = 5
			self.sword.h = 20
		elseif self.lastpushed == 's' then
			self.sword.x = self.x
			self.sword.y = self.y + self.h
			self.sword.w = 5
			self.sword.h = 20
		elseif self.lastpushed == 'a' then
			self.sword.x = self.x - 20
			self.sword.y = self.y
			self.sword.w = 20
			self.sword.h = 5
		elseif self.lastpushed == 'd' then
			self.sword.x = self.x + 10
			self.sword.y = self.y + self.h - 2
			self.sword.w = 20
			self.sword.h = 5
		end

		self.sword = sword(self.sword.x, self.sword.y, self.sword.w, self.sword.h)

		self.sword.pushed = true

		world:add(self.sword, self.sword.x, self.sword.y, self.sword.w, self.sword.h)

	end

	--Collision logic
    if dx ~= 0 or dy ~= 0 then
    	local cols
		self.x, self.y, cols, cols_len = world:move(self, self.x + dx, self.y + dy)

		for _,v in ipairs(cols) do
			local col = v
			if v.other:isInstanceOf(slime) then
				self:TakingDamage(v.other.x, v.other.y, v.other.h, v.other.w)
			end
    	end
	end
end

--The game ending when the player dies
function player:drawUI()
    font = love.graphics.newFont(20)
    love.graphics.setFont(font)
	if devmode then
		love.graphics.print("Health : ", love.graphics.getWidth() - 110, 0)
    	love.graphics.print(self.health, love.graphics.getWidth() - 30, 0)
	end
	r,b,g = love.graphics.getColor()

	--Setting up Health Bar
	love.graphics.setColor(255,0,0,128)
	love.graphics.rectangle("fill", 10, 10 + (self.maxHealth - self.health) * 10, 25, (self.health / self.maxHealth) * 100)
	love.graphics.rectangle("line", 10, 10, 25, 100)

	--Setting up Energy Bar
	love.graphics.setColor(0,0,255,128)
	love.graphics.rectangle("fill", 40, 10 + (self.EnergyMax - self.EnergyBar) * 10, 25, (self.EnergyBar / self.EnergyMax) * 100)
	love.graphics.rectangle("line",40, 10, 25, 100)

	--Game Over Screen
	love.graphics.setColor(r,b,g)
    if self.health <= 0 then
        love.graphics.setColor(0, 0, 0)
        love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
        love.graphics.setColor(255, 255, 255)
        love.graphics.print("Game Over", love.graphics.getWidth() / 2, love.graphics.getHeight() / 2)
	end

end

--Function called for player idle animations
function player:stand()
    if self.lastpushed == 'd' then
        standright:draw(self.x - 10, self.y - 20)
    elseif self.lastpushed == 'a' then
        standleft:draw(self.x - 10, self.y - 20)
    elseif self.lastpushed == 'w' then
        standup:draw(self.x - 10, self.y - 20)
    elseif self.lastpushed == 's' then
        standdown:draw(self.x - 10, self.y - 20)
    end
end

function player:draw()

	love.graphics.rectangle("fill", self.sword.x, self.sword.y, self.sword.w, self.sword.h)

	--Drawing fireballs from the fireball table
    local index = 1
    for _,v in pairs(self.fireballs) do
        v:draw()
        index = index + 1
    end

	--Playing blinks red after taking damage
    if self.hit~=0 then
        love.graphics.setColor(255, 0, 0)
        self.hit = self.hit-1
    end

	--Drawing correct animation based on player movement
    if self.inputs.right() then
        walkright:draw(self.x - 10, self.y - 20)
        self.lastpushed = 'd'
    elseif self.inputs.left() then
        walkleft:draw(self.x - 10, self.y - 20)
        self.lastpushed = 'a'
    elseif self.inputs.up() then
       walkup:draw(self.x - 10, self.y - 20)
        self.lastpushed = 'w'
    elseif self.inputs.down() then
        walkdown:draw(self.x - 10, self.y - 20)
        self.lastpushed = 's'
    else
        self:stand()
    end

	--Changing color of player to normal in case of taking damage
    love.graphics.setColor(255, 255, 255, 255)

	--Uncomment line below to draw player hitbox
	--love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)

end

return player
