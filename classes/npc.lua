local class = require("lib.middleclass")

local textbox = require("classes.textbox")
local bump = require("lib.bump")
local animation = require("classes.animation")
local npc = class("npc")

local spritesheet = love.graphics.newImage("assets/art/PlayerSprites.png")

local standdown = animation(spritesheet, 64, 64, 0.1, 1, 1)


local draw=0

function npc:initialize(x, y, interact, text)
    self.x=x
    self.y=y
    self.h=15
    self.w=40
    self.interaction=interact
    self.position = nil
    box = textbox(1, text)
    world:add(self, self.x, self.y, self.w, self.h)
end

function npc:setDraw(input)
    draw=input
end

function npc:setText(input)
    self.text=input
end

function npc:update(dt)
    if(draw==1) then
        box:update(dt)
    end
 end

function npc:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
    standdown:draw(self.x-10,self.y-45)
--end

--function npc:drawoutcam()
    if(draw==0 and self.interaction==1) then
        if ((player.x < self.x+20 and player.x > self.x-20) or (player.y < self.y+20 and player.y > self.y-20)) then
            love.graphics.print("Press 'e' to interact", 0, 0)
            if(love.keyboard.isDown('e')) then
                draw=1
            end
        end
    end
    if(draw == 1) then
        box:draw()
    end
end

return npc
