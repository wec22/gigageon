local class = require("lib.middleclass")


local textbox = class("textbox")

local arrow = love.graphics.newImage("Sprites/textarrow.png")
local textarrow = newAnimation(arrow, 16, 16, 0.1, 1, 2)
textarrow:setSpeed(0.1)

function textbox:initialize(text, cooldown)
    self.text = text
    self.cooldown = cooldown
    self.index = 1
end

function textbox:update(dt)
    if self.cooldown ~= 0 then
        self.cooldown = self.cooldown-1
    end
end

function textbox:draw()
    --if(text[index]) then
        local textboxlocationy = love.graphics.getHeight() - 100
        love.graphics.setColor(0, 0, 0, 255*70/100)
        love.graphics.rectangle("fill", 0, textboxlocationy, love.graphics.getWidth(), 100)
        love.graphics.setColor(255, 255, 255)
        love.graphics.rectangle("line", 0, textboxlocationy, love.graphics.getWidth(), 100)
        love.graphics.print(self.text[index], 10, textboxlocationy)
        textarrow:draw(love.graphics.getWidth()-32, textboxlocationy+75)
        if(love.keyboard.isDown("return")) then
            if(self.cooldown==0) then
                self.index = self.index + 1
                self.cooldown=20
            end
        end
    --end
end
