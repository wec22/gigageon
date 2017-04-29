
local gamera = require("lib.gamera")

local lovebird = require("lib.lovebird")

local bump = require("lib.bump")
local npc = require("classes.npc")

local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")
local shine = require("lib.shine")

members = drawOrder.members

local p = require("classes.player")
local outsideCastle = require("maps.Castle_Outside")
local insideCastle = require("maps.Castle_Inside")
local dungeon = require("maps.Dungeon")
local c = require("classes.collisionblock")

inspect = require("lib.inspect")

world = bump.newWorld()

playerlocation = 1

function love.load()
    pixelate = shine.pixelate()
    pixelate.samples = 5
    pixelate.pixel_size = 50


    upperboundry = c(0,0, 512, 1)
    leftboundry = c(0,0, 1, 512)
    lowerboundry = c(0,512, 512, 1)
    rightboundry = c(512, 0, 1, 512)

    missioncomplete = 0

    textTable = {"Hello Traveler!","I am the king of this land!", "I have heard lots about you and your journeys!", "Might I implore you for an issue we have been \nexperiencing?",
    "Our monster dungeon has been overrun with \nslimes!", "Many of our warriors have been unsuccessful in \neliminating the threat\nBut now you have come!",
    "The tales of the ancients have talked about your \nlegendary fire magic!", "They say you make it look as easy as \npressing the 'space' key on a keyboard",
    "Whatever a keyboard is, Im sure we have nothing\nto worry about now", "Oh yes! The dungeon! Why its downstairs\njust turn right and youll see it!",
    "Now, I will see you when you've killed every\nlast one of those slimes!"}

    player=p()
    cam = gamera.new(0,0,512,512)

    cam:setScale(2)
    cam:setPosition(player.x, player.y)
end


function love.update(dt)

    if(playerlocation == 1) then
            arealoaded = outsideCastle()
            playerlocation = 0
    elseif(playerlocation == 2) then
            arealoaded = insideCastle()
            playerlocation = 0
    elseif(playerlocation == 3) then
            arealoaded = dungeon()
            playerlocation = 0
    end

    lovebird:update()

    cam:setPosition(player.x, player.y)

    if pixelate._pixel_size>1 then
        pixelate:set("pixel_size", pixelate._pixel_size-50*dt)
    else
        pixelate:set("pixel_size", 1)
    end

    player:update(dt)

    arealoaded:update(dt)
end

function love.draw()
    love.graphics.print(love.timer.getFPS(),0,0)
    pixelate:draw(function()
        cam:draw(function(l,t,w,h)
                arealoaded.area:draw()
                drawOrder:draw()
        end)
    end)
    arealoaded:drawoutcam()
	player:gameover()
end
