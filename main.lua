
local gamera = require("lib.gamera")

local lovebird = require("lib.lovebird")
local bump = require("lib.bump")

local drawOrder = require("lib.drawOrder")
members = drawOrder.members

local map = require("classes.map")
local p = require("classes.player")
local Testmap = require("maps.map1")
local animation = require("maps.map2")
local c = require("classes.collisionblock")

inspect = require("lib.inspect")

local tiled = require("lib.tiled")

world = bump.newWorld()

playerlocation = 1

function love.load()
    upperboundry = c(0,0, 512, 1)
    leftboundry = c(0,0, 1, 512)
    lowerboundry = c(0,512, 512, 1)
    rightboundry = c(512, 0, 1, 512)

    area = map("maps.Testmap")

    player=p()
    cam = gamera.new(0,0,512,512)

    cam:setScale(3.5)
    cam:setPosition(player.x, player.y)
end


function love.update(dt)

    if(playerlocation == 1) then
            arealoaded = Testmap()
            playerlocation = 0
    elseif(playerlocation == 2) then
            arealoaded = animation()
            playerlocation = 0
    end

    lovebird:update()

    cam:setPosition(player.x, player.y)

    player:update(dt)

    arealoaded:update(dt)
end


function love.draw()
	cam:draw(function(l,t,w,h)
    	area:draw(0,0)
    	drawOrder:draw()
	end)
	player:gameover()
end
