local class = require("lib.middleclass")
local animation = require("classes.animation")

local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")

local enemy = require("classes.enemy")
local explosion = require("classes.explosion")

local entity = require("classes.entity")
local projectile = require("classes.projectile")
local laser = class("laser", entity)

local cols_len = 0

function laser:initialize(direction, x, y, pOe)
	self.x = x
    self.y = y
	self.w = 5
    self.h = 5
	self.dmg = 1
	self.pOe = pOe
	self.px = mainPlayer.x
	self.py = mainPlayer.y
	self.offsetx = 9
	self.offsety = 4
    self.direction = direction
	self.speed = 300

	self.fireshot = love.graphics.newImage("assets/art/fireball_sprite.png")

    if self.direction == 'right' then
        self.x = self.x + self.w + self.offsetx
    elseif self.direction == 'left' then
        self.x = self.x - self.w - self.offsety
    elseif self.direction == 'up' then
        self.y = self.y - self.h - self.offsetx
    elseif self.direction == 'down' then
    	self.y = self.y + self.h + self.offsety
    end

	if self.pOe ~= 0 then
		self.fireshot = love.graphics.newImage("assets/art/old_fireball_sprite.png")
	end

 	right, left, up, down = false
	if self.px > self.x + 5 then
		right = true
	elseif self.px < self.x - 5 then
		left = true
	end
	if self.py > self.y + 5 then
		down = true
	elseif self.py < self.y - 5 then
		up = true
	end

	world:add(self, self.x, self.y, self.w, self.h)
	drawOrder:register(self)

end

function laser:update(dt)
	self.dx, self.dy = 0, 0

	if self.pOe == 0 then
    	if self.direction == 'right' then
        	self.x = self.x + self.speed * dt
			self.dx = 1
    	elseif self.direction == 'left' then
        	self.x = self.x - self.speed * dt
			self.dx = 1
    	elseif self.direction == 'up' then
        	self.y = self.y - self.speed * dt
			self.dy = 1
    	elseif self.direction == 'down' then
        	self.y = self.y + self.speed * dt
			self.dy = 1
    	end

		else
			if right then
				self.x = self.x + self.speed * dt
	            self.dx = 1
	        elseif left then
				self.x = self.x - self.speed * dt
	            self.dx = 1
	        end
	        if down then
				self.y = self.y + self.speed * dt
	            self.dy = 1
	        elseif up then
				self.y = self.y - self.speed * dt
	            self.dy = 1
	        end
	end

	if self.dx ~= 0 or self.dy ~= 0 then
		self.cols = 0
		self.x, self.y, self.cols, self.cols_len = world:move(self, self.x + self.dx, self.y + self.dy,function(item, other)
																						if other:isInstanceOf(explosion) then
																						return "cross"
																					else
																						return "touch"
																					end
																				end)
		for _,v in ipairs(self.cols) do
			self.col = v

			if self.pOe == 0 then
				if v.other:isInstanceOf(enemy) then
					v.other:TakingDamage(self.dmg)
				end
			else
				if v.other == mainPlayer then
				   v.other:TakingDamage(self.dmg, self.x, self.y, self.h, self.w)
			   end
			end

			if not v.other:isInstanceOf(explosion) then
				explosion(self.x, self.y)
				world:remove(self)
				drawOrder:remove(self)
			end
		end
	end
end

function laser:draw()
    --love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
    love.graphics.draw(self.fireshot, self.x - 7, self.y - 5)
end



return laser
