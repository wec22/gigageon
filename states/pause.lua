local pause = game:addState("pause")

function pause:enteredState()
    print("entering the pause state")
    self.myvar=3
    self.background=love.graphics.newImage(love.graphics.newScreenshot())
end

function pause:update()

end

function pause:draw()
    love.graphics.draw(self.background)
end

function pause:test() print("pause test") end

function pause:exitedState()
    print("exiting the pause State")

end
