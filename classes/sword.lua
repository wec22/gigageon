local class = require("lib.middleclass")
local animation = require("classes.animation")

local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")

local entity = require("classes.entity")

local sword = class("sword", entity)

local cols_len = 0

function sword:initialize(x, y, w, h)
	entity.initialize(self, x, y, 1, w, h)
	self.x = x
	self.y = y
	self.w = w
	self.h = h
	self.dmg = 3
	self.pushed = false
	self.removed = false
end

function sword:update(dt, lastpushed, x, y)
	local dx, dy = 0, 0
	local cols = 0

	if self.pushed == true and self.removed == false then
		local removed = 0
		if lastpushed == 'w' then
			self.x, self.y, cols, cols_len = world:move(self, self.x - 1, self.y)
			if self.x - x == 0  or cols > 0 then
				removed = 1
			end
			dx = 1
		elseif lastpushed == 's' then
			self.x, self.y, cols, cols_len = world:move(self, self.x + 1, self.y)
			if self.x - x > 10  or cols_len > 0 then
				removed = 1
			end
			dx = 1
		elseif lastpushed == 'a' then
			self.x, self.y, cols, cols_len = world:move(self, self.x, self.y + 1)
			if self.y - y > 10  or cols_len > 0 then
				removed = 1
			end
			dy = 1
		elseif lastpushed == 'd' then
			self.x, self.y, cols, cols_len = world:move(self, self.x, self.y - 1)
			if self.y - y == 0 or cols_len > 0 then
				removed = 1
			end
			dy = 1
		end

		if removed == 1 then
			self.pressed = false
			self.removed = true
			self.x = 0
			self.y = 0
			world:remove(self)
		end
	end

	if dx ~= 0 or dy ~= 0 then
		for _,v in ipairs(cols) do
			  local col = v

			  if v.other:isInstanceOf(slime) then
				  print("working")
					  v.other:TakingDamage(self.dmg)
			  end
		end
	end
end

function sword:draw()
end

return sword
