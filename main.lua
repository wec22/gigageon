require("lib.AnAL")

local gamera = require "lib.gamera"
local map = require("classes.map")
local p = require("classes.player")

local arrow = love.graphics.newImage("Sprites/textarrow.png")
local textarrow = newAnimation(arrow, 16, 16, 0.1, 1, 2)
textarrow:setSpeed(0.1)

function love.load()
  cooldown = 0
  text = {
        "Hello Adventurer", "I used to be an adventurer like you", "until I took an arrow to the knee"
  }
  test = map("Maps.Testmap")
  player=p()
  cam = gamera.new(0,0,512,512)
  cam:setScale(1.5)
  cam:setPosition(player.x, player.y)
end

function love.update(dt)
  cam:setPosition(player.x, player.y)
  player:update(dt)
  if cooldown ~= 0 then
      cooldown = cooldown-1
  end
end

function love.draw()
  cam:draw(function(l,t,w,h)
      test:draw(0,0)
    player:draw()
  end)
  --if(text[index]) then
      local textboxlocationy = love.graphics.getHeight() - 100
      love.graphics.setColor(0, 0, 0, 255*70/100)
      love.graphics.rectangle("fill", 0, textboxlocationy, love.graphics.getWidth(), 100)
      love.graphics.setColor(255, 255, 255)
      love.graphics.rectangle("line", 0, textboxlocationy, love.graphics.getWidth(), 100)
      love.graphics.print(text[index], 10, textboxlocationy)
      textarrow:draw(love.graphics.getWidth()-32, textboxlocationy+75)
      if(love.keyboard.isDown("return")) then
          if(cooldown==0) then
              index = index + 1
              cooldown=20
          end
      end
  --end
end
