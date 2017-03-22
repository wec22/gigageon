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

local groupLayer = class("groupLayer", layer)

function groupLayer:initialize(t)
    print "building new groupLayer"

    layer.initialize(self, t)

    for _,v in ipairs(t.layers) do
        if v.type == "tileLayer" then
            table.insert(self.layers, tileLayer:new(v))
        elseif v.type == "imageLayer" and image then
            table.insert(self.layers, imageLayer:new(v))
        elseif v.type == "imageLayer" and layers then
            table.insert(self.layers, groupLayer:new(v))
        end
    end
end

function groupLayer:draw(x, y, map)
    for _,v in ipairs(layers) do
        v:draw(x, y, map)
    end
end

return groupLayer
