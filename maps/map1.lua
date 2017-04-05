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

function map:initialize()
    area = background("maps.Testmap")
    ToAnimation = {x=0,y=0,w=16,h=16}
end

function map:update(dt)
    local changeMap = IntersectingwithPlayer(player.x,player.y,player.w,player.h, ToAnimation.x, ToAnimation.y,ToAnimation.w,ToAnimation.h)
    if(changeMap) then
        player.x = 100
        player.y = 100
        playerlocation = 2
    end
end

return map
