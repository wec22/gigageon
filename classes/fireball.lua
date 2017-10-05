local class = require("lib.middleclass")
local animation = require("classes.animation")

local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")

local slime = require("classes.slime")
local explosion = require("classes.explosion")

local entity = require("classes.entity")
local projectile = require("classes.projectile")
local fireball = class("fireball",entity)

local fireshot = love.graphics.newImage("assets/art/fireball_sprite.png")

local cols_len = 0

function fireball:initialize(lastpushed, x, y)
	self.x = x
    self.y = y
	self.w = 5
    self.h = 5
	self.offsetx = 0
	self.offsety = 0
    self.fired = 0

    self.lastpushed = lastpushed
	self.removed = false

    if self.lastpushed == 'd' then
        self.fired = 1
		self.offsetx = 9
        self.x = self.x + self.w
    elseif self.lastpushed == 'a' then
        self.fired = 2
		self.offsetx = -4
        self.x = self.x - self.w
    elseif self.lastpushed == 'w' then
        self.fired = 3
		self.offsety = -9
        self.y = self.y - self.h
    elseif self.lastpushed == 's' then
        self.fired = 4
		self.offsety = 4
        self.y = self.y + self.h
    end

	self.x = self.x + self.offsetx
	self.y = self.y + self.offsety

	world:add(self, self.x,self.y,self.w,self.h)
	drawOrder:register(self)

end

function fireball:update(dt)

	if self.removed == false then
		local dx, dy = 0, 0

	    if self.fired == 1 then
	        self.x = self.x + 300 * dt
			dx = 1
	    elseif self.fired == 2 then
	        self.x = self.x - 300 * dt
			dx = 1
	    elseif self.fired == 3 then
	        self.y = self.y - 300 * dt
			dy = 1
	    elseif self.fired == 4 then
	        self.y = self.y + 300 * dt
			dy = 1
	    end

		if dx ~= 0 or dy ~= 0 then
		  local cols
		  self.x, self.y, cols, cols_len = world:move(self, self.x + dx, self.y + dy,function(item, other)
		  																				if other:isInstanceOf(explosion) then
																							return "cross"
																						else
																							return "touch"
																						end
																					end)
		  for _,v in ipairs(cols) do
				local col = v

				if v.other:isInstanceOf(slime) then
						v.other:TakingDamage()
				end

				if not v.other:isInstanceOf(explosion) then
					explosion(self.x, self.y)
					self.removed = true
					world:remove(self)
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
