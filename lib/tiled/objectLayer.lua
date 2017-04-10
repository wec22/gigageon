--[[
-- A layer for objects
-- Members:

]]

local path = (...):match("(.-)[^%.]+$")

local class = require("lib.middleclass")
local layer = require(path .. "layer")

local objectLayer = class("tiled.objectLayer", layer)

function objectLayer:initialize(t)
    print("building new objectLayer")

    layer.initialize(self, t)

end



return objectLayer
