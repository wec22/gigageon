local class = require("lib.middleclass")
local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")

local animation = require("classes.animation")
local bossPosition = require("classes.bossPosition")
local spawn = require("classes.spawn")
local enemy = require("classes.enemy")
local fireball = require("classes.fireball")
local slime = require("classes.slime")
local boss = require("classes.boss")

local bountyHunter = class("enemy.bountyHunter", boss)

local spritesheet = love.graphics.newImage("assets/art/SpriteSheet(WIP).png")
spritesheet:setFilter("nearest","nearest")

--Walking animations set up from spritesheet
local walkdown = animation(spritesheet, 32, 32, 0.1, 1, 4)
local walkup = animation(spritesheet, 32, 32, 0.1, 13, 16)
local walkleft = animation(spritesheet, 32, 32, 0.1, 5, 8)
local walkright = animation(spritesheet, 32, 32, 0.1, 9, 12)

--Standing animations set up from spritesheet
local standdown = animation(spritesheet, 32, 32, 0.1, 1, 1)
local standup = animation(spritesheet, 32, 32, 0.1, 13, 13)
local standleft = animation(spritesheet, 32, 32, 0.1, 5, 5)
local standright = animation(spritesheet, 32, 32, 0.1, 9, 9)

walkdown:setSpeed(0.35)
walkup:setSpeed(0.35)
walkleft:setSpeed(0.35)
walkright:setSpeed(0.35)


function bountyHunter:takeDamage(damage)
    if self.cooldown == 0 then
        self.health = self.health - damage
        self.hit = 5
    end
    self.cooldown = 10
end

function bountyHunter:initialize(x,y)
    enemy.initialize(self, x, y, 14, 10, 1, 1)

	self.ox = {}
	self.oy = {}

	self.index = 1
	self.moves = 1
	self.moving = false
	self.direction = 'down'
	self.spawnSlimes = false

    self.speed = 100
    self.hit = 0

	self.stuff = true

	self.cooldown = 0

	self.firecooldown = 0
    drawOrder:register(self)
end

function bountyHunter:update(dt)
    cols_len=0
    walkright:update(dt)
    walkleft:update(dt)
    walkdown:update(dt)
	walkup:update(dt)
    local speed = self.speed


	for _,v in ipairs(getWorld():getItemsOfType(bossPosition)) do

		table.insert(self.ox, v.x)
		table.insert(self.oy, v.y)

	end

	--Only continues when entity is alive
    if self.health > 0 then

		--Moving from point to point
        local dx, dy = 0, 0
        if self.ox[self.index] > self.x + 5 then
            dx = speed * dt
			self.moving = true
			self.spawnSlimes = true
        elseif self.ox[self.index] < self.x - 5 then
            dx = -speed * dt
			self.moving = true
			self.spawnSlimes = true
        end
        if self.oy[self.index] > self.y + 5 then
            dy = speed * dt
			self.moving = true
			self.spawnSlimes = true
        elseif self.oy[self.index] < self.y - 5 then
            dy = -speed * dt
			self.moving = true
			self.spawnSlimes = true
        end

		--Stopping once coming to indicated point and spawning slimes
		if (self.oy[self.index] < self.y + 5 and self.oy[self.index] > self.y - 5)
		  	and (self.ox[self.index] < self.x + 5 and self.ox[self.index] > self.x - 5) then
				self.moving = false
				if self.spawnSlimes then
					for i=1, 5 do
						s = slime(self.x + 10, self.y)
						getWorld():add(s, s.x, s.y, s.w, s.h)
					end
					self.spawnSlimes = false
				end
		end

		--Moving to next point after taking certain amount of damage
		if self.health == self.maxHealth - 10 * self.moves then
			if self.index == 4 then
				self.index = 1
			else
				self.index = self.index + 1
			end

			self.moves = self.moves + 1
		end

		--Cooldown after getting attacked
		if self.cooldown ~= 0 then
            self.cooldown = self.cooldown - 1
        end

		--Indicator of getting hit
        if self.hit ~=0 then
            self.hit = self.hit - 1
        end

		--Collision logic
        if dx ~= 0 or dy ~= 0 then
          local cols
          self.x, self.y, cols, cols_len = getWorld():move(self, self.x + dx, self.y + dy, function(item, other)
																								if other:isInstanceOf(bossPosition) or other:isInstanceOf(spawn) then
																									return "cross"
																								else
																									return "slide"
																								end
																							end)
			for _,v in ipairs(cols) do

			end
    	end

		if self.firecooldown == 0 and self.moving == false then
			local t = fireball(self.direction, self.x, self.y, 1)
			getWorld():add(t, t.x, t.y, t.h, t.w)
        	self.firecooldown = 80
		end

		if self.firecooldown ~= 0 then
        	self.firecooldown = self.firecooldown - 1
    	end
	end

	if self.health == 0 then
		mainPlayer.maxHealth = mainPlayer.maxHealth + 5
		mainPlayer.health = mainPlayer.maxHealth
		mainPlayer.gained = 5
		mainPlayer.notification = 20
	    self.health = self.health - 1
	    getWorld():remove(self)
		drawOrder:remove(self)
	end
end

function bountyHunter:draw()
    if self.hit~=0 then
        love.graphics.setColor(255, 0, 0)
    end

	--love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
	love.graphics.setColor(255, 0, 0)
    if self.health > 0 and self.moving == false then
    	if mainPlayer.x>self.x+10 then
            standright:draw(self.x-10, self.y-20)
			self.direction = 'right'
        elseif mainPlayer.x<self.x-10 then
            standleft:draw(self.x-10, self.y-20)
			self.direction = 'left'
		else
			if mainPlayer.y<self.y then
	            standup:draw(self.x-10, self.y-20)
				self.direction = 'up'
			elseif mainPlayer.y>self.y then
				standdown:draw(self.x-10, self.y-20)
				self.direction = 'down'
			end
		end
    end

	if self.health > 0 and self.moving == true then
    	if self.ox[self.index]>self.x+10 then
            walkright:draw(self.x-10, self.y-20)
			self.direction = 'right'
        elseif self.ox[self.index]<self.x-10 then
            walkleft:draw(self.x-10, self.y-20)
			self.direction = 'left'
		else
			if self.oy[self.index]<self.y then
	            walkup:draw(self.x-10, self.y-20)
				self.direction = 'up'
			elseif self.oy[self.index]>self.y then
				walkdown:draw(self.x-10, self.y-20)
				self.direction = 'down'
			end
		end
    end

    love.graphics.setColor(255, 255, 255, 255)
end

return bountyHunter
