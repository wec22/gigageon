local class = require("lib.middleclass")
local animation = require("classes.animation")

local bump = require("lib.bump")

local slime = require("classes.slime")

local projectile = require("classes.projectile")
local fireball = class("fireball")

local fireshot = love.graphics.newImage("assets/art/fireball_sprite.png")

local cols_len = 0

function fireball:initialize(player)
    self.x = player.x + 15
    self.y = player.y + 10
    self.w = 5
    self.h = 5
    self.fired = 0
	self.removed=false
    self.lastpushed = player.lastpushed
	world:add(self,self.x,self.y,self.w,self.h)
end

function fireball:update(dt)

	if self.removed == false then
	    if(fired == 0) then
	        self.x = player.x - 5
	        self.y = player.y
	    end

	    if(love.keyboard.isDown("space")) then
	        if(self.lastpushed == 'd') then
				self.x = player.x + 15
	            self.fired = 1
	        elseif(self.lastpushed == 'a') then
				self.x = player.x - 15
	            self.fired = 2
	        elseif(self.lastpushed == 'w') then
				self.y = player.y - 15
	            self.fired = 3
	        elseif(self.lastpushed == 's') then
				self.y = player.y + 15
	            self.fired = 4
	        end
	    end

		local dx, dy = 0, 0
	    if(self.fired == 1) then
	        self.x = self.x + 300 * dt
			dx = 1
	        if(love.keyboard.isDown("space")) then
	                self.fired = 1
	        end
	    elseif(self.fired == 2) then
	        self.x = self.x - 300 * dt
			dx = 1
	        if(love.keyboard.isDown("space")) then
	                self.fired = 2
	        end
	    elseif(self.fired == 3) then
	        self.y = self.y - 300 * dt
			dy = 1
	        if(love.keyboard.isDown("space")) then
	                self.fired = 3
	        end
	    elseif(self.fired == 4) then
	        self.y = self.y + 300 * dt
			dy = 1
	        if(love.keyboard.isDown("space")) then
	                self.fired = 4
	        end
	    end

		if dx ~= 0 or dy ~= 0 then
	      local cols
	      self.x, self.y, cols, cols_len = world:move(self, self.x + dx, self.y + dy)
	      for _,v in ipairs(cols) do
	        local col = v

			if cols_len >= 1 then
				self.removed = true
				world:remove(self)
			end

			if v.other:isInstanceOf(slime) then
					v.other:TakingDamage()
			end
			
	      end
	  	end
	end
end

function fireball:draw()
		if self.removed == false then
    		love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
    		love.graphics.draw(fireshot, self.x - 7, self.y - 5)
		end
end



return fireball
