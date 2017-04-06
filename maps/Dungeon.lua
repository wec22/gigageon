local class = require("lib.middleclass")
local tiled = require("lib.tiled")
local c = require("classes.collisionblock")
local slime = require("classes.slime")
local npc = require("classes.npc")
local tb = require("classes.textbox")

local map = class("map")

local function IntersectingwithPlayer(x1,y1,w1,h1, x2,y2,w2,h2)
    return x1 < x2+w2 and x2 < x1+w1 and
           y1 < y2+h2 and y2 < y1+h1
end

local blocks = {}

local slimes = {}

function map:initialize()
    area = tiled.map("maps.DungeonBasement")
    slimes[1] = slime(32,300)
    slimes[2] = slime(32,300)
    slimes[3] = slime(64,300)
    slimes[4] = slime(64,300)
    slimes[5] = slime(80,300)
    slimes[6] = slime(80,300)
    slimes[7] = slime(96,300)
    slimes[8] = slime(96,300)
    DungeonExit = {x=512-16,y=16*15,w=32,h=16}
    init_outside_castle = 1
end

function map:update(dt)
    if(init_outside_castle == 1) then
        blocks[1] = c(0,16*8,512,1)
        blocks[2] = c(0,16*23,512,1)
        init_outside_castle = 0
    end
    local sum = 0

    for index = 1, 8 do
        sum = sum + slimes[index].health
    end

    if(sum <= 0) then
        textTable = {"Thank you for killing all of\nthose rotten slimes!", "I knew we could trust you!"}
        missioncomplete = 1
    end

    local changeMap = IntersectingwithPlayer(player.x,player.y,player.w,player.h, DungeonExit.x, DungeonExit.y,DungeonExit.w,DungeonExit.h)

    if(changeMap) then
        player.x = 512-48
        player.y = 16*8
        for _,b in pairs(blocks) do
            b:remove()
        end
        for index = 1, 8 do
            if(slimes[index].health~=-1) then
                slimes[index].health = 0
            end
        end
        playerlocation = 2
    end

    for index = 1, 8 do
        slimes[index]:update(dt)
    end

end

function map:drawoutcam()
end

return map
