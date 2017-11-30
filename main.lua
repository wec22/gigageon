--[[
-- main entry point


]]

--uncomment to enable devmode
--require("devmode")

local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")
local shine = require("lib.shine")
local push = require("lib.push")
tiled = require("lib.tiled")

local entity = require("classes.entity")
local p = require("classes.player")
local explosion = require("classes.explosion")

--debug stuff
if devmode then
	lovebird = require("lib.lovebird")
    lovebird:update()
	members = drawOrder.members
	memory = 0
	memcount = 0
end

--set up push resolution scaling
local gameWidth, gameHeight = 512, 512 --fixed game resolution
local windowWidth, windowHeight = 512, 512
push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {fullscreen = false})

--create the physics world
--world = bump.newWorld()

playerlocation = 1

function love.load()
    pixelate = shine.pixelate()
    pixelate.samples = 5
    pixelate.pixel_size = 50

    missioncomplete = 0

    -- this is calling a player on load. this will cause 2 playes to spawn if a spawn object is in the map. this player will spawn at 0,0 and the 'duplicate' will spwn as intended
    --tiled.currentMap = tiled.map("maps.Testmaps.dungeon_entrance")
	tiled.changeMap("testmaps/dungeon_entrance")
	local mapWidth = tiled.currentMap.width * tiled.currentMap.tileW
	local mapHeight = tiled.currentMap.width * tiled.currentMap.tileH

    cam:setScale(2)
    cam:setPosition(mainPlayer.x, mainPlayer.y)

end

function love.update(dt)
	if devmode then
		lovebird:update()
		if memcount<60*10 then
			memory = memory + collectgarbage("count")
		elseif memcount == 60*10 then
			print("average memory over 10 seconds: ", memory/memcount)
		end
		memcount = memcount+1
	end


    cam:setPosition(math.floor(mainPlayer.x + 0.5), math.floor(mainPlayer.y + 0.5))

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
        local items = getWorld():getItems()
		local continue = true
		for _,v in ipairs(items) do
            if v:isInstanceOf(entity) then
                continue = v:update(dt)
				if continue == false then
					break
				end
            end
        end
    end
end

function love.draw()
    pixelate:draw(function()
        cam:draw(function(l,t,w,h)
                tiled.currentMap:draw()
                if devmode and devmode.bump.enabled then
                    devmode.bump.draw(getWorld())
                end
        end)
    end)
	mainPlayer:drawUI()
	if devmode then
    	love.graphics.print(love.timer.getFPS(),0,0)
	end
end
