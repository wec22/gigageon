
local gamera = require("lib.gamera")
local lovebird = require("lib.lovebird")


local map = require("classes.map")
local p = require("classes.player")
<<<<<<< HEAD
local textbox = require("classes.textbox")



function love.load()
    box = textbox(1, {"Hello Adventurer",
                    "I used to be an adventurer like you",
                    "until I took an arrow to the knee"})

    test = map("Maps.Testmap")
    player = p()

    cam = gamera.new(0, 0, 512, 512)
    cam:setScale(1.5)
    cam:setPosition(player.x, player.y)
end

function love.update(dt)
    lovebird:update()

    cam:setPosition(player.x, player.y)
    player:update(dt)

    box:update(dt)
=======
local b = require("classes.textbox")


function love.load()
  text = {
        "Hello Adventurer", "I used to be an adventurer like you", "until I took an arrow to the knee"
  }
  test = map("Maps.Testmap")
  player=p()
  box = b(text)
  cam = gamera.new(0,0,512,512)
  cam:setScale(1.5)
  cam:setPosition(player.x, player.y)
end

function love.update(dt)
  cam:setPosition(player.x, player.y)
  player:update(dt)
  box:update(dt)
>>>>>>> origin/master
end

function love.draw()
  cam:draw(function(l,t,w,h)
      test:draw(0,0)
      player:draw()
  end)
<<<<<<< HEAD

=======
>>>>>>> origin/master
  box:draw()
end
