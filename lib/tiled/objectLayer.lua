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
local boss = require("classes.bountyHunter")
local doorway = require("classes.doorway")
local player = require("classes.player")
local bossPosition = require("classes.bossPosition")

local spawn = require("classes.spawn")
local npc = require("classes.npc")

local object = require(path .. "object")

local layer = require(path .. "layer")
local objectLayer = class("tiled.objectLayer", layer)

function objectLayer:initialize(t, world)
    print("Tiled: building new objectLayer")

    layer.initialize(self, t)
    self.draworder = t.draworder
    self.properties = t.properties
    self.objects = {}
	self.x = {}
	self.y = {}
    for _,v in ipairs(t.objects) do
        table.insert(self.objects, object(v))
    end

	for _,v in ipairs(self.objects) do
		if v.type == "1" then
			table.insert(self.x, v.x)
	        table.insert(self.y, v.y)
		elseif v.type == "2" then
			table.insert(self.x, v.x)
		    table.insert(self.y, v.y)
		elseif v.type == "3" then
			table.insert(self.x, v.x)
		    table.insert(self.y, v.y)
		elseif v.type == "4" then
			table.insert(self.x, v.x)
			table.insert(self.y, v.y)
		end
	end

    for _,v in ipairs(self.objects) do
		local t
		if v.type == "slime" then
            t = slime(v.x,v.y)
		elseif v.type == "bountyHunter" then
	        t = boss(v.x,v.y, self.x, self.y)
        elseif v.type == "wall" then
            t = collisionBlock(v.x, v.y, v.width, v.height)
        elseif v.type == "doorway" then
            t = doorway(v.x, v.y, v.width, v.height, v.properties.targetMap, v.properties.targetID, v.properties.sourceID or v.properties.ID)
		elseif v.type == "warp" then
			print("Tiled.objectLayer: warp not implemented")
			--warp()
        elseif v.type == "spawn" then
			t = spawn(v.x,v.y,v.width,v.height)
        elseif v.type == "npc" then
            t = npc(v.x, v.y, 0, v.properties.text)
		elseif v.type == "talking npc" then
			local npcText = {v.name}
			mainPlayer:addNpc(v.x, v.y, 1, npcText)
		elseif v.type == "bossPosition" then
			t = bossPosition(v.x,v.y,v.width,v.height, v.properties.ID)
		end
		if t then
			world:add(t, t.x, t.y, t.w, t.h)
		end
    end
end

function objectLayer:draw()
    drawOrder:draw(getWorld():getItems())
end



return objectLayer
