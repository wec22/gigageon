local class = require("lib.middleclass")

local animation = require("classes.animation")

local zinput = require("lib.zinput")
local det = require("lib.detectors")

local textbox = class("textbox")


local arrow = love.graphics.newImage("assets/art/textarrow.png")
local textarrow = animation(arrow, 16, 16, 0.1, 1, 2)

textbox:include(zinput)

textarrow:setSpeed(0.3)

function textbox:initialize(cooldown, text)
    self.text = text
    self.cooldown = 20
    self.index = 1

	self:newbutton("interact", det.button.key("e"))
	self.inputs.interact:addDetector(det.button.gamepad("b", 1))
end

function textbox:resetIndex()
    self.index = 1
end

function textbox:getText()
    return self.text[self.index]
end

function textbox:setText(text)
    self.text = text
end

function textbox:update(dt)
    textarrow:update(dt)
    if self.cooldown ~= 0 then
        self.cooldown = self.cooldown-1
    end
end

function textbox:draw()
    if self.text[self.index] then
        local textboxlocationy = love.graphics.getHeight() - 100
        love.graphics.setColor(0, 0, 0, 255*.7)
        love.graphics.rectangle("fill", 0, textboxlocationy, love.graphics.getWidth(), 100)
        love.graphics.setColor(255, 255, 255)
        love.graphics.rectangle("line", 0, textboxlocationy, love.graphics.getWidth(), 100)

        love.graphics.print(self.text[self.index], 10, textboxlocationy)
        textarrow:draw(love.graphics.getWidth()-32, textboxlocationy+75)

        if self.inputs.interact() then
            if self.cooldown==0 then
                self.index = self.index + 1
                self.cooldown = 20
                self.cooldown=15
            end
        end
    end
end

return textbox
