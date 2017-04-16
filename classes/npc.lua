local class = require("lib.middleclass")

local textbox = require("classes.textbox")
local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")
local animation = require("classes.animation")

local entity = require("classes.entity")
local character = require("classes.character")
local npc = class("npc", character)

local spritesheet = love.graphics.newImage("assets/art/Sprites.png")
spritesheet:setFilter("nearest","nearest")

local standdown = animation(spritesheet, 32, 32, 0.1, 1, 1)


--local draw = false
local cooldown = 0

function npc:initialize(x, y, interact, text)
    character.initialize(self, x,y,1,8,10,1)

    self.times = 0
    self.text = text
    --self.health = 1
    self.interaction = interact
    self.drawBox = false
    self.box = textbox(1, self.text)
    world:add(self, self.x, self.y, self.w, self.h)

    drawOrder:register(self)
end

function npc:setText(input)
    self.text = input
    self.box:setText(input)
end

function npc:getText()
    return self.box:getText()
end

function npc:update(dt)
    if self.health > 0 then
        if self.drawBox then
            self.box:update(dt)
        end
        if cooldown > 0 then
            cooldown = cooldown - 1
        end
    else
        world:remove(self)
        self.health = self.health - 1
    end
 end

function npc:draw()
    if self.health > 0 then
        standdown:draw(self.x-10,self.y-20)
    end
end

function npc:drawtextbox()
    if self.health > 0 then
        if not self.drawBox and self.interaction == 1 and cooldown == 0 then
            if player.x < self.x+1+self.w+1 and self.x+1 < player.x+player.w and
                   player.y < self.y+1+self.h+17 and self.y+1 < player.y+player.h then
                love.graphics.print("Press 'e' to interact", 0, 0)
                if love.keyboard.isDown('e') then
                    self.drawBox = true
                end
            end
        end
        if self.drawBox then
            self.box:draw()
        end
        if self.box:getText() == nil then
            self.times = self.times + 1
            self.box:resetIndex()
            self.drawBox = false
            cooldown = 20
        end
    end
end

return npc
