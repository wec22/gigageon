local class = require("lib.middleclass")
local animation = require("classes.animation")

local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")

local slime = require("classes.slime")
local explosion = require("classes.explosion")

local entity = require("classes.entity")
local projectile = require("classes.projectile")
local laser = class("laser",entity)

local fireshot = love.graphics.newImage("assets/art/fireball_sprite.png")

local cols_len = 0

function laser:initialize(direction, x, y)
	self.x = x
    self.y = y
	self.w = 5
    self.h = 5
	self.offsetx = 0
	self.offsety = 0
    self.direction = direction

    if self.direction == 'right' then
        self.x = self.x + self.w + 9
    elseif self.direction == 'left' then
        self.x = self.x - self.w - 4
    elseif self.direction == 'up' then
        self.y = self.y - self.h - 9
    elseif self.direction == 'down' then
        self.y = self.y + self.h + 4
    end

	drawOrder:register(self)

end

function laser:update(dt)
	local dx, dy = 0, 0

    if self.direction == 'right' then
        self.x = self.x + 300 * dt
		dx = 1
    elseif self.direction == 'left' then
        self.x = self.x - 300 * dt
		dx = 1
    elseif self.direction == 'up' then
        self.y = self.y - 300 * dt
		dy = 1
    elseif self.direction == 'down' then
        self.y = self.y + 300 * dt
		dy = 1
    end

	if dx ~= 0 or dy ~= 0 then
		local cols
		self.x, self.y, cols, cols_len = getWorld():move(self, self.x + dx, self.y + dy,function(item, other)
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
				e = explosion(self.x-10, self.y-10)
				getWorld():add(e, e.x, e.y, e.width, e.height)
				getWorld():remove(self)
				drawOrder:remove(self)
			end
		end
	end
end

function laser:draw()
    --love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
    love.graphics.draw(fireshot, self.x - 7, self.y - 5)
end



return laser
