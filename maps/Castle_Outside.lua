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
    area = tiled.map("maps.Outside_Castle")
    CastleEnter = {x=15*16,y=16*5,w=32,h=16}
    init_outside_castle = 1
end

function map:update(dt)
    if(init_outside_castle == 1) then
        blocks[1] = c(16,16,16*3,16*3)
        blocks[2] = c(16*28,16,16*3,16*3)
        blocks[3] = c(16*5,0,16*10,16*6)
        blocks[4] = c(16*17,0,16*10,16*6)
        blocks[5] = c(0,16*22,16*32,16*10)
        blocks[6] = c(16*3,16*10,16*10,16*7)
        blocks[7] = c(16*19,16*10,16*10,16*7)
        init_outside_castle = 0
    end
    local changeMap = IntersectingwithPlayer(player.x,player.y,player.w,player.h, CastleEnter.x, CastleEnter.y,CastleEnter.w,CastleEnter.h)
    if(changeMap) then
        player.x = 16*16
        player.y = 512-32
        for _,b in pairs(blocks) do
            b:remove()
        end
        playerlocation = 2
    end
end

function map:drawoutcam()
end

return map
