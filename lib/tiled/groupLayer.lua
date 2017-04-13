--[[
-- A container for other layers
-- Members:
    - name      - the name of the group
    - layers    - the table of sub layers
]]

local path = (...):match("(.-)[^%.]+$")

local class = require("lib.middleclass")
local layer = require(path .. "layer")

local tileLayer = require(path .. "tileLayer")
local imageLayer = require(path .. "imageLayer")
local objectLayer = require(path .. "objectLayer")

local groupLayer = class("tiled.groupLayer", layer)

function groupLayer:initialize(t)
    print "Tiled: building new groupLayer"

    layer.initialize(self, t)

    self.layers = {}
    for _,v in ipairs(t.layers) do
        if v.type == "tilelayer" then
            table.insert(self.layers, tileLayer(v))
        elseif v.type == "imagelayer" and image then
            table.insert(self.layers, imageLayer(v))
        elseif v.type == "imagelayer" and layers then
            table.insert(self.layers, groupLayer(v))
        elseif v.type == "objectgroup" then
            table.insert(self.layers, objectLayer(v))
        end
    end
end

function groupLayer:draw(x, y, map)
    for _,v in ipairs(self.layers) do
        v:draw(x, y, map)
    end
end

return groupLayer
