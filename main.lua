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
local c = require("classes.collisionBlock")
local p = require("classes.player")
local explosion = require("classes.explosion")

local outsideCastle = require("maps.Castle_Outside")
local insideCastle = require("maps.Castle_Inside")
local dungeon = require("maps.Dungeon")
local aStarTest = require("maps.aStarTest")

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

function love.load()
    pixelate = shine.pixelate()
    pixelate.samples = 5
    pixelate.pixel_size = 50

    missioncomplete = 0

    textTable = {"Hello Traveler!","I am the king of this land!", "I have heard lots about you and your journeys!", "Might I implore you for an issue we have been \nexperiencing?",
    "Our monster dungeon has been overrun with \nslimes!", "Many of our warriors have been unsuccessful in \neliminating the threat\nBut now you have come!",
    "The tales of the ancients have talked about your \nlegendary fire magic!", "They say you make it look as easy as \npressing the 'space' key on a keyboard",
    "Whatever a keyboard is, I'm sure we have nothing\nto worry about now", "Oh yes! The dungeon! Why its downstairs\njust turn right and you'll see it!",
    "Now, I will see you when you've killed every\nlast one of those slimes!"}

    testmap = tiled.map("maps.aStarMap")
    cam = gamera.new(0,0,512,512)

    cam:setScale(1)
    cam:setPosition(mainPlayer.x, mainPlayer.y)
end


function love.update(dt)
    lovebird:update()

    cam:setPosition(math.floor(mainPlayer.x + 0.5), math.floor(mainPlayer.y + 0.5))

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

end

function love.draw()
    love.graphics.print(love.timer.getFPS(),0,0)
    pixelate:draw(function()
        cam:draw(function(l,t,w,h)
                testmap:draw()
                if devmode then
                    bump_debug.draw(world)
                end
        end)
    end)
	  mainPlayer:gameover()
end
