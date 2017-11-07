--[[
-- A layer for objects
-- Members:
    - draworder     - the order used to draw the objects
    - properties    - table of properties given by tiled
    - objects       - a table of the objects produced
]]

local path = (...):match("(.-)[^%.]+$")

local class = require("lib.middleclass")
local drawOrder = require("lib.drawOrder")

local collisionBlock = require("classes.collisionBlock")
local slime = require("classes.slime")
local doorway = require("classes.doorway")
local player = require("classes.player")
local npc = require("classes.npc")

local object = require(path .. "object")

local layer = require(path .. "layer")
local objectLayer = class("tiled.objectLayer", layer)

function objectLayer:initialize(t)
    print("Tiled: building new objectLayer")

    layer.initialize(self, t)
    self.draworder = t.draworder
    self.properties = t.properties
    self.objects = {}
    for _,v in ipairs(t.objects) do
        table.insert(self.objects, object(v))
    end

    for _,v in ipairs(self.objects) do
        if v.type == "slime" then
            slime(v.x,v.y)
        elseif v.type == "wall" then
            collisionBlock(v.x, v.y, v.width, v.height)
        elseif v.type == "doorway" then
            print("Tiled.objectlayer: doorway not implemented")
            --doorway()
		elseif v.type == "warp" then
			print("Tiled.objectLayer: warp not implemented")
			--warp()
        elseif v.type == "spawn" then
            _G.mainPlayer = player(v.x, v.y)
        elseif v.type == "blank npc" then
            npc(v.x, v.y, 0, "")
		elseif v.type == "talking npc" then
			local npcText = {v.name}
			mainPlayer:addNpc(v.x, v.y, 1, npcText)
		end
    end
end

function objectLayer:draw()
    drawOrder:draw()
end



return objectLayer
