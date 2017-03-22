
local gamera = require("lib.gamera")

local lovebird = require("lib.lovebird")
inspect = require("lib.inspect")

local tiled = require("lib.tiled")
local p = require("classes.player")

local textbox = require("classes.textbox")
lovebird:update()


function love.load()
    lovebird:update()
    box = textbox(1, {"Hello Adventurer",
                    "I used to be an adventurer like you",
                    "until I took an arrow to the knee"})

    player = p()
    test = tiled.map("maps.Testmap")
    cam = gamera.new(0, 0, 512, 512)
    cam:setScale(1.5)
    cam:setPosition(player.x, player.y)
end


function love.update(dt)
    lovebird:update()

    cam:setPosition(player.x, player.y)
    player:update(dt)

    box:update(dt)
end

function love.draw()
  cam:draw(function(l,t,w,h)
      test:draw(0,0)
      player:draw()
  end)



  box:draw()
end
