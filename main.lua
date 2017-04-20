--[[
-- main entry point


]]

require("devmode")

local gamera = require("lib.gamera")
local lovebird = require("lib.lovebird")
local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")
local shine = require("lib.shine")
local push = require("lib.push")
local tiled = require("lib.tiled")

local entity = require("classes.entity")

local explosion = require("classes.explosion")
local player = require("classes.player")

local outsideCastle = require("maps.Castle_Outside")
local insideCastle = require("maps.Castle_Inside")
local dungeon = require("maps.Dungeon")

--debug stuff
if devmode then
    inspect = require("lib.inspect")
    members = drawOrder.members
    bump_debug = require("lib.bump_debug")
    lovebird:update()
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

    explosion(256, 256)


    --upperboundry = c(0,0, 512, 1)
    --leftboundry = c(0,0, 1, 512)
    --lowerboundry = c(0,512, 512, 1)
    --rightboundry = c(512, 0, 1, 512)

    missioncomplete = 0

    textTable = {"Hello Traveler!","I am the king of this land!", "I have heard lots about you and your journeys!", "Might I implore you for an issue we have been \nexperiencing?",
    "Our monster dungeon has been overrun with \nslimes!", "Many of our warriors have been unsuccessful in \neliminating the threat\nBut now you have come!",
    "The tales of the ancients have talked about your \nlegendary fire magic!", "They say you make it look as easy as \npressing the 'space' key on a keyboard",
    "Whatever a keyboard is, I'm sure we have nothing\nto worry about now", "Oh yes! The dungeon! Why its downstairs\njust turn right and you'll see it!",
    "Now, I will see you when you've killed every\nlast one of those slimes!"}

    player=player()
    cam = gamera.new(0,0,512,512)

    cam:setScale(2)
    cam:setPosition(player.x, player.y)
    testmap = tiled.map("maps.Testmaps.newTilesets")
end


function love.update(dt)
--[[
    if playerlocation == 1 then
        arealoaded = outsideCastle()
        playerlocation = 0
    elseif playerlocation == 2 then
        arealoaded = insideCastle()
        playerlocation = 0
    elseif playerlocation == 3 then
        arealoaded = dungeon()
        playerlocation = 0
    end
]]
    lovebird:update()

    cam:setPosition(player.x, player.y)

    if pixelate._pixel_size>1 then
        pixelate:set("pixel_size", pixelate._pixel_size-50*dt)
    else
        pixelate:set("pixel_size", 1)
    end
    if pixelate._pixel_size == 1 then
        local items = world:getItems()
        for _,v in ipairs(items) do
            if v:isInstanceOf(entity) then
                v:update(dt)
            end
        end


    end
    --arealoaded:update(dt)
end

function love.draw()
    love.graphics.print(love.timer.getFPS(),0,0)
    pixelate:draw(function()
        cam:draw(function(l,t,w,h)
                --arealoaded.area:draw()
                testmap:draw()

                --drawOrder:draw()
                if devmode then
                    bump_debug.draw(world)
                end
        end)
    end)

    --love.graphics.rectangle("fill", 256, 256, 10, 10)
    --arealoaded:drawoutcam()
	player:gameover()
end
