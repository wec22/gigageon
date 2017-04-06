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

function map:initialize()
    self.area = tiled.map("maps.Inside_Castle")
    king = npc(16*15,16*4,1,textTable)

    CastleExit = {x=16*14,y=512-16,w=64,h=16}
    DungeonEnter = {x=512-32,y=16*8,w=16,h=32}
    init_inside_castle = 1
end

function map:update(dt)

    if(init_inside_castle == 1) then
        blocks[1] = c(16*2,16*3,16*3,16*3)
        blocks[2] = c(16*10,16*3,16*3,16*3)
        blocks[3] = c(16*19,16*3,16*3,16*3)
        blocks[4] = c(16*27,16*3,16*3,16*3)
        blocks[5] = c(16*2,16*13,16*3,16*3)
        blocks[6] = c(16*10,16*13,16*3,16*3)
        blocks[7] = c(16*19,16*13,16*3,16*3)
        blocks[8] = c(16*27,16*13,16*3,16*3)
        blocks[9] = c(16*2,16*27,16*3,16*3)
        blocks[10] = c(16*10,16*27,16*3,16*3)
        blocks[11] = c(16*19,16*27,16*3,16*3)
        blocks[12] = c(16*27,16*27,16*3,16*3)
        blocks[13] = c(16*7,16*2,16,16*4)
        blocks[14] = c(16*24,16*2,16,16*4)
        blocks[15] = c(16*7,16*12,16,16*4)
        blocks[16] = c(16*24,16*12,16,16*4)
        blocks[17] = c(16*7,16*26,16,16*4)
        blocks[18] = c(16*24,16*26,16,16*4)
        blocks[19] = c(16*15,16*3,16,16)
        blocks[20] = c(16*16,16*3,16,16)
        init_inside_castle = 0
    end

    local LeavingCastle = IntersectingwithPlayer(player.x,player.y,player.w,player.h, CastleExit.x, CastleExit.y,CastleExit.w,CastleExit.h)
    local EnteringDungeon = IntersectingwithPlayer(player.x,player.y,player.w,player.h, DungeonEnter.x, DungeonEnter.y,DungeonEnter.w,DungeonEnter.h)

    if(LeavingCastle) then
        player.x = 16*15.5
        player.y = 16*6
        for _,b in pairs(blocks) do
            b:remove()
        end
        king.health = 0
        playerlocation = 1
    end

    if(EnteringDungeon) then
        player.x = 512-32
        player.y = 16*15
        player.lastpushed = 'a'
        for _,b in pairs(blocks) do
            b:remove()
        end
        king.health = 0
        playerlocation = 3
    end

    king:update(dt)
end

function map:drawoutcam()
    king:drawtextbox()
    if(king.times > 0 and missioncomplete == 0) then
        textTable = {"Kill those slimes!!"}
        king:setText(textTable)
    elseif(king.times > 0 and missioncomplete ~= 0) then
        textTable = {"Thank You!"}
        king:setText(textTable)
    end
end

return map
