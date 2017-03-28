
local gamera = require("lib.gamera")

local lovebird = require("lib.lovebird")
local bump = require("lib.bump")

local map = require("classes.map")
local p = require("classes.player")
local slime = require("classes.slime")
local npc = require("classes.npc")
local c = require("classes.collisionblock")

inspect = require("lib.inspect")

local tiled = require("lib.tiled")
lovebird:update()

world = bump.newWorld()


function love.load()
    test = map("maps.Testmap")

    player=p()
    slime1=slime(400, 400)

    cam = gamera.new(0,0,512,512)

    cam:setScale(1.5)
    cam:setPosition(player.x, player.y)
end


function love.update(dt)
    lovebird:update()

    cam:setPosition(player.x, player.y)

    player:update(dt)
    slime1:update(dt)
end

function love.draw()
  cam:draw(function(l,t,w,h)
    test:draw(0,0)
    player:stand()
    player:draw()
    slime1:draw()
  end)

end
