local class = require("lib.middleclass")

local entity = require("classes.entity")
local npc = class("npc")

local textbox = require("classes.textbox")
local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")
local animation = require("classes.animation")

local spritesheet = love.graphics.newImage("assets/art/PlayerSprites.png")

local standdown = animation(spritesheet, 64, 64, 0.1, 1, 1)


local draw = 0
local cooldown = 0

function npc:initialize(x, y, interact, text)
    self.x=x
    self.y=y
    self.h=15
    self.w=40
    self.text = text
    self.interaction=interact
    box = textbox(1, self.text)
    world:add(self, self.x, self.y, self.w, self.h)

    drawOrder:register(self)
end

function npc:setText(input)
    self.text=input
end

function npc:update(dt)
    if(draw==1) then
        box:update(dt)
    end
    if(cooldown ~= 0) then
        cooldown = cooldown - 1
    end
 end

function npc:draw()
    standdown:draw(self.x-10,self.y-45)
end

function npc:drawtextbox()
    if(draw==0 and self.interaction==1 and cooldown == 0) then
        if (player.x < self.x+1+self.w+1 and self.x+1 < player.x+player.w and
               player.y < self.y+1+self.h+17 and self.y+1 < player.y+player.h) then
            love.graphics.print("Press 'e' to interact", 0, 0)
            if(love.keyboard.isDown('e')) then
                draw=1
            end
        end
    end
    if(draw == 1) then
        box:draw()
    end
    if(box:getText() == nil) then
        box:resetIndex()
        draw = 0
        cooldown = 20
    end
end

return npc
