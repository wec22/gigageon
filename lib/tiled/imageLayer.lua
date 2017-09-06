--[[
-- A layer that contains just an image
-- Members:
    - img - the image to draw


]]
local path = (...):match("(.-)[^%.]+$")

local class = require("lib.middleclass")

local layer = require(path .. "layer")

local imageLayer = class("tiled.imageLayer", layer)

function imageLayer:initilaize(t)
    print "Tiled: building new imageLayer"
end

return imageLayer
