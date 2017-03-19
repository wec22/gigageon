local lovebird = require("lib.lovebird")
local map = require("classes.map")

function love.load()
    test = map("maps.animation")
end

function love.update()
    lovebird:update()

end

function love.draw()
    test:draw()
end
