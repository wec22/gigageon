local class = require("lib.middleclass")
local tiled = require("lib.tiled")
local c = require("classes.collisionblock")
local slime = require("classes.slime")
local npc = require("classes.npc")
local tb = require("classes.textbox")
local background = require("classes.map")

local map = class("map")

local function IntersectingwithPlayer(x1,y1,w1,h1, x2,y2,w2,h2)
    return x1 < x2+w2 and x2 < x1+w1 and
           y1 < y2+h2 and y2 < y1+h1
end

local slime1
local slime2
local slime3

function map:initialize()
    area = background("maps.animation")
    ToTestmap = {x=0,y=0,w=16,h=16}
    slime1 = slime(200, 200)
    slime2 = slime(200, 200)
    slime3 = slime(200, 200)
end

function map:update(dt)
    local changeMap = IntersectingwithPlayer(player.x,player.y,player.w,player.h, ToTestmap.x, ToTestmap.y,ToTestmap.w,ToTestmap.h)
    if(changeMap) then
        player.x = 100
        player.y = 100
        if(slime1.health ~= -1) then
            slime1.health = 0
        end
        if(slime2.health ~= -1) then
            slime2.health = 0
        end
        if(slime3.health ~= -1) then
            slime3.health = 0
        end
        playerlocation = 1
    end

    slime1:update(dt)
    slime2:update(dt)
    slime3:update(dt)
end

return map
