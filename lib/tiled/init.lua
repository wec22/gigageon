local path = (...) .. "."

local class = require("lib.middleclass")

local map = require(path .. "map")
local tile = require(path .. "tile")
local object = require(path .. "object")
local tileset = require(path .. "tileset")


local layer = require(path .. "layer")
local imageLayer = require(path .. "imageLayer")
local tileLayer = require(path .. "tileLayer")
local groupLayer = require(path .. "groupLayer")
local objectLayer = require(path.. "objectLayer")



local tiled = {}

tiled.map = map
tiled.tile = tile
tiled.object = object
tiled.tileset = tileset

tiled.layer = layer
tiled.imageLayer = imageLayer
tiled.tileLayer = tileLayer
tiled.groupLayer = groupLayer
tiled.objectLayer = objectLayer

return tiled
