local path = (...):match("(.-)[^%.]+$")

local class = require("lib.middleclass")

local tileLayer = require(path .. "tileLayer")
local imageLayer = require(path .. "imageLayer")
local groupLayer = require(path .. "groupLayer")
local objectLayer = require(path .. "objectLayer")

local bump = require("lib.bump")

local tileset = require(path .. "tileset")

local map = class("tiled.map")

function map:initialize(filepath)
    local t = require(filepath)

	self.filepath = filepath

    self.width = t.width
    self.height = t.height

    self.tileW = t.tilewidth
    self.tileH = t.tileheight

	self.world = bump.newWorld(self.tileW * 4)
	assert(self.world, "world not created")
    self.tilesets = {}
    for _,v in ipairs(t.tilesets) do
        table.insert(self.tilesets, tileset(v))
    end

    self.tiles = {}
    for _,v in ipairs(self.tilesets) do
        for _,tile in ipairs(v.tiles) do
            table.insert(self.tiles, tile)
        end
    end

    self.layers = {}
    for _,v in ipairs(t.layers) do
        if v.type == "tilelayer" then
            table.insert(self.layers, tileLayer(v))
        elseif v.type == "imagelayer" and v.image then
            table.insert(self.layers, imageLayer(v))
        elseif v.type == "group" then
            table.insert(self.layers, groupLayer(v, self.world))
        elseif v.type == "objectgroup" then
            table.insert(self.layers, objectLayer(v, self.world))
        end
    end
end

function map:draw(x, y)
    x = x or 0
    y = y or 0

    local color = {love.graphics.getColor()}
    tileset = tileset or self.tilesets[1]
    for _, layer in ipairs(self.layers) do
        layer:draw(x, y, self)
    end
    love.graphics.setColor(unpack(color))
end

return map
