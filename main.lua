
local gamera = require("lib.gamera")

local lovebird = require("lib.lovebird")
local bump = require("lib.bump")

local drawOrder = require("lib.drawOrder")
members = drawOrder.members

local map = require("classes.map")
local p = require("classes.player")
local c = require("classes.collisionblock")
local slime = require("classes.slime")
local npc = require("classes.npc")
local tb = require("classes.textbox")

inspect = require("lib.inspect")

local tiled = require("lib.tiled")

world = bump.newWorld()


function love.load()
    area = map("maps.Testmap")

    player=p()
    man = npc(100, 100, 1, {"It's dangerous to go alone", "Take this"})
    slime1 = slime(200,200)

    cam = gamera.new(0,0,512,512)

    cam:setScale(3)
    cam:setPosition(player.x, player.y)
end


function love.update(dt)
    lovebird:update()

    cam:setPosition(player.x, player.y)

    player:update(dt)
    man:update(dt)
    slime1:update(dt)
end


function love.draw()
	cam:draw(function(l,t,w,h)
    	area:draw(0,0)
    	drawOrder:draw()
	end)
    man:drawtextbox()
	player:gameover()
end
