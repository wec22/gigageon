local class = require("lib.middleclass")

local animation = require("classes.animation")

local textbox = class("textbox")

local arrow = love.graphics.newImage("Sprites/textarrow.png")
local textarrow = animation(arrow, 16, 16, 0.1, 1, 2)

textarrow:setSpeed(0.1)

function textbox:initialize(cooldown, text)
    self.text = text
    self.cooldown = 0
    self.index = 1
end

function textbox:update(dt)
    textarrow:update(dt)
    if self.cooldown ~= 0 then
        self.cooldown = self.cooldown-1
    end
end

function textbox:draw()
    if(self.text[self.index]) then
        local textboxlocationy = love.graphics.getHeight() - 100
        love.graphics.setColor(0, 0, 0, 255*.7)
        love.graphics.rectangle("fill", 0, textboxlocationy, love.graphics.getWidth(), 100)
        love.graphics.setColor(255, 255, 255)
        love.graphics.rectangle("line", 0, textboxlocationy, love.graphics.getWidth(), 100)

        love.graphics.print(self.text[self.index], 10, textboxlocationy)
        textarrow:draw(love.graphics.getWidth()-32, textboxlocationy+75)

        if(love.keyboard.isDown("e")) then
            if(self.cooldown==0) then
                self.index = self.index + 1
                self.cooldown=15
            end
        end
    end
end

return textbox
