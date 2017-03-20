local class = require("lib.middleclass")

local animation = require("classes.animation")

local textbox = class("textbox")

local arrow = love.graphics.newImage("Sprites/textarrow.png")
local textarrow = animation(arrow, 16, 16, 0.1, 1, 2)

textarrow:setSpeed(0.1)

<<<<<<< HEAD:classes/textbox.lua
function textbox:initialize(cooldown, text)
=======
function textbox:initialize(text)
>>>>>>> origin/master:classes/textbox.lua
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
<<<<<<< HEAD:classes/textbox.lua
    if self.text[self.index] then
=======
    if(self.text[self.index]) then
>>>>>>> origin/master:classes/textbox.lua
        local textboxlocationy = love.graphics.getHeight() - 100
        love.graphics.setColor(0, 0, 0, 255*.7)
        love.graphics.rectangle("fill", 0, textboxlocationy, love.graphics.getWidth(), 100)
        love.graphics.setColor(255, 255, 255)
        love.graphics.rectangle("line", 0, textboxlocationy, love.graphics.getWidth(), 100)
<<<<<<< HEAD:classes/textbox.lua

        love.graphics.print(self.text[self.index], 10, textboxlocationy)

=======
        love.graphics.print(self.text[self.index], 10, textboxlocationy)
>>>>>>> origin/master:classes/textbox.lua
        textarrow:draw(love.graphics.getWidth()-32, textboxlocationy+75)

        if love.keyboard.isDown("return") then
            if self.cooldown == 0 then
                self.index = self.index + 1
<<<<<<< HEAD:classes/textbox.lua
                self.cooldown = 20
=======
                self.cooldown=15
>>>>>>> origin/master:classes/textbox.lua
            end
        end
    end
end

return textbox
