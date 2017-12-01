local class = require("lib.middleclass")
local animation = require("classes.animation")

local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")

local explosion = require("classes.explosion")
local collisionblock = require("classes.collisionBlock")
local entity = require("classes.entity")
local projectile = require("classes.projectile")
local character = require("classes.character")

local fireball = class("fireball", entity)

local cols_len = 0

local fireshot = love.graphics.newImage("assets/art/old_fireball_sprite.png")

function fireball:initialize(direction, x, y)
	self.x = x
    self.y = y
	self.w = 5
    self.h = 5
	self.dmg = 1
	self.offsetx = 9
	self.offsety = 6
    self.direction = direction
	self.speed = 300

    if self.direction == 'right' then
        self.x = self.x + self.w + self.offsetx
    elseif self.direction == 'left' then
        self.x = self.x - self.w - self.offsety
    elseif self.direction == 'up' then
        self.y = self.y - self.h - self.offsetx
    elseif self.direction == 'down' then
    	self.y = self.y + self.h + self.offsety
    end

	drawOrder:register(self)

end

function fireball:update(dt)
	self.dx, self.dy = 0, 0
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

	if self.dx ~= 0 or self.dy ~= 0 then
		self.cols = 0
		self.x, self.y, self.cols, self.cols_len = getWorld():move(self, self.x + self.dx, self.y + self.dy,function(item, other)
																												if other:isInstanceOf(collisionblock) then
																													return "touch"
																												elseif other:isInstanceOf(explosion) or not other:isInstanceOf(entity) or other:isInstanceOf(enemy) then
																													return "cross"
																												else
																													return "touch"
																												end
																											end)
		for _,v in ipairs(self.cols) do
			self.col = v
			print("colliding with: ",v.other)
			if v.type == "touch" then
				if v.other:isInstanceOf(character) then
					v.other:takeDamage(self.dmg)
				end

				if not v.other:isInstanceOf(explosion) then
					print("fireball exploding")
					local t = explosion(self.x, self.y)
					getWorld():add(t, t.x,t.y,t.w,t.h)
					getWorld():remove(self)
					drawOrder:remove(self)
				end
			end
		end
	end
end

function fireball:draw()
    --love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
    love.graphics.draw(fireshot, self.x - 7, self.y - 5)
end



return fireball
