require("lib.textbox")
require("lib.AnAL")

local gamera = require "lib.gamera"
local map = require("classes.map")
local p = require("classes.player")
local tb = require("classes.textbox")

function love.load()
  text = {
      "Hello Adventurer", "I used to be an adventurer like you", "until I took an arrow to the knee"
  }
  test = map("Maps.Testmap")
  player=p()
  textbox = tb(text)
  cam = gamera.new(0,0,512,512)
  cam:setScale(1.5)
  cam:setPosition(player.x, player.y)
end

function love.update(dt)
  cam:setPosition(player.x, player.y)
  player:update(dt)
  textbox:update(dt)
end

function love.draw()
  cam:draw(function(l,t,w,h)
      test:draw(0,0)
    player:draw()
  end)
  textbox:draw()
end
