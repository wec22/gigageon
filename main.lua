--[[
-- main entry point


]]

--uncomment to enable devmode
require("devmode")

local gamera = require("lib.gamera")
local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")
local shine = require("lib.shine")
local push = require("lib.push")
local tiled = require("lib.tiled")

local entity = require("classes.entity")
local p = require("classes.player")
local explosion = require("classes.explosion")

--debug stuff
if devmode then
	local lovebird = require("lib.lovebird")
    lovebird:update()
	members = drawOrder.members
end

--set up push resolution scaling
local gameWidth, gameHeight = 512, 512 --fixed game resolution
local windowWidth, windowHeight = 512, 512
push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {fullscreen = false})

--create the physics world
world = bump.newWorld()

playerlocation = 1

function love.load()
    pixelate = shine.pixelate()
    pixelate.samples = 5
    pixelate.pixel_size = 50

    missioncomplete = 0

    player = p()
    cam = gamera.new(0,0,512,512)

    cam:setScale(2)
    cam:setPosition(player.x, player.y)
    testmap = tiled.map("maps.Testmaps.newTilesets")
end

function love.update(dt)
	if devode then
		lovebird:update()
	end

    cam:setPosition(math.floor(player.x + 0.5), math.floor(player.y + 0.5))

	if true then
	    if pixelate._pixel_size>1 then
	        pixelate:set("pixel_size", pixelate._pixel_size-50*dt)
	    else
	        pixelate:set("pixel_size", 1)
	    end
	else
		if pixelate._pixel_size<50 then
			pixelate:set("pixel_size", pixelate._pixel_size+50*dt)
		else
			pixelate:set("pixel_size", 50)
		end
	end


    if pixelate._pixel_size == 1 then
        local items = world:getItems()
        for _,v in ipairs(items) do
            if v:isInstanceOf(entity) then
                v:update(dt)
            end
        end
    end
end

function love.draw()
    love.graphics.print(love.timer.getFPS(),0,0)
    pixelate:draw(function()
        cam:draw(function(l,t,w,h)
                testmap:draw()
                if devmode and devmode.bump.enabled then
                    devmode.bump.draw(world)
                end
        end)
    end)
	player:gameover()
end
