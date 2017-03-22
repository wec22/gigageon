
local gamera = require("lib.gamera")
local lovebird = require("lib.lovebird")
local bump = require("lib.bump")

local map = require("classes.map")
local p = require("classes.player")
local c = require("classes.collision")
local textbox = require("classes.textbox")

world = bump.newWorld()

function love.load()

    box = textbox(1, {"Hello Adventurer",
                    "I used to be an adventurer like you",
                    "until I took an arrow to the knee"})
    test = map("Maps.Testmap")
    player=p()
    block1 = c(0, 0, 800, 32)
    block2 = c(0, 32, 32, 600-32*2)
    block3 = c(800-32, 32, 32, 600-32*2)
    block4 = c(0, 600-32, 800, 32)
    block5 = c(100, 100, 100, 100)


    cam = gamera.new(0,0,512-16,512-16)
    cam:setScale(1.5)
    cam:setPosition(player.x, player.y)
end

function love.update(dt)
    lovebird:update()

    cam:setPosition(player.x, player.y)

    box:update(dt)
    player:update(dt)
end

function love.draw()
  cam:draw(function(l,t,w,h)
    test:draw(0,0)
    block5:draw()
    player:stand()
    player:draw()
  end)


  box:draw()
end
