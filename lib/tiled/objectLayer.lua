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

local object = require(path .. "object")

local layer = require(path .. "layer")
local objectLayer = class("tiled.objectLayer", layer)

function objectLayer:initialize(t, world)
    print("Tiled: building new objectLayer")

    layer.initialize(self, t)
    self.draworder = t.draworder
    self.properties = t.properties
    self.objects = {}
    for _,v in ipairs(t.objects) do
        table.insert(self.objects, object(v))
    end

    for _,v in ipairs(self.objects) do
		local t
		if v.type == "slime" then
            t = slime(v.x,v.y)
        elseif v.type == "wall" then
            t = collisionBlock(v.x, v.y, v.width, v.height)
        elseif v.type == "doorway" then
            print("Tiled.objectlayer: doorway not implemented")
            --doorway()
		elseif v.type == "warp" then
			print("Tiled.objectLayer: warp not implemented")
			--warp()
        elseif v.type == "spawn" then
            _G.mainPlayer = player(v.x, v.y)
			t = mainPlayer
        elseif v.type == "npc" then
            print("Tiled.objectLayer: npc not implemented")
        end
		if t then
			world:add(t, t.x, t.y, t.w, t.h)
		end
    end
end

function objectLayer:draw()
    drawOrder:draw()
end



return objectLayer
