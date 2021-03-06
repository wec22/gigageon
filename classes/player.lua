local class = require("lib.middleclass")
local animation = require("classes.animation")

local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")
local zinput = require("lib.zinput")
local det = require("lib.detectors")

local laser = require("classes.laser")
local enemy = require("classes.enemy")
local bountyHunter = require("classes.bountyHunter")
local npc = require("classes.npc")
local entity = require("classes.entity")
local doorway = require("classes.doorway")
local spawn = require("classes.spawn")
local explosion = require("classes.explosion")
local collisionblock = require("classes.collisionBlock")
local boss = require("classes.boss")

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

local i = 1
local i2 = 1

function player:initialize(x,y)
	character.initialize(self,x,y,10,8,1, 10)
	self.energyMax = 10
	self.energyBar = 10
    self.speed=60
    self.hit=0
	self.notification = 0
	self.gained = 0

	self.npcs = {}
	self.bosses = {}

	self.firecooldown = 0
	self.dmgcooldown = 0
	self.lasers = {}

	--Storing the last movement key pressed
    self.direction = 'down'

	--Setting up gamepad controls
    self:newbutton("up", det.button.key("w"))
    self:newbutton("down", det.button.key("s"))
    self:newbutton("left", det.button.key("a"))
    self:newbutton("right", det.button.key("d"))
    self:newbutton("fire", det.button.key("space"))

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
    --world:add(self, self.x, self.y, self.w, self.h)
    drawOrder:register(self)
end

--Function called whenever player should lose health
function player:takeDamage(dmg)
	if self.dmgcooldown == 0 then
		self.health = self.health - dmg
	    self.hit = 5
	end
	self.dmgcooldown = 10
end

function player:addNpc(x,y,i,text)
	local t = npc(x,y,i,text)
	self.npcs[i] = t
	getworld():add(t,t.x,t.y,t.w,t.h)
	i = i + 1
end

function player:addBoss(t)
	table.insert(self.bosses,t)
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

	if self.notification ~= 0 then
        self.notification = self.notification - 1
    end

	if self.dmgcooldown ~= 0 then
        self.dmgcooldown = self.dmgcooldown - 1
    end

	--Replenishes Special Bar
	if self.energyBar <= self.energyMax then
		self.energyBar = self.energyBar + 0.5 * dt
		if self.energyBar > self.energyMax then
			self.energyBar = self.energyMax
		end
	end

    if self.inputs.fire() and self.firecooldown == 0 and self.energyBar - 1 >= 0 then
		local f = laser(self.direction, self.x, self.y, 0)
		getWorld():add(f, f.x, f.y, f.w, f.h)
		self.energyBar = self.energyBar - 1
        self.firecooldown = 20
	end

    local speed = self.speed

	--Initializing dx and dy to change player hitbox location with player movement
    local dx, dy = 0, 0
    if self.inputs.right() then
    	dx = speed * dt
    	self.direction = 'right'
	elseif self.inputs.left() then
    	dx = -speed * dt
    	self.direction = 'left'
	end
	if self.inputs.down() then
    	dy = speed * dt
    	self.direction = 'down'
	elseif self.inputs.up() then
    	dy = -speed * dt
    	self.direction = 'up'
    end
	--Collision logic
    if dx ~= 0 or dy ~= 0 then
    	local cols
		self.x, self.y, cols, cols_len = getWorld():move(self, self.x + dx, self.y + dy, function(item, other)
																							if other:isInstanceOf(explosion) then
																								return "cross"
																							elseif other:isInstanceOf(collisionblock) then
																								return "slide"
																							elseif not other:isInstanceOf(entity) then
																								return "cross"
																							else
																								return "slide"
																							end
																						end)

		for _,v in ipairs(cols) do
			if v.other:isInstanceOf(enemy) then
				self:takeDamage(1,v.other.x, v.other.y, v.other.h, v.other.w)
			elseif v.other:isInstanceOf(doorway) then
				v.other:loadMap(true)
				return false
			end
    	end
	end
end

--The game ending when the player dies
function player:drawUI()

	for _,v in pairs(self.npcs) do
		v:drawTextBox()
	end

	--Health bar for bosses
	for _,v in pairs(getWorld():getItemsOfType(boss)) do
		if v.health > 0 then
			love.graphics.print("BOSS : ", 20, 430)
			love.graphics.setColor(255,0,0,128)
			love.graphics.rectangle("fill", 20, 460, 465 - (465/v.maxHealth) * (v.maxHealth - v.health), 20)
			love.graphics.setColor(255,0,0,256)
			love.graphics.rectangle("line", 20, 460, 465, 20)
			love.graphics.setColor(255, 255, 255, 255)
		end
	end

	if devmode then
		love.graphics.print("Health : ", love.graphics.getWidth() - 110, 0)
    	love.graphics.print(self.health, love.graphics.getWidth() - 30, 0)
	end

	r,b,g = love.graphics.getColor()
	--Setting up Health Bar
	love.graphics.setColor(255,0,0,128)
	love.graphics.rectangle("fill", 10, 10 + (self.maxHealth - self.health) * (100/self.maxHealth), 25, (self.health / self.maxHealth) * 100)
	love.graphics.rectangle("line", 10, 10, 25, 100)

	--Setting up Energy Bar
	love.graphics.setColor(0,0,255,128)
	love.graphics.rectangle("fill", 40, 10 + (self.energyMax - self.energyBar) * (100/self.energyMax), 25, (self.energyBar / self.energyMax) * 100)
	love.graphics.rectangle("line", 40, 10, 25, 100)

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
    if self.direction == 'right' then
        standright:draw(self.x - 10, self.y - 20)
    elseif self.direction == 'left' then
        standleft:draw(self.x - 10, self.y - 20)
    elseif self.direction == 'up' then
        standup:draw(self.x - 10, self.y - 20)
    elseif self.direction == 'down' then
        standdown:draw(self.x - 10, self.y - 20)
    end
end

function player:draw()

	--notification if player gains something new
	if self.notification ~= 0 then
		love.graphics.print("+" .. self.gained, self.x, self.y + 15)
	end
	--Drawing lasers from the laser table
    local index = 1
    for _,v in pairs(self.lasers) do
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
        self.direction = 'right'
    elseif self.inputs.left() then
        walkleft:draw(self.x - 10, self.y - 20)
        self.direction = 'left'
    elseif self.inputs.up() then
       walkup:draw(self.x - 10, self.y - 20)
        self.direction = 'up'
    elseif self.inputs.down() then
        walkdown:draw(self.x - 10, self.y - 20)
        self.direction = 'down'
    else
        self:stand()
    end

	--Changing color of player to normal in case of taking damage
    love.graphics.setColor(255, 255, 255, 255)

	--Uncomment line below to draw player hitbox
	--love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)

end

return player
